---
title: Hot100 283 | 移动零：额外数组到双指针原地修改
slug: leetcode-hot100-283-move-zeroes
date: 2026-03-19 13:00:00
updated: 2026-03-19 13:00:00
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
description: 把 LeetCode Hot100 第 283 题讲给刷题新手，从题意理解、额外数组思路到双指针原地修改，再到 Python 语法细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 移动零
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-128-longest-consecutive-sequence Hot100 128 | 最长连续序列：排序遍历与哈希集合 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-11-container-with-most-water Hot100 11 | 盛最多水的容器：暴力枚举到双指针夹逼 %}

从这一题开始，系列就正式进入 `双指针` 专题了。和前面的哈希表题不一样，这类题更强调“用两个位置协作完成数组操作”，而不是用字典或集合去查东西。

<!-- more -->

## 专栏导读

这篇依然按“刚开始系统刷题”的视角来写。

也就是说，我默认你现在可能是这样的状态：

- 看得懂数组题，但一看到“原地修改”会有点慌
- 听过双指针，但还不太知道它到底在指什么
- 容易把代码写成“能做出来”，但不够简洁

这题很适合作为双指针入门题，因为它会让你第一次明确感受到：

- 一个指针可以负责“扫描”
- 另一个指针可以负责“放置正确位置”

这就是双指针最常见的配合方式之一。

## 1. 题目到底在说什么

题目会给你一个数组 `nums`，你要把里面所有的 `0` 移到数组末尾，同时满足两件事：

- 非零元素的相对顺序不能变
- 要尽量在原数组上完成操作

例如：

```text
nums = [0, 1, 0, 3, 12]
```

处理后应变成：

```text
[1, 3, 12, 0, 0]
```

注意，这题返回的不是新数组，而是“直接修改原数组”。

## 2. 这题最容易看漏的地方

这题有三句话都很重要：

- 把 0 移到末尾
- 保持非零元素相对顺序
- 原地修改

很多人第一次看时，只记住了第一句：“把 0 放后面”。

但真正难点在后两句：

- `1, 3, 12` 的顺序不能乱
- 最好不要重新开一个等长新数组去接结果

所以这题不是简单排序，也不是把数组随便重排。

## 3. 先把题目翻译成人话

如果把这题翻译成最直白的话，其实就是：

- 把所有非零数字按原顺序往前挪
- 剩下的位置再补 0

比如：

```text
[0, 1, 0, 3, 12]
```

你先只看非零数字：

```text
1, 3, 12
```

它们的顺序本来就是：

```text
1 -> 3 -> 12
```

所以前面应该放成：

```text
[1, 3, 12, _, _]
```

再把空位补成 0：

```text
[1, 3, 12, 0, 0]
```

这其实已经很接近正确思路了。

## 4. 方法一：额外数组法

### 4.1 为什么先讲这个方法

虽然题目强调“原地修改”，但对刷题新手来说，最重要的第一步永远是：

- 先想出一个最容易理解、最不容易写错的方法

这题最直接的做法就是：

1. 先把所有非零数字收集起来
2. 再补上足够数量的 0
3. 最后把结果写回原数组

这不是最优的空间做法，但非常适合帮助你理解题目到底想干什么。

### 4.2 Python Tutor 版代码

```python
def move_zeroes(nums):
    non_zero = []

    for num in nums:
        if num != 0:
            non_zero.append(num)

    zero_count = len(nums) - len(non_zero)
    result = non_zero + [0] * zero_count

    for i in range(len(nums)):
        nums[i] = result[i]

nums = [0, 1, 0, 3, 12]
move_zeroes(nums)
print(nums)
```

先看第一张图。这里额外数组法已经把所有非零元素收集出来了：

![额外数组法中 non_zero 已经收集到 1、3、12 的 Python Tutor 视图](/img/leetcode-hot100/move-zeroes/extra-array-step-01-collected-non-zero.png)

这张图里你最该注意的是：

- 原数组 `nums` 还是 `[0, 1, 0, 3, 12]`
- 新列表 `non_zero` 已经变成了 `[1, 3, 12]`
- 当前 `num = 12`，说明遍历已经把最后一个非零元素也收进来了

这一步很好地体现了额外数组法的核心：

- 先别急着管 0
- 先把所有有用的非零元素按原顺序收起来

