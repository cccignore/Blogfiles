---
title: Hot100 15 | 三数之和：排序去重与双指针
slug: leetcode-hot100-15-3sum
date: 2026-03-19 16:40:00
updated: 2026-03-19 16:40:00
tags:
  - LeetCode
  - Hot100
  - Python
  - 双指针
  - 数组
  - 排序
categories:
  - 算法刷题
  - LeetCode Hot100
  - 双指针
description: 把 LeetCode Hot100 第 15 题讲给刷题新手，从题意理解、暴力枚举到排序加双指针，再到去重逻辑和 Python 语法细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 三数之和
  - Python
  - 双指针
  - 排序
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-11-container-with-most-water Hot100 11 | 盛最多水的容器：暴力枚举到双指针夹逼 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-42-trapping-rain-water Hot100 42 | 接雨水：前缀最大值到双指针收缩 %}

如果说 `盛最多水的容器` 是双指针里“左右夹逼”的第一课，那 `三数之和` 就是双指针专题里真正开始变难的一题。它不只是让你会用双指针，还会强迫你第一次认真处理“去重”这件事。

<!-- more -->

## 专栏导读

这题很经典，但也很容易把人写晕。

因为它同时要求你想清楚好几件事：

- 三个数怎么找
- 为什么要先排序
- 双指针为什么能用
- 为什么答案里不能有重复三元组
- 去重到底应该在哪几步做

所以这篇不会只给你一段代码，而是会把这几个关键点慢慢拆开。

## 1. 题目到底在说什么

题目给你一个整数数组 `nums`，要你找出所有满足下面条件的不重复三元组：

- 三个位置不同
- 三个数的和等于 0

也就是找所有：

```text
[nums[i], nums[j], nums[k]]
```

满足：

```text
nums[i] + nums[j] + nums[k] = 0
```

例如：

```text
nums = [-1, 0, 1, 2, -1, -4]
```

答案是：

```text
[[-1, -1, 2], [-1, 0, 1]]
```

## 2. 这题最容易看漏的地方

这题最容易让人忽略的一点不是“和为 0”，而是：

- 结果里不能有重复三元组

这句话特别重要。

因为数组里可能有重复数字，比如两个 `-1`，甚至多个 `0`。

所以你不只是要找出满足条件的组合，还得确保：

- 同一组三元组不会重复放进答案里

这正是这题最烦、也最值得学会的地方。

## 3. 先把题目翻译成人话

这题本质上是在问：

- 有没有三个数，加起来刚好等于 0？
- 如果有，把所有不同的组合都找出来

如果从人脑最直观的方式出发，那一定是：

- 固定第一个数
- 再去找后面两个数

这句话已经非常接近正确方向了。

因为标准解法本质上就是：

- 固定一个数
- 剩下部分做“两数之和”

只是这次为了去重和提速，我们要先排序，再用双指针来完成。

## 4. 方法一：暴力枚举

### 4.1 核心想法

最直接的方法就是三层循环：

- 第一层选第一个数
- 第二层选第二个数
- 第三层选第三个数
- 如果三数和为 0，就加入答案

### 4.2 Python Tutor 版代码

```python
def three_sum(nums):
    ans = []
    seen = set()

    for i in range(len(nums)):
        for j in range(i + 1, len(nums)):
            for k in range(j + 1, len(nums)):
                if nums[i] + nums[j] + nums[k] == 0:
                    triplet = tuple(sorted([nums[i], nums[j], nums[k]]))
                    if triplet not in seen:
                        seen.add(triplet)
                        ans.append(list(triplet))

    return ans

result = three_sum([-1, 0, 1, 2, -1, -4])
print(result)
```

### 4.3 LeetCode 可提交版代码

```python
class Solution:
    def threeSum(self, nums):
        ans = []
        seen = set()

        for i in range(len(nums)):
            for j in range(i + 1, len(nums)):
                for k in range(j + 1, len(nums)):
                    if nums[i] + nums[j] + nums[k] == 0:
                        triplet = tuple(sorted([nums[i], nums[j], nums[k]]))
                        if triplet not in seen:
                            seen.add(triplet)
                            ans.append(list(triplet))

        return ans
```

