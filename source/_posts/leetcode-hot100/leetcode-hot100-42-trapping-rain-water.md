---
title: Hot100 42 | 接雨水：按列思考到双指针收缩
slug: leetcode-hot100-42-trapping-rain-water
date: 2026-03-19 17:10:00
updated: 2026-03-19 17:10:00
tags:
  - LeetCode
  - Hot100
  - Python
  - 双指针
  - 数组
categories:
  - 算法刷题
  - LeetCode Hot100
  - 双指针
description: 把 LeetCode Hot100 第 42 题讲给刷题新手，从按列暴力、前后缀最大值到双指针做法，再到代码细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 接雨水
  - Python
  - 双指针
  - 数组
series: LeetCode Hot100
hidden: true
top_img:
cover:
comments: true
toc: true
toc_number: true
copyright: true
mathjax: false
katex: false
---

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-15-3sum Hot100 15 | 三数之和：排序去重与双指针 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-03-longest-substring-without-repeating-characters Hot100 3 | 无重复字符的最长子串：从暴力到滑动窗口 %}

如果说 `盛最多水的容器` 是双指针里“左右夹逼”的第一课，那 `接雨水` 就是双指针专题里第一次真正需要你停下来想“为什么可以这样算”的题。

<!-- more -->

## 专栏导读

这题很容易让人看得头大，原因不是代码长，而是它会同时卡住你两件事：

- 你到底应该从“整体”看，还是从“每一列”看
- 双指针为什么能在不漏答案的情况下边走边算

所以这篇会比普通速通题解更慢一些，重点不是只告诉你最后答案，而是把下面这几个关键点讲清楚：

1. 接水量到底怎么计算
2. 为什么“按列思考”最容易理解
3. 为什么可以从暴力法优化到前后缀数组
4. 为什么最后还能继续优化到双指针

如果你现在刷双指针还不稳，这题特别值得认真消化。

## 1. 题目到底在说什么

题目给你一个数组 `height`。

- 每个数字表示一列柱子的高度
- 这些柱子并排站在一起
- 下雨之后，有些低的位置会被左右两边更高的柱子挡住，于是形成积水

你要做的是：

- 计算整个图形一共能接多少水

例如：

```text
height = [0,1,0,2,1,0,1,3,2,1,2,1]
```

答案是：

```text
6
```

## 2. 这题最容易误解的地方

很多人第一次看这题，会习惯性去想：

- 这个图整体像几个盆
- 我要不要找左右边界
- 要不要一次算完整段面积

这种想法不是完全错，但对新手来说不够稳。

这题最适合你的入手方式其实是：

- 不要先看整体
- 先看“某一列能接多少水”

因为整体再复杂，最终总水量也只是：

- 每一列接水量的总和

这就是这题最关键的降维思路。

## 3. 先把“某一列能接多少水”想明白

假设我们只盯着某一列，比如高度是 `height[i]`。

这一列上方能不能存住水，取决于什么？

不是只看左边，也不是只看右边，而是同时看：

- 它左边最高的柱子
- 它右边最高的柱子

为什么要看这两个？

因为水想在当前位置存住，左右两边都必须能挡住它。

如果：

- 左边最高是 5
- 右边最高是 3

那这一列上方最多只能存到高度 3。

为什么不是 5？

因为右边只有 3，高过 3 的水会从右边流走。

所以某一列上方的“有效水位”其实是：

```text
min(左边最高, 右边最高)
```

于是某一列接水量就是：

```text
min(左边最高, 右边最高) - 当前柱子高度
```

如果这个值小于等于 0，就说明这一列接不到水。

## 4. 用一个小例子把公式看懂

例如：

```text
height = [4,2,0,3,2,5]
```

我们只看下标 `2` 这一列，也就是高度为 `0` 的那一列。

它左边最高柱子是：

```text
4
```

它右边最高柱子是：

```text
5
```

所以这一列的有效水位是：

```text
min(4, 5) = 4
```

当前柱子高度是 `0`，所以这列能接：

```text
4 - 0 = 4
```

再看下标 `4` 这一列，高度是 `2`。

它左边最高是 `4`，右边最高是 `5`，所以有效水位还是 `4`。

于是它能接：

```text
4 - 2 = 2
```

这样一列一列加起来，就是总答案。

## 5. 方法一：按列暴力计算

### 5.1 最直观的想法

既然每一列接水量都取决于：

