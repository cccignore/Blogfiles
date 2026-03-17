# Giscus 评论系统配置完成指南

## 🎉 配置进度

✅ **已完成的配置**：
- 删除了 Waline 评论系统配置
- 设置评论系统为 Giscus
- 配置了 GitHub 仓库地址：`cccignore/cccignore.github.io`

## 📋 需要完成的步骤

### 1. 获取 Giscus 配置参数

访问 [https://giscus.app/](https://giscus.app/) 并按以下步骤操作：

#### 步骤 1：仓库设置
- 在 "Repository" 字段输入：`cccignore/cccignore.github.io`
- 确保仓库是公开的
- 确保已安装 [giscus app](https://github.com/apps/giscus)

#### 步骤 2：页面 ↔️ 讨论映射
- 推荐选择："Discussion title contains page `pathname`"
- 或选择："Discussion title contains page `<title>`"

#### 步骤 3：Discussion 分类
- 推荐选择："General" 或 "Announcements"
- 记录下选择的分类名称

#### 步骤 4：获取配置代码
完成上述设置后，页面底部会生成配置代码，从中获取：
- `data-repo-id`：这是你的 `repo_id`
- `data-category-id`：这是你的 `category_id`

### 2. 更新配置文件

将获取到的参数填入主题配置文件 `_config.yml` 中的 giscus 部分：

```yaml
giscus:
  repo: cccignore/cccignore.github.io
  repo_id: 你的_repo_id  # 从 giscus.app 获取
  category_id: 你的_category_id  # 从 giscus.app 获取
  light_theme: light
  dark_theme: dark
  js:
  option:
```

### 3. 启用 GitHub Discussions

确保你的 GitHub 仓库已启用 Discussions 功能：
1. 进入 GitHub 仓库 `cccignore/cccignore.github.io`
2. 点击 "Settings" 选项卡
3. 向下滚动到 "Features" 部分
4. 勾选 "Discussions" 复选框

## 🚀 测试步骤

### 本地测试
```bash
# 清理缓存
npx hexo clean

# 生成静态文件
npx hexo generate

# 启动本地服务器
npx hexo server
```

访问 `http://localhost:4000` 查看评论功能是否正常显示。

### 部署测试
```bash
# 部署到 GitHub Pages
npx hexo deploy
```

访问 `https://cccignore.github.io` 验证线上评论功能。

## 🔧 故障排除

### 常见问题

1. **评论区不显示**
   - 检查 `repo_id` 和 `category_id` 是否正确
   - 确认 GitHub 仓库已启用 Discussions
   - 检查仓库是否为公开状态

2. **无法加载评论**
   - 检查网络连接
   - 确认 giscus app 已安装到仓库
   - 查看浏览器控制台是否有错误信息

3. **主题不匹配**
   - 检查 `light_theme` 和 `dark_theme` 设置
   - 可选主题：`light`, `dark`, `dark_dimmed`, `transparent_dark`, `preferred_color_scheme`

## 📚 Giscus 优势

- ✅ **免费开源**：完全免费，基于 GitHub Discussions
- ✅ **无需服务器**：不需要额外的后端服务
- ✅ **GitHub 集成**：与 GitHub 生态完美融合
- ✅ **支持 Markdown**：完整的 Markdown 语法支持
- ✅ **多主题支持**：自动适配明暗主题
- ✅ **反应表情**：支持 GitHub 风格的 emoji 反应
- ✅ **回复功能**：支持嵌套回复
- ✅ **通知系统**：通过 GitHub 通知系统接收评论通知

## 🎯 下一步

1. 访问 [giscus.app](https://giscus.app/) 获取配置参数
2. 更新配置文件中的 `repo_id` 和 `category_id`
3. 测试本地和线上评论功能
4. 享受全新的评论体验！

---

**提示**：如果在配置过程中遇到问题，可以参考 [Giscus 官方文档](https://github.com/giscus/giscus/blob/main/ADVANCED-USAGE.md) 获取更多帮助。