再看第二张图。此时额外数组法已经把最终结果拼好了：

![额外数组法中最终 result 等于 1、3、12、0、0 的 Python Tutor 视图](/img/leetcode-hot100/move-zeroes/extra-array-step-02-final-result.png)

你可以直接看到：

- `non_zero = [1, 3, 12]`
- `zero_count = 2`
- `result = [1, 3, 12, 0, 0]`

这说明额外数组法的完整思路已经跑通了：

- 收集非零元素
- 统计 0 的数量
- 拼成最终数组
- 再写回原数组

### 4.3 LeetCode 可提交版代码

```python
class Solution:
    def moveZeroes(self, nums):
        non_zero = []

        for num in nums:
            if num != 0:
                non_zero.append(num)

        zero_count = len(nums) - len(non_zero)
        result = non_zero + [0] * zero_count

        for i in range(len(nums)):
            nums[i] = result[i]
```

### 4.4 每一行都在做什么

先看：

```python
non_zero = []
```

表示先准备一个空列表，专门存所有非零元素。

接着遍历原数组：

```python
for num in nums:
    if num != 0:
        non_zero.append(num)
```

意思是：

- 只要当前数字不是 0
- 就按原顺序加入 `non_zero`

例如：

```text
nums = [0, 1, 0, 3, 12]
```

遍历完以后：

```text
non_zero = [1, 3, 12]
```

再看：

```python
zero_count = len(nums) - len(non_zero)
```

原数组长度是 5，非零元素个数是 3，所以 0 的数量就是 2。

接着：

```python
result = non_zero + [0] * zero_count
```

这句是在拼出最终数组。

例如：

```python
[1, 3, 12] + [0] * 2
```

结果就是：

```python
[1, 3, 12, 0, 0]
```

最后把结果逐个写回原数组：

```python
for i in range(len(nums)):
    nums[i] = result[i]
```

### 4.5 这个方法的优缺点

优点：

- 非常直观
- 很适合第一次理解题意
- 不容易写错

缺点：

- 额外开了新列表
- 严格来说不够“原地”

所以它更像是“帮助你理解”的第一步，而不是这题最推荐的答案。

## 5. 方法二：双指针原地修改（真正推荐）

### 5.1 双指针到底是谁

这题里最经典的双指针写法是：

- `fast`：负责扫描整个数组，看看当前元素是不是非零
- `slow`：负责指向“下一个应该放非零元素的位置”

你可以把它想成：

- `fast` 像一个巡逻员，到处看
- `slow` 像一个整理员，负责把合格元素放到前面

### 5.2 核心想法

当 `fast` 看到一个非零元素时：

- 就把它放到 `slow` 指向的位置
- 然后 `slow` 往后走一步

如果 `fast` 看到的是 0：

- 什么都不做
- 继续往后看

这样遍历完整个数组之后：

- 前面一段就是所有非零元素，顺序不变
- 后面剩余的位置，再统一补成 0

### 5.3 Python Tutor 版代码

```python
def move_zeroes(nums):
    slow = 0

    for fast in range(len(nums)):
        if nums[fast] != 0:
            nums[slow], nums[fast] = nums[fast], nums[slow]
            slow += 1

nums = [0, 1, 0, 3, 12]
move_zeroes(nums)
print(nums)
```

第一张图对应的是双指针法刚开始扫描时的状态：

![双指针法中 slow 等于 0 且 fast 开始扫描的 Python Tutor 视图](/img/leetcode-hot100/move-zeroes/two-pointers-step-01-start-scan.png)

这时你重点看：

- `slow = 0`
- `fast` 还在从左到右扫描整个数组
- `slow` 的意义不是“慢一点”，而是“下一个非零元素应该放的位置”

第二张图对应的是程序第一次真正把非零元素换到前面：

![双指针法中 fast 指到 1 并与 slow 位置交换的 Python Tutor 视图](/img/leetcode-hot100/move-zeroes/two-pointers-step-02-swap-one.png)

这张图里很关键的状态是：

- `fast = 1`
- `slow = 0`
- 数组已经从 `[0, 1, 0, 3, 12]` 变成 `[1, 0, 0, 3, 12]`

这正是双指针法第一次发挥作用的地方：