- 左边最高
- 右边最高

那最直接的方法就是：

1. 枚举每一列
2. 向左扫描，找左边最高
3. 向右扫描，找右边最高
4. 套公式计算这一列接水量

这就是最朴素、最容易理解的暴力法。

### 5.2 Python Tutor 版代码

```python
def trap(height):
    ans = 0
    n = len(height)

    for i in range(n):
        left_max = 0
        right_max = 0

        for j in range(i, -1, -1):
            left_max = max(left_max, height[j])

        for j in range(i, n):
            right_max = max(right_max, height[j])

        water = min(left_max, right_max) - height[i]
        ans += water

    return ans

print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))
```

### 5.3 LeetCode 可提交版代码

```python
class Solution:
    def trap(self, height):
        ans = 0
        n = len(height)

        for i in range(n):
            left_max = 0
            right_max = 0

            for j in range(i, -1, -1):
                left_max = max(left_max, height[j])

            for j in range(i, n):
                right_max = max(right_max, height[j])

            water = min(left_max, right_max) - height[i]
            ans += water

        return ans
```

### 5.4 每一行代码在做什么

先看：

```python
ans = 0
n = len(height)
```

这里：

- `ans` 表示总接水量
- `n` 表示数组长度

再看外层循环：

```python
for i in range(n):
```

意思是：

- 把每一列都拿出来单独计算一次

接着：

```python
left_max = 0
right_max = 0
```

表示当前这一列左边最高、右边最高的初始值。

然后向左扫描：

```python
for j in range(i, -1, -1):
    left_max = max(left_max, height[j])
```

这段代码的意思是：

- 从当前位置 `i` 开始
- 一直往左走到 `0`
- 每看到一个柱子，就更新目前见过的最高值

为什么 `range(i, -1, -1)` 这么写？

因为它表示：

- 从 `i` 开始
- 每次减 1
- 一直到 `0`

再向右扫描：

```python
for j in range(i, n):
    right_max = max(right_max, height[j])
```

这里和左边同理，只不过方向变成了向右。

最后套公式：

```python
water = min(left_max, right_max) - height[i]
ans += water
```

这两句的含义是：

- 先算当前这一列能接多少水
- 再把它累加进总答案里

### 5.5 这个方法的问题在哪

它的思路很清楚，但效率不高。

因为：

- 每一列都要重新往左扫一遍
- 再往右扫一遍

所以很多信息被重复计算了很多次。

这就是我们下一步优化的理由。

## 6. 方法二：前缀最大值 + 后缀最大值

### 6.1 优化思路从哪来

刚才暴力法最大的浪费就在于：

- 左边最高反复找
- 右边最高反复找

那能不能提前把这些信息算好，后面直接查？

当然可以。

于是我们定义两个数组：

- `left_max[i]`：从左边到位置 `i` 为止的最高柱子
- `right_max[i]`：从右边到位置 `i` 为止的最高柱子

这样每一列就不用再重新扫描了。

### 6.2 Python Tutor 版代码

```python
def trap(height):
    n = len(height)
    if n == 0:
        return 0

    left_max = [0] * n
    right_max = [0] * n

    left_max[0] = height[0]
    for i in range(1, n):
        left_max[i] = max(left_max[i - 1], height[i])

    right_max[n - 1] = height[n - 1]
    for i in range(n - 2, -1, -1):
        right_max[i] = max(right_max[i + 1], height[i])

    ans = 0
    for i in range(n):
        ans += min(left_max[i], right_max[i]) - height[i]

    return ans

print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))
```

### 6.3 LeetCode 可提交版代码

```python
class Solution:
    def trap(self, height):
        n = len(height)
        if n == 0:
            return 0

        left_max = [0] * n
        right_max = [0] * n

        left_max[0] = height[0]
        for i in range(1, n):
            left_max[i] = max(left_max[i - 1], height[i])

        right_max[n - 1] = height[n - 1]
        for i in range(n - 2, -1, -1):
            right_max[i] = max(right_max[i + 1], height[i])

        ans = 0
        for i in range(n):
            ans += min(left_max[i], right_max[i]) - height[i]

        return ans
```

### 6.4 每一行代码在做什么

先看：

```python
if n == 0:
    return 0
```

如果数组为空，那就没有柱子，也不可能接到水，直接返回 0。

再看初始化：

```python
left_max = [0] * n
right_max = [0] * n
```