### 4.4 为什么这个方法不推荐

这个方法虽然能想到，也能做，但问题很明显：

- 三层循环，太慢
- 还得额外处理去重

时间复杂度大致是：

```text
O(n^3)
```

这题 `n` 最多能到 3000，显然不适合用这种做法。

所以它只适合作为“帮你理解题目”的第一步。

## 5. 标准思路从哪里来

这题真正的关键转折是：

- 三数之和
- 可以转成“固定一个数 + 剩下做两数之和”

例如你先固定一个数 `a`，那么问题就变成：

- 在后面的数字里，找两个数 `b` 和 `c`
- 让 `b + c = -a`

这是不是有点像你前面做过的 `两数之和`？

是的，但这里和普通 `两数之和` 又不完全一样，因为：

- 题目要求返回所有答案
- 题目要求不能重复

这时候“排序 + 双指针”就特别合适了。

## 6. 方法二：排序 + 双指针（真正推荐）

### 6.1 为什么先排序

排序后，数组会有两个巨大好处：

- 你能更容易判断和太大还是太小
- 你能更容易去重

例如：

```text
[-1, 0, 1, 2, -1, -4]
```

排序后变成：

```text
[-4, -1, -1, 0, 1, 2]
```

这时候如果固定一个数，然后让另外两个指针一左一右靠拢，就很自然了。

### 6.2 核心想法

整体流程是：

1. 先排序
2. 用一个循环固定第一个数 `nums[i]`
3. 在 `i` 后面那一段，用双指针找另外两个数

具体来说：

- 左指针 `left = i + 1`
- 右指针 `right = len(nums) - 1`

然后计算：

```text
nums[i] + nums[left] + nums[right]
```

如果和太小：

- 说明需要更大的数
- 所以移动 `left`

如果和太大：

- 说明需要更小的数
- 所以移动 `right`

如果刚好等于 0：

- 记录答案
- 再处理去重

## 7. Python Tutor 版代码

```python
def three_sum(nums):
    nums.sort()
    ans = []

    for i in range(len(nums) - 2):
        if i > 0 and nums[i] == nums[i - 1]:
            continue

        left = i + 1
        right = len(nums) - 1

        while left < right:
            total = nums[i] + nums[left] + nums[right]

            if total < 0:
                left += 1
            elif total > 0:
                right -= 1
            else:
                ans.append([nums[i], nums[left], nums[right]])

                left += 1
                right -= 1

                while left < right and nums[left] == nums[left - 1]:
                    left += 1

                while left < right and nums[right] == nums[right + 1]:
                    right -= 1

    return ans

result = three_sum([-1, 0, 1, 2, -1, -4])
print(result)
```

## 8. LeetCode 可提交版代码

```python
class Solution:
    def threeSum(self, nums):
        nums.sort()
        ans = []

        for i in range(len(nums) - 2):
            if i > 0 and nums[i] == nums[i - 1]:
                continue

            left = i + 1
            right = len(nums) - 1

            while left < right:
                total = nums[i] + nums[left] + nums[right]

                if total < 0:
                    left += 1
                elif total > 0:
                    right -= 1
                else:
                    ans.append([nums[i], nums[left], nums[right]])

                    left += 1
                    right -= 1

                    while left < right and nums[left] == nums[left - 1]:
                        left += 1

                    while left < right and nums[right] == nums[right + 1]:
                        right -= 1

        return ans
```

## 9. 每一行都在做什么

先看：

```python
nums.sort()
```

这一步非常关键。

排序以后：

- 双指针才知道该往哪边移动
- 去重也才更容易做

再看外层循环：

```python
for i in range(len(nums) - 2):
```

这里的 `i` 表示固定第一个数。

为什么只到 `len(nums) - 2`？

因为后面至少还要留两个数给 `left` 和 `right`。

接着是第一层去重：

