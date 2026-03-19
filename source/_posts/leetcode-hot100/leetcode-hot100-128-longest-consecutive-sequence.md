---
title: Hot100 128 | 最长连续序列：排序遍历与哈希集合
slug: leetcode-hot100-128-longest-consecutive-sequence
date: 2026-03-19 01:20:00
updated: 2026-03-19 01:20:00
tags:
  - LeetCode
  - Hot100
  - Python
  - 哈希表
  - 集合
  - 数组
categories:
  - 算法刷题
  - LeetCode Hot100
  - 哈希表
description: 把 LeetCode Hot100 第 128 题讲给刷题新手，从题意理解、排序思路到哈希集合 O(n) 解法，再到 Python 语法细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 最长连续序列
  - Python
  - 哈希表
  - 集合
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-49-group-anagrams Hot100 49 | 字母异位词分组：排序 key 与计数 key %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-283-move-zeroes Hot100 283 | 移动零：额外数组到双指针原地修改 %}

如果说前两题是在练“怎么把数据放进哈希表”，那这道 `最长连续序列` 更像是在练另一件很重要的事：怎么把“查找某个数字在不在”这件事做得足够快。

<!-- more -->

## 专栏导读

这篇依然按“对刷题还不算熟”的视角来写。

也就是说，我默认你现在可能是这种状态：

- 能看懂数组题，但遇到 `O(n)` 要求会紧张
- 知道集合 `set` 很快，但还不太会主动想到它
- 容易把“连续”误解成“在原数组里挨着出现”

这题最值得学会的一点是：

- 题目问的是“数值连续”
- 不是“位置连续”

一旦你看懂这一点，后面的思路就会清楚很多。

## 1. 题目到底在说什么

题目会给你一个未排序的整数数组 `nums`。

例如：

```text
[100, 4, 200, 1, 3, 2]
```

它要你找到的是：

- 数值上连续的一段序列
- 其中长度最长的那一段
- 最后返回它的长度

上面这个例子里：

- `1, 2, 3, 4` 是连续的
- 长度是 4

所以答案是：

```text
4
```

## 2. 这里的“连续”是什么意思

这是这题最容易误解的地方。

连续的意思不是：

- 在原数组里挨着摆在一起

而是：

- 数值可以首尾相接

例如：

```text
[100, 4, 200, 1, 3, 2]
```

虽然 `1`、`2`、`3`、`4` 在原数组里并没有连着放，顺序也很乱，但它们的数值是连续的，所以它们仍然能组成一段连续序列。

也就是说，这题看的是“值”，不是“位置”。

## 3. 题目真正要你做什么

这题表面上像是在问：

- 最长连续段有多长？

但它真正考的是：

- 你能不能快速判断某个数字存不存在
- 你能不能避免重复地从头数很多次

所以这题的关键不是“排序技巧”本身，而是：

- 怎么高效判断 `x + 1` 在不在
- 怎么确保每一段连续序列只统计一次

## 4. 第一反应可以怎么想

如果第一次看到这题，很多人都会先想到：

- 先排序
- 排完以后从左到右看
- 如果相邻数字差 1，就说明连续

这个思路完全合理，而且非常适合当第一步。

所以我们先从这个最直观的做法讲起。

## 5. 方法一：排序后遍历

### 5.1 核心想法

如果数组已经排好序，那么连续序列就比较容易看出来了。

例如：

```text
[100, 4, 200, 1, 3, 2]
```

排序后变成：

```text
[1, 2, 3, 4, 100, 200]
```

这时候你就可以从左到右扫描：

- `2 = 1 + 1`，连续
- `3 = 2 + 1`，连续
- `4 = 3 + 1`，连续
- `100` 和 `4` 不连续，说明前一段结束

于是最长长度就是 4。

### 5.2 这个方法要注意什么

这题里数组可能有重复数字。

例如：

```text
[1, 2, 2, 3]
```

排序后还是：

```text
[1, 2, 2, 3]
```