- `fast` 找到非零元素 `1`
- `slow` 指向最前面应该放它的位置
- 交换之后，非零元素就被稳定地挪到了前面

第三张图对应的是整个数组已经整理完成：

![双指针法中数组最终变成 1、3、12、0、0 的 Python Tutor 视图](/img/leetcode-hot100/move-zeroes/two-pointers-step-03-final-array.png)

现在你可以直接看到：

- 数组已经变成 `[1, 3, 12, 0, 0]`
- `slow = 3`，表示前面 3 个位置已经被非零元素占满
- 后面自然就剩下 0

把这三张图连起来看，你就会很清楚地理解双指针法的完整流程：

- `fast` 负责扫描
- `slow` 负责放置
- 每次遇到非零元素，就把它换到前面正确的位置

### 5.4 LeetCode 可提交版代码

```python
class Solution:
    def moveZeroes(self, nums):
        slow = 0

        for fast in range(len(nums)):
            if nums[fast] != 0:
                nums[slow], nums[fast] = nums[fast], nums[slow]
                slow += 1
```

### 5.5 每一行都在做什么

先看：

```python
slow = 0
```

表示：

- `slow` 一开始指向数组最前面
- 它表示“下一个非零元素应该放到哪里”

再看：

```python
for fast in range(len(nums)):
```

表示让 `fast` 从左到右扫描整个数组。

现在两个指针分工就很明确了：

- `fast`：负责看
- `slow`：负责放

接着判断：

```python
if nums[fast] != 0:
```

只有当 `fast` 指到的是非零元素时，才需要处理。

如果 `fast` 指到的是 0，就直接跳过。

再看最关键的一句：

```python
nums[slow], nums[fast] = nums[fast], nums[slow]
```

这是 Python 的交换写法。

意思是：

- 把 `fast` 看到的这个非零元素
- 放到 `slow` 应该放的位置

为什么交换就可以？

因为当 `slow` 和 `fast` 不同位置时：

- `slow` 位置往往是一个 0
- `fast` 位置是当前发现的非零元素

交换之后：

- 非零元素被放到了前面
- 0 被换到了后面一些的位置

最后：

```python
slow += 1
```

表示：

- 下一个非零元素应该去更后面的一个位置了

### 5.6 用例子手动走一遍

例子：

```text
[0, 1, 0, 3, 12]
```

开始：

- `slow = 0`

#### 第 1 轮：`fast = 0`

- `nums[0] = 0`
- 是 0，跳过
- `slow` 不动

数组还是：

```text
[0, 1, 0, 3, 12]
```

#### 第 2 轮：`fast = 1`

- `nums[1] = 1`
- 不是 0
- 交换 `nums[slow]` 和 `nums[fast]`

也就是交换：

- `nums[0]`
- `nums[1]`

交换后数组变成：

```text
[1, 0, 0, 3, 12]
```

然后：

- `slow = 1`

#### 第 3 轮：`fast = 2`

- `nums[2] = 0`
- 跳过

#### 第 4 轮：`fast = 3`

- `nums[3] = 3`
- 和 `nums[1]` 交换

数组变成：

```text
[1, 3, 0, 0, 12]
```

然后：

- `slow = 2`

#### 第 5 轮：`fast = 4`

- `nums[4] = 12`
- 和 `nums[2]` 交换

数组变成：

```text
[1, 3, 12, 0, 0]
```

最后结果就是正确答案。

### 5.7 为什么这种方法能保持顺序不变

因为 `fast` 是从左到右扫描的。

也就是说：

- 先看到的非零元素，先被放到前面
- 后看到的非零元素，后被放到前面

所以它们的相对顺序不会被破坏。

这也是这道题里双指针特别漂亮的地方。

### 5.8 这个方法的优缺点

优点：

- 真正原地修改
- 不需要额外等长数组
- 代码短，而且很经典

缺点：

- 第一次看时，`slow` 和 `fast` 的分工容易混

不过一旦理解了“扫描指针 + 放置指针”的配合，这类题会一下子顺很多。

## 6. 两种方法放在一起对比

### 6.1 额外数组法

- 好理解
- 适合第一步想思路
- 但不够符合“原地修改”的要求

### 6.2 双指针法

- 更符合题目要求
- 空间更省
- 是这题最推荐记住的版本

### 6.3 我建议你先记住哪个