```python
if i > 0 and nums[i] == nums[i - 1]:
    continue
```

意思是：

- 如果当前固定的数和前一个固定数一样
- 那这一轮就跳过

为什么？

因为如果你已经用前一个 `-1` 开过头了，再用第二个 `-1` 开头，只会得到重复答案。

然后初始化双指针：

```python
left = i + 1
right = len(nums) - 1
```

意思是：

- 固定第一个数后
- 剩下区间里用左右指针去找另外两个数

再看核心计算：

```python
total = nums[i] + nums[left] + nums[right]
```

如果：

```python
total < 0
```

说明和太小了，需要更大的数，所以：

```python
left += 1
```

如果：

```python
total > 0
```

说明和太大了，需要更小的数，所以：

```python
right -= 1
```

如果刚好等于 0：

```python
ans.append([nums[i], nums[left], nums[right]])
```

就把这个三元组加入答案。

但加完还没结束，因为这题最大的麻烦是去重。

所以先同时移动：

```python
left += 1
right -= 1
```

然后继续跳过重复值：

```python
while left < right and nums[left] == nums[left - 1]:
    left += 1
```

表示：

- 如果左指针现在指到的值和前一个一样
- 那它会产生重复答案
- 所以继续往右跳

右边同理：

```python
while left < right and nums[right] == nums[right + 1]:
    right -= 1
```

## 10. 用示例一步一步模拟

示例：

```text
nums = [-1, 0, 1, 2, -1, -4]
```

先排序：

```text
[-4, -1, -1, 0, 1, 2]
```

### 第 1 轮：固定 `-4`

- `i = 0`
- `left = 1`
- `right = 5`

开始算：

- `-4 + (-1) + 2 = -3`
- 太小，`left` 右移

继续：

- `-4 + (-1) + 2 = -3`
- 还是太小

再继续：

- `-4 + 0 + 2 = -2`
- 太小

再继续：

- `-4 + 1 + 2 = -1`
- 还是太小

这一轮没有答案。

### 第 2 轮：固定第一个 `-1`

- `i = 1`
- `left = 2`
- `right = 5`

先算：

- `-1 + (-1) + 2 = 0`

找到一个答案：

```text
[-1, -1, 2]
```

然后左右都收缩。

再算：

- `-1 + 0 + 1 = 0`

再找到一个答案：

```text
[-1, 0, 1]
```

### 第 3 轮：固定第二个 `-1`

这时候会被外层去重直接跳过。

最终答案就是：

```text
[[-1, -1, 2], [-1, 0, 1]]
```

## 11. 这题真正难在哪里

很多人不是不会双指针，而是会死在“去重”上。

这题至少有两层去重：

### 11.1 第一层：固定数去重

```python
if i > 0 and nums[i] == nums[i - 1]:
    continue
```

避免同样的开头重复处理。

### 11.2 第二层：找到答案后，左右指针去重

```python
while left < right and nums[left] == nums[left - 1]:
    left += 1

while left < right and nums[right] == nums[right + 1]:
    right -= 1
```

避免同一个三元组被重复加入答案。

你可以把这题记成一句话：

- 排序是为了双指针和去重服务的

## 12. 为什么这里双指针能用

因为排序后，数组有单调性。

当你固定了 `nums[i]`，再看：

```text
nums[left] + nums[right]
```

如果总和太小，就只能让左边变大；
如果总和太大，就只能让右边变小。

所以左右夹逼是有方向依据的，不是乱移动。

这点和 `盛最多水的容器` 不同，但本质上仍然是双指针：

- 每一步都利用题目结构去缩小搜索范围

## 13. 两种方法放在一起对比

### 13.1 暴力法

- 好理解
- 适合第一步理清题意
- 但太慢

### 13.2 排序 + 双指针

- 更高效
- 更符合这题本质
- 真正的难点在去重

### 13.3 我建议你先记住哪个

这题我建议你：

- 思路上先接受暴力法
- 正式答案一定记排序 + 双指针

因为这题的模板价值非常高，后面很多题都会用到“排序后固定一个数，再在后面做双指针”这个套路。