这里创建了两个长度和原数组一样的列表，用来存预处理结果。

接着处理左边最高数组：

```python
left_max[0] = height[0]
for i in range(1, n):
    left_max[i] = max(left_max[i - 1], height[i])
```

这段的意思是：

- 第 0 位左边到自己，最高就是自己
- 后面的每一位，取“前一位的最高值”和“自己当前高度”里的更大者

也就是说，`left_max` 是一格一格推出来的，不是每次重新向左扫。

右边最高数组同理：

```python
right_max[n - 1] = height[n - 1]
for i in range(n - 2, -1, -1):
    right_max[i] = max(right_max[i + 1], height[i])
```

这里是从右往左推。

最后再统一计算每一列：

```python
ans += min(left_max[i], right_max[i]) - height[i]
```

这一步其实和暴力法的公式完全一样，只不过左右最高值已经提前算好，不用临时找了。

### 6.5 用示例手动走一遍

还是：

```text
height = [0,1,0,2,1,0,1,3,2,1,2,1]
```

先算 `left_max`：

```text
[0,1,1,2,2,2,2,3,3,3,3,3]
```

再算 `right_max`：

```text
[3,3,3,3,3,3,3,3,2,2,2,1]
```

比如下标 `5` 这一列，高度是 `0`：

- 左边最高是 `2`
- 右边最高是 `3`
- 所以这一列接水量是 `min(2, 3) - 0 = 2`

这样每列相加，最后得到总答案 6。

### 6.6 这个方法的优缺点

优点：

- 思路非常清晰
- 特别适合第一次真正看懂这题
- 时间复杂度已经降到 `O(n)`

缺点：

- 用了两个额外数组

所以它通常是“最好理解的标准解”，但还不是空间最优。

## 7. 方法三：双指针（真正推荐）

### 7.1 先说最难的部分

双指针这题最容易让人困惑的不是代码，而是：

- 为什么某一步只处理左边，或者只处理右边，就不会漏答案？

你如果这句没想明白，就会觉得双指针像“背结论”。

所以我们先把逻辑讲透，再看代码。

### 7.2 双指针到底在维护什么

我们维护：

- `left`：左指针
- `right`：右指针
- `left_max`：从左边走到当前时见过的最高柱子
- `right_max`：从右边走到当前时见过的最高柱子

它们的含义一定要分清：

- `left` 和 `right` 是“位置”
- `left_max` 和 `right_max` 是“高度信息”

### 7.3 为什么可以只处理较矮一边

假设当前：

- `height[left] < height[right]`

这时候我们为什么可以先处理左边？

因为右边当前至少有一根柱子比左边高。

也就是说，对左边这一列来说：

- 它右边一定存在一个“至少和右边当前柱子一样高”的挡板
- 所以左边这一列最终能接多少水，关键只看左边自己目前的最高挡板 `left_max`

换句话说：

- 当左边当前柱子更矮时
- 左边这一列的答案已经足够确定，可以先结算

右边同理。

这就是双指针能成立的核心，不是拍脑袋移动，而是“谁这边的信息已经足够确定，就先算谁”。

### 7.4 Python Tutor 版代码

```python
def trap(height):
    left = 0
    right = len(height) - 1
    left_max = 0
    right_max = 0
    ans = 0

    while left < right:
        if height[left] < height[right]:
            left_max = max(left_max, height[left])
            ans += left_max - height[left]
            left += 1
        else:
            right_max = max(right_max, height[right])
            ans += right_max - height[right]
            right -= 1

    return ans

print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))
```

### 7.5 LeetCode 可提交版代码

```python
class Solution:
    def trap(self, height):
        left = 0
        right = len(height) - 1
        left_max = 0
        right_max = 0
        ans = 0

        while left < right:
            if height[left] < height[right]:
                left_max = max(left_max, height[left])
                ans += left_max - height[left]
                left += 1
            else:
                right_max = max(right_max, height[right])
                ans += right_max - height[right]
                right -= 1

        return ans
```

### 7.6 每一行代码在做什么

先看初始化：

```python
left = 0
right = len(height) - 1
left_max = 0
right_max = 0
ans = 0
```

这里：

- `left` 从最左边开始
- `right` 从最右边开始
- `left_max` 和 `right_max` 开始都还没见到任何有效挡板，所以先设成 0
- `ans` 用来累计总水量

接着看循环：

```python
while left < right:
```