这里第二个 `2` 不能让连续长度重新算错。

所以排序法通常要分三种情况：

- 如果当前数和前一个数一样：跳过重复值
- 如果当前数等于前一个数加 1：连续长度加 1
- 否则：说明连续段断了，重新开始计数

### 5.3 Python Tutor 版代码

```python
def longest_consecutive(nums):
    if not nums:
        return 0

    nums.sort()
    longest = 1
    current = 1

    for i in range(1, len(nums)):
        if nums[i] == nums[i - 1]:
            continue
        elif nums[i] == nums[i - 1] + 1:
            current += 1
        else:
            longest = max(longest, current)
            current = 1

    return max(longest, current)

result = longest_consecutive([100, 4, 200, 1, 3, 2])
print(result)
```

先看第一张图。这里排序法已经把数组排好了序，并且开始进入遍历：

![排序法中数组排完序后开始遍历的 Python Tutor 视图](/img/leetcode-hot100/longest-consecutive/sort-step-01-sorted-array.png)

这张图里你重点看几个地方：

- `nums` 已经从乱序变成了 `[1, 2, 3, 4, 100, 200]`
- `i = 1`，说明程序正准备比较 `nums[1]` 和 `nums[0]`
- `longest = 1`、`current = 1`，说明当前最长长度和当前连续段长度都还是初始化状态

这一步最重要的意义是：

- 排序之后，连续关系就变得可见了
- 你可以直接通过“和前一个数差多少”来判断是否连续

再看第二张图。此时程序已经扫到了连续增长的那一段：

![排序法中扫描到 1、2、3、4 连续增长时的 Python Tutor 视图](/img/leetcode-hot100/longest-consecutive/sort-step-02-growing-streak.png)

这里你能看到：

- `current = 3`，说明当前连续段已经累计到长度 3
- `i = 2`，表示程序已经一路比较到了前面的连续数字
- 这正是排序法的核心过程：不断检查“当前数是不是前一个数加 1”

当你把这张图和前一张图连起来看时，就会更容易理解排序法为什么成立。

### 5.4 LeetCode 可提交版代码

```python
class Solution:
    def longestConsecutive(self, nums):
        if not nums:
            return 0

        nums.sort()
        longest = 1
        current = 1

        for i in range(1, len(nums)):
            if nums[i] == nums[i - 1]:
                continue
            elif nums[i] == nums[i - 1] + 1:
                current += 1
            else:
                longest = max(longest, current)
                current = 1

        return max(longest, current)
```

### 5.5 每一行都在做什么

先看：

```python
if not nums:
    return 0
```

意思是：

- 如果数组是空的
- 那就没有连续序列
- 直接返回 0

再看：

```python
nums.sort()
```

这是 Python 列表的原地排序。

排序后，原数组本身会被改掉。

接着初始化两个变量：

```python
longest = 1
current = 1
```

它们分别表示：

- `current`：当前这段连续序列长度
- `longest`：目前见过的最长连续序列长度

再看循环：

```python
for i in range(1, len(nums)):
```

从下标 1 开始，是因为我们每次都要和前一个数比较。

第一种情况：

```python
if nums[i] == nums[i - 1]:
    continue
```

如果当前值和前一个值一样，说明遇到重复数字。

这时候：

- 它既不能让连续长度加 1
- 也不应该让连续段断掉

所以最稳的做法就是直接跳过。

第二种情况：

```python
elif nums[i] == nums[i - 1] + 1:
    current += 1
```

说明当前数字刚好比前一个大 1，连续段还在继续。

于是当前长度加 1。

第三种情况：

```python
else:
    longest = max(longest, current)
    current = 1
```

如果既不是重复，也不是差 1，就说明连续段断掉了。

这时要做两件事：

- 先用 `max(longest, current)` 更新历史最长值
- 然后把 `current` 重置为 1，表示从当前数字重新开始一段

最后返回时为什么要写：

```python
return max(longest, current)
```

