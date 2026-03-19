---
title: Hot100 238 | 除自身以外数组的乘积：前缀积和后缀积
slug: leetcode-hot100-238-product-of-array-except-self
date: 2026-03-19 18:20:00
updated: 2026-03-19 18:20:00
tags:
  - LeetCode
  - Hot100
  - Python
  - 数组
  - 前缀积
categories:
  - 算法刷题
  - LeetCode Hot100
  - 普通数组 / 前缀和
description: 把 LeetCode Hot100 第 238 题讲给刷题新手，从题意理解、左右乘积拆分到空间优化，再到变量含义与代码细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 除自身以外数组的乘积
  - Python
  - 前缀积
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-189-rotate-array Hot100 189 | 轮转数组：额外数组到三次反转 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-560-subarray-sum-equals-k Hot100 560 | 和为 K 的子数组：前缀和加哈希表 %}

这一题特别适合帮你理解一类很常见的数组思维：

- 不要总想着“一口气直接算答案”
- 可以先把左边信息和右边信息拆开
- 最后再把它们重新拼起来

虽然这题不是求和，而是求乘积，但背后的结构感非常像前缀和题。

<!-- more -->

## 专栏导读

这题看起来不难，但它很适合训练你三件事：

1. 看到“除了自己以外”时，能不能自然想到“左边部分 × 右边部分”
2. 能不能不用除法做出来
3. 能不能把一个看似需要两个辅助数组的问题，压缩到只用一个答案数组来完成

这篇会重点讲清楚下面几件事：

1. 题目到底在问什么
2. 为什么“除了自己以外”可以拆成左边和右边两部分
3. `prefix` 和 `suffix` 各自到底代表什么
4. 为什么 `ans[i] = prefix` 一定要写在 `prefix *= nums[i]` 前面
5. 为什么这一题不需要额外两个完整数组

## 1. 题目到底在说什么

题目给你一个数组 `nums`，要你返回一个新数组 `answer`，其中：

- `answer[i]`
- 等于原数组中除了 `nums[i]` 本身以外，其余所有元素的乘积

例如：

```text
nums = [1,2,3,4]
```

那么：

- 第 0 位答案是 `2*3*4 = 24`
- 第 1 位答案是 `1*3*4 = 12`
- 第 2 位答案是 `1*2*4 = 8`
- 第 3 位答案是 `1*2*3 = 6`

所以结果是：

```text
[24,12,8,6]
```

## 2. 这题最容易误解的地方

很多人第一次看到这题，会立刻想到：

- 先把所有数乘起来
- 再除以自己

如果允许这么做，那当然简单。

但这题真正想让你学的是：

- 不用除法，怎么构造每一位答案

所以你要换一种想法。

## 3. 先把“除了自己以外”翻译成人话

对于某个位置 `i` 来说，“除了自己以外”其实可以自然拆成两部分：

- `i` 左边所有数
- `i` 右边所有数

于是答案就可以写成：

```text
左边所有数的乘积 × 右边所有数的乘积
```

这就是整题最关键的观察。

### 3.1 举个最小例子

例如：

```text
nums = [1,2,3,4]
```

看位置 `2`，也就是数字 `3`。

除了它自己以外：

- 左边是 `1,2`
- 右边是 `4`

所以：

```text
answer[2] = (1*2) * 4 = 8
```

也就是说，我们真正要做的是：

- 想办法快速知道每个位置左边乘积是多少
- 再快速知道每个位置右边乘积是多少

## 4. 最直观的方法：开两个辅助数组

### 4.1 为什么先讲这个版本

虽然最终还能继续优化，但对刷题新手来说，最稳的顺序永远是：

1. 先把思路彻底想顺
2. 再做空间优化

所以最容易理解的版本其实是：

- 用一个数组存每个位置左边的乘积
- 再用一个数组存每个位置右边的乘积
- 最后把它们相乘

这版虽然不是最省空间，但特别有助于你理解题目的结构。

### 4.2 Python Tutor 版代码

```python
def product_except_self(nums):
    n = len(nums)
    left = [1] * n
    right = [1] * n
    ans = [1] * n

    for i in range(1, n):
        left[i] = left[i - 1] * nums[i - 1]

    for i in range(n - 2, -1, -1):
        right[i] = right[i + 1] * nums[i + 1]

    for i in range(n):
        ans[i] = left[i] * right[i]

    return ans

print(product_except_self([1,2,3,4]))
```

### 4.3 这一版为什么能做出来

因为它最直白地对应了题意：

- `left[i]` 只负责“我左边所有数的乘积”
- `right[i]` 只负责“我右边所有数的乘积”
- 最后再把它们拼起来

但你也会发现：

- 这版开了 3 个数组
- 空间上有点浪费

所以标准解会再继续压缩。

## 5. 标准做法：用答案数组先存左积，再乘右积

### 5.1 核心想法

如果回头看上一版，你会发现：

- `left` 数组最后其实只是为了在结尾参与乘法

那我们能不能：

- 不单独开 `left`
- 而是直接把左积先存进 `ans`

然后第二轮从右往左，再把右积乘进去。

这就是这题最经典、最推荐的写法。

## 6. Python Tutor 版代码

```python
def product_except_self(nums):
    n = len(nums)
    ans = [1] * n

    prefix = 1
    for i in range(n):
        ans[i] = prefix
        prefix *= nums[i]

    suffix = 1
    for i in range(n - 1, -1, -1):
        ans[i] *= suffix
        suffix *= nums[i]

    return ans

print(product_except_self([1,2,3,4]))
```

