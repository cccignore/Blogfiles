#!/bin/bash

# Hexo 本地开发脚本
# 功能：清理缓存 -> 生成静态文件 -> 启动本地服务器
# 使用方法：./dev.sh 或 bash dev.sh

echo "🚀 开始 Hexo 本地开发流程..."
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

# 步骤3：启动本地服务器
echo "🌐 步骤 3/3: 启动本地服务器..."
echo "📍 服务器地址: http://localhost:4000"
echo "📍 管理后台: http://localhost:4000/admin"
echo "⚠️  按 Ctrl+C 停止服务器"
echo ""
npx hexo server

echo "👋 服务器已停止"