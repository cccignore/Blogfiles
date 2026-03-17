#!/bin/bash

# Hexo 部署脚本
# 功能：清理缓存 -> 生成静态文件 -> 部署到 GitHub Pages
# 使用方法：./deploy.sh 或 bash deploy.sh

echo "🚀 开始 Hexo 部署流程..."
echo ""

echo "🔑 步骤 0/3: 检查 SSH Agent（可选）..."
AGENT_STARTED=0
GITHUB_KEY="$HOME/.ssh/id_ed25519"
GITHUB_PUB="$HOME/.ssh/id_ed25519.pub"
if ! ssh-add -l >/dev/null 2>&1; then
    eval "$(ssh-agent -s)" >/dev/null
    AGENT_STARTED=1
    echo "✅ 已启动 ssh-agent"
else
    echo "✅ 已检测到可用的 SSH 密钥"
fi

if [ -f "$GITHUB_KEY" ]; then
    if [[ "$(uname)" == "Darwin" ]]; then
        ssh-add --apple-use-keychain "$GITHUB_KEY" >/dev/null 2>&1 || ssh-add "$GITHUB_KEY" >/dev/null 2>&1
    else
        ssh-add "$GITHUB_KEY" >/dev/null 2>&1
    fi
fi

if [ -f "$GITHUB_PUB" ]; then
    GITHUB_FP=$(ssh-keygen -lf "$GITHUB_PUB" | awk '{print $2}')
    if ssh-add -l 2>/dev/null | grep -q "$GITHUB_FP"; then
        echo "✅ GitHub 部署密钥已加载"
    else
        echo "⚠️  GitHub 部署密钥未加载：$GITHUB_KEY"
    fi
else
    echo "⚠️  未找到 GitHub 公钥文件：$GITHUB_PUB"
fi
echo ""

# 步骤1：清理缓存和生成的文件
echo "📦 步骤 1/3: 清理缓存..."
npx hexo clean
if [ $? -ne 0 ]; then
    echo "❌ 清理失败！"
    exit 1
fi
echo "✅ 清理完成"
echo ""

# 步骤2：生成静态文件
echo "🔨 步骤 2/3: 生成静态文件..."
npx hexo generate
if [ $? -ne 0 ]; then
    echo "❌ 生成失败！"
    exit 1
fi
echo "✅ 生成完成"
echo ""

# 步骤3：部署到 GitHub Pages
echo "🌐 步骤 3/3: 部署到 GitHub Pages..."
DEPLOY_REPO=$(grep -E '^[[:space:]]*repository:' _config.yml | head -n 1 | sed 's/^[[:space:]]*repository:[[:space:]]*//')
if [[ "$DEPLOY_REPO" == ssh://git@ssh.github.com:443/* ]]; then
    GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new -o ConnectTimeout=8" git ls-remote "$DEPLOY_REPO" >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "❌ 无法通过 SSH 访问部署仓库：$DEPLOY_REPO"
        if [ -f "$GITHUB_PUB" ]; then
            echo "请把以下公钥添加到 GitHub -> Settings -> SSH and GPG keys："
            cat "$GITHUB_PUB"
        fi
        exit 1
    fi
fi
echo "📤 正在推送到远程仓库..."
npx hexo deploy
if [ $? -ne 0 ]; then
    echo "❌ 部署失败！请检查网络连接和 GitHub 配置"
    exit 1
fi
echo "✅ 部署完成"
echo ""
[ $AGENT_STARTED -eq 1 ] && ssh-agent -k >/dev/null 2>&1
echo "🎉 博客已成功部署！"
echo "🌐 访问地址: https://cccignore.github.io/"
echo "⏰ 通常需要等待 1-5 分钟生效"