## 14. 这题顺手学到的 Python 语法

### 14.1 `nums.sort()`

原地排序。

### 14.2 `continue`

跳过当前这一轮循环，直接进入下一轮。

### 14.3 双指针移动

```python
left += 1
right -= 1
```

### 14.4 `while` 去重

```python
while left < right and nums[left] == nums[left - 1]:
    left += 1
```

这种写法后面会反复出现。

## 15. 这题最容易犯的错

### 15.1 忘了先排序

不排序，双指针就没有方向感，也没法优雅去重。

### 15.2 只做外层去重，不做内层去重

这样答案里还是会有重复三元组。

### 15.3 去重时机写错

外层去重要在固定第一个数时做；
内层去重要在找到一个合法答案之后做。

### 15.4 还在把这题当成普通两数之和

这题虽然能拆成“两数之和”，但它不是简单套第一题，还多了：

- 排序
- 固定一个数
- 双指针
- 去重

## 16. 最终推荐你先背下来的版本

如果你准备把这题作为双指针专题的核心代表题，我建议你最后记住这一版：

```python
class Solution:
    def threeSum(self, nums):
        nums.sort()
        ans = []

        for i in range(len(nums) - 2):
            if i > 0 and nums[i] == nums[i - 1]:
                continue

            left = i + 1
            right = len(nums) - 1

            while left < right:
                total = nums[i] + nums[left] + nums[right]

                if total < 0:
                    left += 1
                elif total > 0:
                    right -= 1
                else:
                    ans.append([nums[i], nums[left], nums[right]])
                    left += 1
                    right -= 1

                    while left < right and nums[left] == nums[left - 1]:
                        left += 1

                    while left < right and nums[right] == nums[right + 1]:
                        right -= 1

        return ans
```

这题你最该记住的人话版本是：

- 先排序
- 固定一个数
- 后面用双指针找另外两个数
- 找到答案后认真去重

## 17. 这题真正想让你学会什么

如果把这题放回整个 Hot100 系列里，它最核心的训练点其实是：

- 排序不是目的，而是为双指针和去重服务
- 双指针不只是左右夹逼，还可以和“固定一个数”组合起来用
- 去重是很多中等题真正的门槛

所以这题不只是双指针题，也是你从“会写简单题”迈向“能处理复杂细节”的一个关键台阶。

## 18. 这题刷完后，你应该带走什么

### 18.1 一句话复盘

这题的本质不是暴力找三个数，而是“排序后固定一个数，再在后面用双指针寻找剩余两个数，并且全程处理去重”。

### 18.2 这题的关键词

- 双指针
- 排序
- 去重
- 数组

### 18.3 对你现在阶段最重要的一点

如果你现在正从简单题过渡到中等题，这题最值得你练的不是记住答案，而是能不能把“去重逻辑”真正讲清楚。

## 19. 给现在的自己留一个小练习

做完这篇后，可以自己再练 3 次：

### 练习 1

不看文章，自己重写暴力法。

### 练习 2

不看文章，自己重写排序 + 双指针法。

### 练习 3

把下面这些测试放进 Python Tutor 看：

```python
print(three_sum([-1, 0, 1, 2, -1, -4]))
print(three_sum([0, 1, 1]))
print(three_sum([0, 0, 0]))
```

重点观察：

- 排序后数组长什么样
- `i` 固定的是谁
- `left` 和 `right` 怎么移动
- 哪一步在做去重

当你能把这几件事讲清楚时，这题就不只是做过，而是真的开始掌握了。

## 20. 下一步怎么学

如果你准备继续往下刷双指针专题，我建议你这样接：

1. 先把这题的排序 + 双指针版自己重敲一遍
2. 再去写同专题的下一题，比如 `42. 接雨水`
3. 后面一旦遇到“返回所有不重复组合”的题，就优先想：排序能不能帮我配合双指针和去重

系列导航在这里：[`/2026/03/19/leetcode-hot100-index/`](/2026/03/19/leetcode-hot100-index/)