因为最后一段连续序列可能一直延续到数组结尾。

如果你只在 `else` 里更新 `longest`，最后那一段可能还没来得及比较就结束循环了，所以这里要再补一次比较。

### 5.6 这个方法的优缺点

优点：

- 很直观
- 很适合刚开始理解题目
- 便于你自己手动模拟

缺点：

- 题目明确要求你尽量做到 `O(n)`
- 排序通常是 `O(n log n)`

所以排序法能帮助你理解，但不是这题最想考的答案。

## 6. 方法二：哈希集合（真正推荐）

### 6.1 为什么集合能帮上忙

这题真正需要高效做的事情是：

- 某个数字在不在数组里？

如果你每次都去数组里一个个找，会很慢。

但如果你先把所有数字放进集合 `set`，判断：

```python
x in num_set
```

通常会非常快。

所以这题最经典的想法是：

1. 先把所有数字放进集合
2. 再去找每一段连续序列的起点
3. 从起点一路往后数长度

### 6.2 什么叫“只从起点开始数”

这是整道题最关键的一步。

假设集合里有：

```text
1, 2, 3, 4
```

如果你从每个数都开始往后数：

- 从 1 数：1,2,3,4
- 从 2 数：2,3,4
- 从 3 数：3,4
- 从 4 数：4

你会发现后面的很多统计都重复了。

所以真正聪明的做法是：

- 只有当一个数前面没有更小的连续数时，才从它开始数

例如：

- 对 `1` 来说，`0` 不在集合里，所以 `1` 是起点
- 对 `2` 来说，`1` 在集合里，所以 `2` 不是起点
- 对 `3` 来说，`2` 在集合里，所以 `3` 不是起点

这样一来，一段连续序列只会被完整统计一次。

### 6.3 Python Tutor 版代码

```python
def longest_consecutive(nums):
    num_set = set(nums)
    longest = 0

    for num in num_set:
        if num - 1 not in num_set:
            current_num = num
            current_length = 1

            while current_num + 1 in num_set:
                current_num += 1
                current_length += 1

            longest = max(longest, current_length)

    return longest

result = longest_consecutive([100, 4, 200, 1, 3, 2])
print(result)
```

第一张图对应的是哈希集合方法刚完成初始化：

![哈希集合方法中 num_set 初始化完成后的 Python Tutor 视图](/img/leetcode-hot100/longest-consecutive/set-step-01-init-num-set.png)

这里最值得注意的是：

- `num_set` 已经建好了
- 它把原数组里的数字放进了集合里
- 后面程序就可以用很快的方式去判断某个数字在不在

这一步虽然看起来很普通，但它其实是整个 `O(n)` 解法的基础。

第二张图对应的是程序已经发现 `1` 是一个起点，并准备开始往后扩展：

![哈希集合方法中发现 1 是起点并开始扩展的 Python Tutor 视图](/img/leetcode-hot100/longest-consecutive/set-step-02-start-from-one.png)

这张图里你重点看：

- `num = 1`
- `current_num = 1`
- `current_length = 1`

之所以会从 `1` 开始，是因为：

- `1 - 1 = 0`
- `0` 不在集合里
- 所以 `1` 被判定成这一段连续序列的起点

这正是哈希集合方法最重要的一步：

- 不是每个数都开始往后扩展
- 只有起点才开始数

第三张图对应的是这段序列已经成功扩展到长度 4：

![哈希集合方法中 current_length 扩展到 4 时的 Python Tutor 视图](/img/leetcode-hot100/longest-consecutive/set-step-03-length-four.png)

这时候你可以直接看到：

- `current_num = 4`
- `current_length = 4`

这表示：

- 程序已经从 `1` 一路找到了 `2`、`3`、`4`
- 于是这一段连续序列长度最终变成了 4

如果你把这三张图连起来看，就能很清楚地理解这题标准解的完整流程：

- 先建集合
- 再找起点
- 然后一路向后扩展长度