## 7. LeetCode 可提交版代码

```python
class Solution:
    def productExceptSelf(self, nums):
        n = len(nums)
        ans = [1] * n

        prefix = 1
        for i in range(n):
            ans[i] = prefix
            prefix *= nums[i]

        suffix = 1
        for i in range(n - 1, -1, -1):
            ans[i] *= suffix
            suffix *= nums[i]

        return ans
```

## 8. 每一行代码在做什么

先看：

```python
n = len(nums)
ans = [1] * n
```

这里：

- `n` 是数组长度
- `ans` 是最终答案数组

为什么一开始要全初始化成 `1`？

因为：

- 乘法的单位元是 `1`

后面无论是存左积，还是再乘右积，都适合从 1 开始。

### 8.1 第一轮：从左往右放前缀积

看这段：

```python
prefix = 1
for i in range(n):
    ans[i] = prefix
    prefix *= nums[i]
```

这里的 `prefix` 表示：

- 当前走到位置 `i` 之前，左边所有数的乘积

这一定要理解清楚。

#### 为什么 `ans[i] = prefix` 写在前面？

这是整题特别容易写反的一行。

先写：

```python
ans[i] = prefix
```

表示：

- 把“当前位置左边所有数的乘积”存进答案

然后再写：

```python
prefix *= nums[i]
```

表示：

- 现在把当前位置这个数也并入前缀积里，供后面位置使用

为什么顺序不能反？

因为如果你先做：

```python
prefix *= nums[i]
```

那当前位置自己的值就会被乘进去，题目要求“除自身以外”，这样就错了。

### 8.2 第二轮：从右往左乘后缀积

再看：

```python
suffix = 1
for i in range(n - 1, -1, -1):
    ans[i] *= suffix
    suffix *= nums[i]
```

这里的 `suffix` 表示：

- 当前走到位置 `i` 之后，右边所有数的乘积

第一轮结束后，`ans[i]` 里已经放好了左积。

现在只要把右积再乘进去：

```python
ans[i] *= suffix
```

那么 `ans[i]` 就自然变成：

```text
左积 × 右积
```

然后再更新：

```python
suffix *= nums[i]
```

表示把当前位置元素并入“以后更左边位置的右积”。

同样，这里的顺序也不能乱。

## 9. 用示例手动走一遍

示例：

```text
nums = [1,2,3,4]
```

### 第一轮：先把左积存进 `ans`

开始：

- `prefix = 1`
- `ans = [1,1,1,1]`

#### 走到第 0 位

- `ans[0] = 1`
- `prefix = 1 * 1 = 1`

#### 走到第 1 位

- `ans[1] = 1`
- `prefix = 1 * 2 = 2`

#### 走到第 2 位

- `ans[2] = 2`
- `prefix = 2 * 3 = 6`

#### 走到第 3 位

- `ans[3] = 6`
- `prefix = 6 * 4 = 24`

这时第一轮结束后：

```text
ans = [1,1,2,6]
```

注意这里并不是最终答案，而只是：

- 每个位置左边所有数的乘积

### 第二轮：再把右积乘进去

开始：

- `suffix = 1`

#### 走到第 3 位

- `ans[3] *= 1`，还是 `6`
- `suffix = 1 * 4 = 4`

#### 走到第 2 位

- `ans[2] *= 4`，变成 `8`
- `suffix = 4 * 3 = 12`

#### 走到第 1 位

- `ans[1] *= 12`，变成 `12`
- `suffix = 12 * 2 = 24`

#### 走到第 0 位

- `ans[0] *= 24`，变成 `24`

最终得到：

```text
[24,12,8,6]
```

## 10. 为什么这一题很值得学

这题最重要的，不只是会写出这一版代码，而是要真正建立这种拆分思路：

- 某个位置的答案
- 可以拆成“左边贡献”和“右边贡献”

这种思维以后在很多数组题里都会再次出现。

也就是说，这题训练的不是死记代码，而是：

- 怎么把局部答案拆成两个方向的信息

## 11. 这题顺手学到的 Python 语法

### 11.1 `[1] * n`

快速创建一个长度为 `n`、元素全是 `1` 的列表。

### 11.2 倒序 range

```python
for i in range(n - 1, -1, -1):
```

表示从右往左遍历。

### 11.3 `*=`

```python
ans[i] *= suffix
```

表示把原值乘上 `suffix` 再存回去。

## 12. 这题最容易犯的错

### 12.1 把当前位置自己的值也乘进去

这样就违反了“除自身以外”的要求。

### 12.2 第一轮顺序写反

一定是：

1. 先 `ans[i] = prefix`
2. 再 `prefix *= nums[i]`

### 12.3 第二轮顺序写反

一定是：

1. 先 `ans[i] *= suffix`
2. 再 `suffix *= nums[i]`

### 12.4 不理解为什么答案数组可以复用

如果没看懂“第一轮先存左积，第二轮再乘右积”，就会觉得这段代码像模板硬背。

## 13. 一句话复盘

这题的本质就是：把每个位置的答案拆成“左边乘积 × 右边乘积”，先从左往右把左积存下来，再从右往左把右积乘进去。

## 14. 下一步怎么学

下一题 `560. 和为 K 的子数组` 会继续留在“前缀信息”这个方向，但会从乘积切回求和，并且加入哈希表。