只要左右指针还没相遇，中间就还存在可能接水的区域。

最关键的分支在这里：

```python
if height[left] < height[right]:
```

表示当前左边柱子更矮，所以先处理左边这一列。

处理方式是：

```python
left_max = max(left_max, height[left])
ans += left_max - height[left]
left += 1
```

这三句要分开理解：

第一句：

```python
left_max = max(left_max, height[left])
```

表示更新左边历史最高挡板。

第二句：

```python
ans += left_max - height[left]
```

表示当前左边这一列能接的水量。

为什么这里不需要再取 `min(left_max, right_max)`？

因为在这个分支下，右边当前高度已经足以证明：

- 右边一定存在不低于左边当前柱子的挡板

所以左边这列的“限制因素”只剩 `left_max`。

第三句：

```python
left += 1
```

表示左边这一列已经算完，左指针往右走。

右边分支同理：

```python
right_max = max(right_max, height[right])
ans += right_max - height[right]
right -= 1
```

### 7.7 用示例手动走一遍

还是这组经典数据：

```text
[0,1,0,2,1,0,1,3,2,1,2,1]
```

开始时：

- `left = 0`
- `right = 11`
- `left_max = 0`
- `right_max = 0`
- `ans = 0`

#### 第 1 轮

- `height[left] = 0`
- `height[right] = 1`

左边更矮，所以处理左边：

- `left_max = max(0, 0) = 0`
- `ans += 0 - 0 = 0`
- `left = 1`

#### 第 2 轮

- `height[left] = 1`
- `height[right] = 1`

这里进入右边分支：

- `right_max = max(0, 1) = 1`
- `ans += 1 - 1 = 0`
- `right = 10`

#### 后面继续走

当你一路往中间走，会在那些低洼位置不断累计水量。

例如遇到高度 `0`、`1` 但左右挡板已经足够高时，就会累加出：

- 1
- 2
- 1
- ...

最终总和变成：

```text
6
```

### 7.8 为什么这方法比前后缀数组更高级

因为它并没有否定“每列单独计算”的本质。

它只是把：

- 原来两个完整数组里保存的信息

压缩成了：

- 两边移动过程中动态维护的四个变量

所以你可以把双指针理解成：

- 前后缀思想的空间优化版

## 8. 三种方法放在一起对比

### 8.1 按列暴力法

- 最容易想到
- 最适合第一步理解公式
- 但重复计算很多

### 8.2 前后缀最大值法

- 最适合第一次真正做对这题
- 时间复杂度是 `O(n)`
- 但需要额外数组

### 8.3 双指针法

- 时间复杂度也是 `O(n)`
- 空间更省
- 但理解门槛更高

### 8.4 我建议你先记住哪个

如果你现在还是刷题前期，我很建议你这样学：

1. 先真正看懂“按列思考”
2. 再掌握前后缀最大值法
3. 最后再把双指针法吃透

不要直接硬背双指针，否则下次很容易忘。

## 9. 这题顺手学到的 Python 语法

### 9.1 `[0] * n`

用来快速创建一个长度为 `n` 的数组：

```python
left_max = [0] * n
```

### 9.2 `max(a, b)` 和 `min(a, b)`

这题会反复用到：

- `max` 更新最高挡板
- `min` 找左右有效水位

### 9.3 倒序 range

```python
for i in range(n - 2, -1, -1):
```

表示从右往左遍历。

## 10. 这题最容易犯的错

### 10.1 只想整体，不按列去理解

一旦你不按列去看，这题就很容易变成一堆模糊的图形直觉，最后写不出来。

### 10.2 把某一列接水量写成两边最高值之和减当前高度

这是错的。

正确的是：

```text
min(左边最高, 右边最高) - 当前高度
```

### 10.3 双指针里不理解为什么处理较矮一边

如果只是死记代码，下次很容易忘。

真正要记住的是：

- 哪一边当前的信息已经足够确定
- 就先结算哪一边

### 10.4 忘了总水量是“每一列相加”

这题不是一次算整个盆的面积，而是分列累加。

## 11. 一句话复盘

这题的本质不是“看整体像几个坑”，而是“先按列算每一格能接多少水，再想办法把这个按列公式优化成更快的实现”。

## 12. 下一步怎么学

如果你准备继续往下刷，下一题就进入 `滑动窗口` 专题了：`3. 无重复字符的最长子串`。