### 6.4 LeetCode 可提交版代码

```python
class Solution:
    def longestConsecutive(self, nums):
        num_set = set(nums)
        longest = 0

        for num in num_set:
            if num - 1 not in num_set:
                current_num = num
                current_length = 1

                while current_num + 1 in num_set:
                    current_num += 1
                    current_length += 1

                longest = max(longest, current_length)

        return longest
```

### 6.5 每一行都在做什么

先看：

```python
num_set = set(nums)
```

这一步把数组转换成集合。

集合有两个很重要的好处：

- 查某个数在不在，通常很快
- 自动去重

例如：

```python
set([1, 2, 2, 3])
```

会变成：

```python
{1, 2, 3}
```

这题里去重其实正好也很有帮助。

再看：

```python
longest = 0
```

表示目前找到的最长长度，初始设为 0。

然后遍历集合里的每个数：

```python
for num in num_set:
```

接下来是整道题最关键的一句：

```python
if num - 1 not in num_set:
```

这句话的含义是：

- 如果 `num - 1` 不存在
- 说明 `num` 前面没有更小的连续数
- 所以 `num` 才是一段连续序列的起点

例如：

- `num = 1` 时，`0` 不在集合里，所以 1 是起点
- `num = 2` 时，`1` 在集合里，所以 2 不是起点

只有确定是起点之后，才开始往后扩展。

于是初始化：

```python
current_num = num
current_length = 1
```

意思是：

- 当前正在统计的连续段，从 `num` 开始
- 当前长度先记为 1

然后进入循环：

```python
while current_num + 1 in num_set:
    current_num += 1
    current_length += 1
```

只要后一个数还存在，就继续往后扩展。

例如从 `1` 开始：

- `2` 在 -> 长度变 2
- `3` 在 -> 长度变 3
- `4` 在 -> 长度变 4
- `5` 不在 -> 停止

最后更新最长值：

```python
longest = max(longest, current_length)
```

### 6.6 为什么这个方法是 O(n)

很多人第一次看会担心：

- 外面一个 `for`
- 里面还有一个 `while`
- 这不是看起来像两层循环吗？

这个担心很正常，但这题的关键就在于：

- 每个数字只会在“某一段真正从起点开始的扩展”里被访问一次

因为我们不会从 2、3、4 这些中间位置重新完整开始数。

所以整体上它还是近似线性的，通常记作：

```text
O(n)
```

这也是这题最经典、最推荐的解法。

## 7. 拿示例完整模拟一遍

示例：

```text
nums = [100, 4, 200, 1, 3, 2]
```

先转成集合：

```python
num_set = {100, 4, 200, 1, 3, 2}
```

现在开始遍历。

### 7.1 遇到 100

- `99` 不在集合里
- 所以 `100` 是起点

往后看：

- `101` 不在

所以这段长度只有 1。

### 7.2 遇到 4

- `3` 在集合里
- 所以 `4` 不是起点
- 直接跳过

### 7.3 遇到 200

- `199` 不在集合里
- 所以 `200` 是起点

往后看：

- `201` 不在

这段长度也是 1。

### 7.4 遇到 1

- `0` 不在集合里
- 所以 `1` 是起点

往后扩展：

- `2` 在 -> 长度 2
- `3` 在 -> 长度 3
- `4` 在 -> 长度 4
- `5` 不在 -> 停止

这时最长值更新为 4。

最后答案就是：

```text
4
```

## 8. 两种方法放在一起对比

### 8.1 排序法

- 更容易想到
- 更适合刚开始理解题目
- 但时间复杂度通常是 `O(n log n)`

### 8.2 哈希集合方法

- 更符合题目对 `O(n)` 的要求
- 关键在于“只从起点开始扩展”
- 是这题最标准、最推荐的解法

### 8.3 我建议你先记住哪个

如果你是第一次做这题：

- 可以先理解排序法
- 但最后一定要重点记住哈希集合方法

因为这题真正的考点就是：

