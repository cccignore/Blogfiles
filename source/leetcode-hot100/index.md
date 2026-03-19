---
title: LeetCode Hot100 刷题导航
date: 2026-03-19 00:10:00
updated: 2026-03-19 00:10:00
layout: page
comments: false
toc: true
toc_number: true
description: 按专题维护的 LeetCode Hot100 刷题导航页，记录进度、文章入口和后续更新计划
---

![LeetCode Hot100 刷题导航封面](/img/covers/leetcode-hot100-series-cover.svg)

这页是我给整个 `LeetCode Hot100` 系列做的总导航。它不是单纯的题目堆砌，而是按“适合复习和长期维护”的方式来整理：

- 先看推荐刷题顺序
- 再按专题找文章
- 最后用这里记录自己的更新进度

## 1. 这个导航页怎么用

如果你和我一样，属于下面这种状态：

- 刚开始系统刷题
- Python 会一点，但不够熟
- 想一边刷 Hot100，一边把题型和语法慢慢捡回来

那我更建议按“专题”推进，而不是先把所有简单题刷完。

原因很简单：

- 连续刷同一类题，更容易形成模式感
- 你会更快知道一题属于哈希表、双指针还是滑动窗口
- 中等题往往才是真正帮你建立模板的关键

## 2. 推荐刷题顺序

这是我准备采用的一条比较适合入门的路线：

1. 哈希表
2. 双指针
3. 滑动窗口
4. 普通数组 / 前缀和
5. 栈与单调栈
6. 二分查找
7. 链表
8. 二叉树遍历
9. 回溯
10. 堆
11. 贪心
12. 动态规划
13. 图论

## 3. 当前进度

- 已完成：`16 / 持续更新中`
- 当前专题：`矩阵`
- 当前状态：`双指针、滑动窗口、普通数组 / 前缀和已完成当前这一轮，开始进入矩阵专题`

## 4. 文章入口

### 4.1 已更新题解

#### 哈希表

- `Hot100 01`：{% post_link leetcode-hot100/leetcode-hot100-01-two-sum 两数之和：从暴力枚举到哈希表 %}
- `Hot100 49`：{% post_link leetcode-hot100/leetcode-hot100-49-group-anagrams 字母异位词分组：排序 key 与计数 key %}
- `Hot100 128`：{% post_link leetcode-hot100/leetcode-hot100-128-longest-consecutive-sequence 最长连续序列：排序遍历与哈希集合 %}

#### 双指针

- `Hot100 283`：{% post_link leetcode-hot100/leetcode-hot100-283-move-zeroes 移动零：额外数组到双指针原地修改 %}
- `Hot100 11`：{% post_link leetcode-hot100/leetcode-hot100-11-container-with-most-water 盛最多水的容器：暴力枚举到双指针夹逼 %}
- `Hot100 15`：{% post_link leetcode-hot100/leetcode-hot100-15-3sum 三数之和：排序去重与双指针 %}
- `Hot100 42`：{% post_link leetcode-hot100/leetcode-hot100-42-trapping-rain-water 接雨水：前缀最大值到双指针收缩 %}

#### 滑动窗口

- `Hot100 3`：{% post_link leetcode-hot100/leetcode-hot100-03-longest-substring-without-repeating-characters 无重复字符的最长子串：从暴力到滑动窗口 %}
- `Hot100 438`：{% post_link leetcode-hot100/leetcode-hot100-438-find-all-anagrams-in-a-string 找到字符串中所有字母异位词：定长滑动窗口 %}
- `Hot100 76`：{% post_link leetcode-hot100/leetcode-hot100-76-minimum-window-substring 最小覆盖子串：可变长滑动窗口的代表题 %}

#### 普通数组 / 前缀和

- `Hot100 53`：{% post_link leetcode-hot100/leetcode-hot100-53-maximum-subarray 最大子数组和：暴力到动态规划入门 %}
- `Hot100 56`：{% post_link leetcode-hot100/leetcode-hot100-56-merge-intervals 合并区间：排序后逐段吞并 %}
- `Hot100 189`：{% post_link leetcode-hot100/leetcode-hot100-189-rotate-array 轮转数组：额外数组到三次反转 %}
- `Hot100 238`：{% post_link leetcode-hot100/leetcode-hot100-238-product-of-array-except-self 除自身以外数组的乘积：前缀积和后缀积 %}
- `Hot100 560`：{% post_link leetcode-hot100/leetcode-hot100-560-subarray-sum-equals-k 和为 K 的子数组：前缀和加哈希表 %}

#### 矩阵

- `Hot100 73`：{% post_link leetcode-hot100/leetcode-hot100-73-set-matrix-zeroes 矩阵置零：标记法与原地优化 %}

