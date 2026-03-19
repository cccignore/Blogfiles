---
title: LeetCode Hot100 刷题导航（系列导航）
slug: leetcode-hot100-index
date: 2026-03-19 00:20:00
updated: 2026-03-19 00:20:00
cover: /img/covers/leetcode-hot100-series-cover.svg
tags:
  - LeetCode
  - Hot100
  - Python
  - 系列导航
categories:
  - 算法刷题
  - LeetCode Hot100
description: 按专题整理 LeetCode Hot100 的刷题入口与更新进度，让首页只保留一个系列导航，单题题解集中到系列内部维护
series: LeetCode Hot100
comments: true
toc: true
toc_number: true
copyright: true
mathjax: false
katex: false
---

这套 `LeetCode Hot100` 系列会按“适合长期复习”的方式来整理：首页只放这一篇导航文章，单题题解不刷首页，统一在系列内部维护。
<!-- more -->

## 这个系列怎么读

如果你现在和我一样：

- 刚开始系统刷题
- Python 不是完全不会，但已经有些生疏
- 想一边刷 Hot100，一边把语法和题型感觉捡回来

那这套系列会更偏向“从入门到能复习”的写法，而不是只放一个标准答案。

每篇题解尽量都会包含：

- 题目到底在问什么
- 最朴素的思路为什么成立
- 优化思路是怎么想到的
- Python 代码逐段解释
- Python Tutor 可视化截图
- 最后一段复盘总结

## 推荐刷题顺序

我会优先按专题推进，而不是先把所有简单题刷完。

目前比较推荐这条顺序：

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

## 已更新文章

### 哈希表

1. {% post_link leetcode-hot100/leetcode-hot100-01-two-sum 两数之和：从暴力枚举到哈希表 %}
2. {% post_link leetcode-hot100/leetcode-hot100-49-group-anagrams 字母异位词分组：排序 key 与计数 key %}
3. {% post_link leetcode-hot100/leetcode-hot100-128-longest-consecutive-sequence 最长连续序列：排序遍历与哈希集合 %}

### 双指针

1. {% post_link leetcode-hot100/leetcode-hot100-283-move-zeroes 移动零：额外数组到双指针原地修改 %}
2. {% post_link leetcode-hot100/leetcode-hot100-11-container-with-most-water 盛最多水的容器：暴力枚举到双指针夹逼 %}
3. {% post_link leetcode-hot100/leetcode-hot100-15-3sum 三数之和：排序去重与双指针 %}
4. {% post_link leetcode-hot100/leetcode-hot100-42-trapping-rain-water 接雨水：前缀最大值到双指针收缩 %}

### 滑动窗口

1. {% post_link leetcode-hot100/leetcode-hot100-03-longest-substring-without-repeating-characters 无重复字符的最长子串：从暴力到滑动窗口 %}
2. {% post_link leetcode-hot100/leetcode-hot100-438-find-all-anagrams-in-a-string 找到字符串中所有字母异位词：定长滑动窗口 %}
3. {% post_link leetcode-hot100/leetcode-hot100-76-minimum-window-substring 最小覆盖子串：可变长滑动窗口的代表题 %}

### 普通数组 / 前缀和

1. {% post_link leetcode-hot100/leetcode-hot100-53-maximum-subarray 最大子数组和：暴力到动态规划入门 %}
2. {% post_link leetcode-hot100/leetcode-hot100-56-merge-intervals 合并区间：排序后逐段吞并 %}
3. {% post_link leetcode-hot100/leetcode-hot100-189-rotate-array 轮转数组：额外数组到三次反转 %}
4. {% post_link leetcode-hot100/leetcode-hot100-238-product-of-array-except-self 除自身以外数组的乘积：前缀积和后缀积 %}
5. {% post_link leetcode-hot100/leetcode-hot100-560-subarray-sum-equals-k 和为 K 的子数组：前缀和加哈希表 %}

### 矩阵

1. {% post_link leetcode-hot100/leetcode-hot100-73-set-matrix-zeroes 矩阵置零：标记法与原地优化 %}

## 完整导航页

如果想看更完整的专题清单、待更新题目和后续规划，可以进这个页面：

- [`/leetcode-hot100/`](/leetcode-hot100/)

## 说明

- 首页只保留这一篇系列导航，避免被大量单题题解刷碎
- 单题题解会继续发布，但默认不出现在首页
- 后面每完成一题，我都会回到这里补入口
- 文章会按专题分组，比如哈希表、双指针、滑动窗口，方便回头复习同一类题
