# LeetCode Hot100 题解写作流程备忘

## 1. 选题

- 按 `source/leetcode-hot100/index.md` 里的专题顺序继续写
- 先判断题目属于哪个专题，例如 `哈希表`、`双指针`、`滑动窗口`

## 2. 获取题目内容

- 默认直接参考 LeetCode 中文站题意
- 如果题目自带官方示意图且确实有帮助，就下载到本地并插入文章
- 如果没有必要，不额外加图

## 3. 存放位置

- Hot100 文章统一放在 `source/_posts/leetcode-hot100/`
- Python 系列统一放在 `source/_posts/python-core/`
- Hot100 配图统一放在 `source/img/leetcode-hot100/题目名/`

## 4. Hot100 front matter 规则

- 文件名统一：`leetcode-hot100-题号-英文题名.md`
- 必须有 `slug`
- 必须有 `series: LeetCode Hot100`
- 必须有 `hidden: true`
- `categories` 固定为 `算法刷题 / LeetCode Hot100 / 对应专题`
- `tags` 优先写 `LeetCode`、`Hot100`、`Python`、题型关键词、数据结构关键词
- 单题题解默认不加封面

## 5. 正文结构

每篇题解尽量包含：

1. 系列导航 / 上一篇 / 下一篇
2. 开场说明这题在当前专题里的位置
3. 专栏导读
4. 题目到底在说什么
5. 最容易误解的点
6. 最直观的方法
7. 标准解法
8. `Python Tutor 版代码`
9. `LeetCode 可提交版代码`
10. 每行代码在做什么
11. 手动模拟例子
12. 方法对比
13. Python 语法点
14. 常见错误
15. 一句话复盘 / 下一步怎么学

补充要求：

- 代码讲解必须细致
- 要明确说出关键变量各自代表什么
- 要解释某一行为什么这样写、顺序为什么不能反
- 对新手容易混淆的地方要单独指出
- 一次不要批量追求数量，优先一篇一篇保证质量对齐高质量样例

## 6. 代码规则

- 每篇通常保留两套代码：
  - `Python Tutor 版代码`
  - `LeetCode 可提交版代码`
- 现在默认不再预留 Python Tutor 截图位置
- 用户如果想可视化，直接复制代码去 Python Tutor 自己运行

## 7. 导航更新规则

每写完一题都要同步更新：

- `source/_posts/leetcode-hot100/leetcode-hot100-index.md`
- `source/leetcode-hot100/index.md`
- 对应专题的已完成列表
- 上一篇 / 下一篇链接

## 8. 最后检查

- 跑 `npm run build`
- 确认文章、图片、`post_link`、导航页都正常