## 5. 专题导航

### 5.1 哈希表

- [x] {% post_link leetcode-hot100/leetcode-hot100-01-two-sum 1. 两数之和 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-49-group-anagrams 49. 字母异位词分组 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-128-longest-consecutive-sequence 128. 最长连续序列 %}

### 5.2 双指针

- [x] {% post_link leetcode-hot100/leetcode-hot100-283-move-zeroes 283. 移动零 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-11-container-with-most-water 11. 盛最多水的容器 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-15-3sum 15. 三数之和 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-42-trapping-rain-water 42. 接雨水 %}

### 5.3 滑动窗口

- [x] {% post_link leetcode-hot100/leetcode-hot100-03-longest-substring-without-repeating-characters 3. 无重复字符的最长子串 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-438-find-all-anagrams-in-a-string 438. 找到字符串中所有字母异位词 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-76-minimum-window-substring 76. 最小覆盖子串 %}

### 5.4 普通数组 / 前缀和

- [x] {% post_link leetcode-hot100/leetcode-hot100-53-maximum-subarray 53. 最大子数组和 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-56-merge-intervals 56. 合并区间 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-189-rotate-array 189. 轮转数组 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-238-product-of-array-except-self 238. 除自身以外数组的乘积 %}
- [x] {% post_link leetcode-hot100/leetcode-hot100-560-subarray-sum-equals-k 560. 和为 K 的子数组 %}

### 5.5 矩阵

- [x] {% post_link leetcode-hot100/leetcode-hot100-73-set-matrix-zeroes 73. 矩阵置零 %}
- [ ] 54. 螺旋矩阵
- [ ] 48. 旋转图像
- [ ] 240. 搜索二维矩阵 II

### 5.6 链表

- [ ] 160. 相交链表
- [ ] 206. 反转链表
- [ ] 21. 合并两个有序链表
- [ ] 19. 删除链表的倒数第 N 个结点
- [ ] 141. 环形链表
- [ ] 142. 环形链表 II

### 5.7 二叉树

- [ ] 94. 二叉树的中序遍历
- [ ] 104. 二叉树的最大深度
- [ ] 226. 翻转二叉树
- [ ] 543. 二叉树的直径
- [ ] 102. 二叉树的层序遍历
- [ ] 98. 验证二叉搜索树
- [ ] 236. 二叉树的最近公共祖先

### 5.8 栈与单调栈

- [ ] 20. 有效的括号
- [ ] 155. 最小栈
- [ ] 739. 每日温度
- [ ] 84. 柱状图中最大的矩形

### 5.9 二分查找

- [ ] 35. 搜索插入位置
- [ ] 74. 搜索二维矩阵
- [ ] 34. 在排序数组中查找元素的第一个和最后一个位置
- [ ] 33. 搜索旋转排序数组

### 5.10 回溯

- [ ] 46. 全排列
- [ ] 78. 子集
- [ ] 17. 电话号码的字母组合
- [ ] 39. 组合总和
- [ ] 22. 括号生成

### 5.11 堆

- [ ] 215. 数组中的第 K 个最大元素
- [ ] 347. 前 K 个高频元素
- [ ] 295. 数据流的中位数

### 5.12 贪心

- [ ] 55. 跳跃游戏
- [ ] 45. 跳跃游戏 II
- [ ] 121. 买卖股票的最佳时机
- [ ] 763. 划分字母区间

### 5.13 动态规划

- [ ] 70. 爬楼梯
- [ ] 118. 杨辉三角
- [ ] 198. 打家劫舍
- [ ] 279. 完全平方数
- [ ] 322. 零钱兑换
- [ ] 139. 单词拆分
- [ ] 300. 最长递增子序列
- [ ] 152. 乘积最大子数组

### 5.14 图论

- [ ] 200. 岛屿数量
- [ ] 994. 腐烂的橘子
- [ ] 207. 课程表
- [ ] 208. 实现 Trie（前缀树）

## 6. 后续更新规则

为了让这个系列后面不写乱，我准备固定用下面这套规则：

- 标题统一写成 `Hot100 题号 | 题目名：核心思路`
- 分类统一放在 `算法刷题 / LeetCode Hot100 / 对应专题`
- 标签优先写 `LeetCode`、`Hot100`、`Python`、题型关键词、数据结构关键词
- 每篇文章尽量都包含“暴力思路、优化思路、Python Tutor 可视化、复盘总结”

## 7. 给未来的自己一句提醒

不要只追求“今天刷了几题”，更重要的是：

- 这题属于什么模式
- 我为什么会卡住
- 下次看到同类题时，我能不能更快认出来

如果这三点都在慢慢变清楚，那这个 Hot100 系列就写对了。
