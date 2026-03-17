#!/bin/bash

# Hexo 部署脚本
# 功能：清理缓存 -> 生成静态文件 -> 部署到 GitHub Pages
# 使用方法：./deploy.sh 或 bash deploy.sh

echo "🚀 开始 Hexo 部署流程..."
echo ""

# 步骤0：确保 ssh-agent 与密钥就绪
echo "🔑 步骤 0/3: 检查 SSH Agent..."
AGENT_STARTED=0
if ! ssh-add -l >/dev/null 2>&1; then
    eval "$(ssh-agent -s)" >/dev/null
    AGENT_STARTED=1
    if [[ "$(uname)" == "Darwin" ]]; then
        ssh-add --apple-use-keychain ~/.ssh/id_ed25519 >/dev/null
    else
        ssh-add ~/.ssh/id_ed25519 >/dev/null
    fi
    if [ $? -ne 0 ]; then
        echo "❌ 加载 SSH 密钥失败，请手动执行 ssh-add"
        [ $AGENT_STARTED -eq 1 ] && ssh-agent -k >/dev/null 2>&1
        exit 1
    fi
    echo "✅ 已启动 ssh-agent 并加载密钥"
else
    echo "✅ 已检测到可用的 SSH 密钥"
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
