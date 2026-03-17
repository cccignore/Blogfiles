---
title: LeetCode Hot100 42. 接雨水（Python）：双指针 + 单调栈详解
date: 2026-03-04 21:30:00
updated: 2026-03-04 21:30:00
comments: true
toc: true
toc_number: true
copyright: true
mathjax: false
katex: false
categories:
  - [技术教程, 算法题解]
tags: [LeetCode, Hot100, 双指针, 单调栈, Python]
description: 用一篇文章彻底讲清 LeetCode Hot100「42. 接雨水」：先讲核心思路，再给 Python 代码、图示推演与易错点总结。
cover: https://assets.leetcode.cn/aliyun-lc-upload/uploads/2018/10/22/rainwatertrap.png
keywords: LeetCode 42, 接雨水, Hot100, 双指针, 单调栈, Python
---

# LeetCode Hot100 42. 接雨水（Python）：双指针 + 单调栈详解

`42. 接雨水` 是 Hot100 里非常经典的一题：看起来像模拟，实际上考察的是你能不能把“每个位置能接多少水”这个问题拆清楚。

这篇我会按这个顺序讲：

1. 先把题意和图想明白
2. 讲最推荐的解法（双指针，O(n) 时间，O(1) 空间）
3. 给出单调栈解法（同样 O(n)）
4. 总结常见错误和面试回答模板

<!-- more -->

## 1. 题目在问什么？

给定一个数组 `height`，每个元素表示宽度为 `1` 的柱子高度。下雨后会在低洼处积水，问总共能积多少。

官方示意图（示例 1）：

![LeetCode 42 官方示意图](https://assets.leetcode.cn/aliyun-lc-upload/uploads/2018/10/22/rainwatertrap.png)

对应输入：

```text
height = [0,1,0,2,1,0,1,3,2,1,2,1]
输出 = 6
```

## 2. 核心公式（先背这个）

对任意位置 `i`：

```text
water[i] = min(左侧最高, 右侧最高) - height[i]
```

如果结果为负，就按 `0` 处理（实际不会“负积水”）。

这就解释了为什么这个题不该用“往两边暴力找最高”直接写：那样每个位置都扫左右，复杂度会到 `O(n^2)`。

---

## 3. 最推荐解法：双指针（O(n), O(1)）

### 3.1 思路

维护四个量：

- `left`：左指针
- `right`：右指针
- `left_max`：`[0..left]` 的最高柱
- `right_max`：`[right..n-1]` 的最高柱

关键判断：

- 若 `left_max < right_max`，则当前位置 `left` 的积水量已经可以确定，只取决于 `left_max`
- 否则就确定 `right` 的积水量，只取决于 `right_max`

因为较短板决定水位上限。

### 3.2 动图脑补（文字版）

```text
left_max 小于 right_max -> 处理 left，left 向右走
left_max 大于等于 right_max -> 处理 right，right 向左走
```

每个位置只会被处理一次，所以是线性时间。

### 3.3 Python 代码（面试可直接背）

```python
from typing import List


class Solution:
    def trap(self, height: List[int]) -> int:
        n = len(height)
        if n < 3:
            return 0

        left, right = 0, n - 1
        left_max, right_max = 0, 0
        ans = 0

        while left < right:
            left_max = max(left_max, height[left])
            right_max = max(right_max, height[right])

            if left_max < right_max:
                ans += left_max - height[left]
                left += 1
            else:
                ans += right_max - height[right]
                right -= 1

        return ans
```

### 3.4 复杂度

- 时间复杂度：`O(n)`
- 空间复杂度：`O(1)`

---

## 4. 另一种高频解法：单调栈（O(n), O(n)）

### 4.1 思路

用一个“单调递减栈”存下标。遍历到新柱子时：

- 如果新柱子更高，说明形成了一个“凹槽”，可以结算一部分积水
- 凹槽底部是被弹出的下标 `mid`
- 左边界是弹出后新的栈顶 `left`
- 右边界是当前下标 `i`

结算公式：

```text
宽度 = i - left - 1
高度 = min(height[left], height[i]) - height[mid]
面积 = 宽度 * 高度
```

### 4.2 Python 代码

```python
from typing import List


class Solution:
    def trap(self, height: List[int]) -> int:
        stack = []  # 存下标，保持对应高度单调递减
        ans = 0

        for i, h in enumerate(height):
            while stack and h > height[stack[-1]]:
                mid = stack.pop()  # 凹槽底
                if not stack:
                    break

                left = stack[-1]  # 左边界
                width = i - left - 1
                bounded_height = min(height[left], h) - height[mid]
                ans += width * bounded_height

            stack.append(i)

        return ans
```

### 4.3 什么时候选它？

- 你对“单调栈找左右边界”这类题非常熟（如每日温度、柱状图）
- 想展示你对“凹槽结算”模型的理解

否则面试里优先写双指针，更稳更短。

---

## 5. 常见易错点

1. `n < 3` 没有提前返回（至少三根柱子才可能存水）
2. 双指针里更新 `left_max/right_max` 的时机放错
3. 单调栈结算时忘记判空（弹出后可能没有左边界）
4. 把“宽度”写成 `i - left`，正确是 `i - left - 1`

---

## 6. 面试速答模板（30 秒）

你可以这样说：

> 这题本质是按位置算积水，公式是 `min(左高, 右高) - 当前高`。暴力会到 `O(n^2)`。最优可用双指针：维护 `left_max` 和 `right_max`，每次处理较短板一侧，因为它的水位已确定。这样每个位置只处理一次，时间 `O(n)`，空间 `O(1)`。如果需要，也可以用单调栈做“凹槽结算”，时间 `O(n)` 空间 `O(n)`。

---

## 7. 小结

这题最重要的不是代码，而是这个意识：

- **积水高度由短板决定**
- **确定性足够时就可以结算**

把这个思想吃透，很多数组双指针题都会更顺。

如果你想看下一篇，我可以继续写 Hot100 的：

- `11. 盛最多水的容器`（和本题很像，双指针对比非常适合一起学）
- `84. 柱状图中最大的矩形`（单调栈进阶）