- 集合查找
- 起点判断
- 避免重复统计

## 9. 这题顺手学到的 Python 语法

### 9.1 `set(nums)`

把列表转成集合。

```python
set([1, 2, 2, 3])
```

结果：

```python
{1, 2, 3}
```

### 9.2 `x in num_set`

判断一个值是否在集合里。

```python
if 3 in num_set:
```

### 9.3 `not in`

判断一个值不在集合里。

```python
if num - 1 not in num_set:
```

### 9.4 `max(a, b)`

返回两个值中更大的那个。

```python
longest = max(longest, current_length)
```

### 9.5 `while`

只要条件成立，就一直重复执行。

```python
while current_num + 1 in num_set:
```

## 10. 这题最容易犯的错

### 10.1 把“连续”理解成原数组位置连续

这是最常见的误解。

这题看的是数值连续，不是下标连续。

### 10.2 哈希集合方法里从每个数都开始往后扩展

如果你不先判断：

```python
if num - 1 not in num_set:
```

就会重复统计很多次，效率也会变差。

### 10.3 忘记处理重复值

排序法里如果不跳过重复值，连续长度很容易算错。

### 10.4 在 Python Tutor 里直接贴 LeetCode 模板

像这种：

```python
class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
```

对 Python Tutor 并不友好，最好还是先写普通函数版本。

## 11. 最终推荐你先背下来的版本

如果你准备把这题作为哈希集合代表题，我建议你最后记住这一版：

```python
class Solution:
    def longestConsecutive(self, nums):
        num_set = set(nums)
        longest = 0

        for num in num_set:
            if num - 1 not in num_set:
                current_num = num
                current_length = 1

                while current_num + 1 in num_set:
                    current_num += 1
                    current_length += 1

                longest = max(longest, current_length)

        return longest
```

这版最应该记住的不是代码表面，而是这两个关键动作：

- 只从起点开始数
- 用集合做快速查找

## 12. 这题真正想让你学会什么

如果把这题放回整个 Hot100 系列里，它最核心的训练点其实是：

- 当题目反复问“某个值在不在”时，要想到集合
- 当你发现会重复统计时，要主动想办法只统计一次

所以这题本质上不是在考“连续序列”四个字，而是在考：

- 集合查找
- 去重
- 起点识别

## 13. 这题刷完后，你应该带走什么

### 13.1 一句话复盘

这题不是从每个数都开始无脑往后找，而是先找连续段的起点，再用集合把整段快速扩展出来。

### 13.2 这题的关键词

- 哈希表
- 集合
- 数组
- 连续序列
- 起点判断

### 13.3 对你现在阶段最重要的一点

如果你现在还在刷题前期，这题最重要的不是立刻背复杂写法，而是：

- 先理解为什么排序法能做
- 再真正看懂为什么题目更想要集合法
- 最后记住“`num - 1` 不在集合里”这个判断的意义

## 14. 给现在的自己留一个小练习

做完这篇后，可以自己再练 3 次：

### 练习 1

不看文章，自己重写排序法。

### 练习 2

不看文章，自己重写哈希集合法。

### 练习 3

把下面这些测试放进 Python Tutor 看：

```python
print(longest_consecutive([100, 4, 200, 1, 3, 2]))
print(longest_consecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]))
print(longest_consecutive([1, 0, 1, 2]))
```

重点观察：

- `num_set` 里最后都有哪些数
- 哪些数会被判断成起点
- `current_length` 是怎么扩展的

当你能把这三点讲清楚时，这题就不只是做过，而是真的开始掌握了。

## 15. 下一步怎么学

如果你准备继续把这个系列往下写，我建议你这样接：

1. 先把集合版自己重敲一遍
2. 再去导航页继续同专题或者切到下一个专题
3. 以后只要题目核心变成“快速判断某个元素在不在”，就优先想到 `set`

系列导航在这里：[`/2026/03/19/leetcode-hot100-index/`](/2026/03/19/leetcode-hot100-index/)