这题我建议你：

- 思路上先理解额外数组法
- 最终一定记双指针法

因为这题真正的训练价值就在于：

- 学会让两个指针分工合作

## 7. 这题顺手学到的 Python 语法

### 7.1 `for fast in range(len(nums))`

让 `fast` 从左到右扫描整个数组。

### 7.2 `if nums[fast] != 0`

判断当前元素是不是非零。

### 7.3 Python 交换写法

```python
nums[slow], nums[fast] = nums[fast], nums[slow]
```

这是 Python 很常见的原地交换写法。

### 7.4 `append()`

额外数组法里会用来收集非零元素：

```python
non_zero.append(num)
```

### 7.5 `[0] * zero_count`

表示快速生成若干个 0：

```python
[0] * 2
```

结果是：

```python
[0, 0]
```

## 8. 这题最容易犯的错

### 8.1 只想着“把 0 放后面”，忘了顺序不能乱

这题不是随便重排数组。

非零元素原来的先后顺序必须保留。

### 8.2 忘了这题要求原地修改

你不能只 `return` 一个新列表，就当题目做完了。

LeetCode 这题要求的是：

- 直接改 `nums`
- 不需要返回值

### 8.3 不理解 `slow` 的含义

`slow` 不是“慢慢走”的意思而已，它真正代表的是：

- 下一个非零元素应该去的位置

一旦把这个含义看懂，代码就会清楚很多。

### 8.4 在 Python Tutor 里直接粘贴 LeetCode 模板

像这种：

```python
class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
```

对 Python Tutor 并不友好，还是建议优先用普通函数版本来观察数组怎么变化。

## 9. 最终推荐你先背下来的版本

如果你准备把这题作为双指针的入门模板题，我建议你最后记住这一版：

```python
class Solution:
    def moveZeroes(self, nums):
        slow = 0

        for fast in range(len(nums)):
            if nums[fast] != 0:
                nums[slow], nums[fast] = nums[fast], nums[slow]
                slow += 1
```

你最该记住的是这句人话：

- `fast` 找非零元素
- `slow` 放非零元素

## 10. 这题真正想让你学会什么

如果把这题放回整个 Hot100 系列里，它最核心的训练点其实是：

- 当你需要“原地整理数组”时，可以考虑双指针
- 两个指针不一定都在做同样的事，它们可以分工合作

这题其实不是只在练“移动零”，而是在帮你建立双指针的第一种经典模型：

- 一个负责扫描
- 一个负责放置

## 11. 这题刷完后，你应该带走什么

### 11.1 一句话复盘

这题的本质不是“把 0 搬走”，而是“按原顺序把非零元素稳定地放到数组前面”。

### 11.2 这题的关键词

- 双指针
- 数组
- 原地修改
- 稳定顺序

### 11.3 对你现在阶段最重要的一点

如果你现在刚开始接触双指针，这题最重要的不是背模板，而是先看懂：

- `slow` 到底代表什么
- 为什么交换不会破坏顺序
- 为什么这题不需要再额外开一个完整新数组

## 12. 给现在的自己留一个小练习

做完这篇后，可以自己再练 3 次：

### 练习 1

不看文章，自己重写额外数组法。

### 练习 2

不看文章，自己重写双指针法。

### 练习 3

把下面这些测试放进 Python Tutor 看：

```python
nums = [0, 1, 0, 3, 12]
move_zeroes(nums)
print(nums)

nums = [0]
move_zeroes(nums)
print(nums)

nums = [1, 0, 2, 0, 3]
move_zeroes(nums)
print(nums)
```

重点观察：

- `fast` 每一轮在看谁
- `slow` 每一轮指向哪里
- 数组是在哪几次交换后慢慢变成正确答案的

当你能把这些讲清楚时，这题就不只是做过，而是真的开始理解双指针了。

## 13. 下一步怎么学

如果你准备继续往下刷双指针专题，我建议你这样接：

1. 先自己把这题双指针版重敲一遍
2. 再去写同专题的下一题，比如 `11. 盛最多水的容器`
3. 后面一旦遇到“原地修改数组”“稳定整理元素”这类题，就先想双指针能不能做

系列导航在这里：[`/2026/03/19/leetcode-hot100-index/`](/2026/03/19/leetcode-hot100-index/)
