---
title: Hot100 49 | 字母异位词分组：排序 key 与计数 key
slug: leetcode-hot100-49-group-anagrams
date: 2026-03-19 00:50:00
updated: 2026-03-19 00:50:00
tags:
  - LeetCode
  - Hot100
  - Python
  - 哈希表
  - 字符串
  - 排序
categories:
  - 算法刷题
  - LeetCode Hot100
  - 哈希表
description: 把 LeetCode Hot100 第 49 题讲给刷题新手，从题意理解到排序 key、计数 key 两种分组方式，再到 Python 语法细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 字母异位词分组
  - Python
  - 哈希表
  - 字符串
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-01-two-sum Hot100 01 | 两数之和：从暴力枚举到哈希表 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-128-longest-consecutive-sequence Hot100 128 | 最长连续序列：排序遍历与哈希集合 %}

如果说 `两数之和` 是“哈希表入门题”，那这道 `字母异位词分组` 就像是哈希表的下一小步：你开始不只是把“数字”当 key，而是学会把“一个字符串的特征”当 key。

<!-- more -->

## 专栏导读

这篇依然按“刚开始系统刷题的人”来写。

也就是说，我默认你现在可能是这样的状态：

- 知道 Python 基本语法，但很多已经不熟了
- 知道字典很好用，但还不太会自己设计 key
- 一看到字符串题，就容易不知道该从哪里下手

这题特别值得认真写，因为它会帮你建立一个很重要的意识：

- 哈希表不一定只能存数字
- 关键在于：你要先找到“能代表一类东西的统一特征”

这道题里，这个统一特征就是：

- 排序后的字符串
- 或者每个字母出现的次数

## 1. 题目到底在说什么

题目会给你一个字符串数组 `strs`，例如：

```text
["eat", "tea", "tan", "ate", "nat", "bat"]
```

它要你做的事情是：

- 把“字母异位词”分到同一组里
- 最后返回一个二维数组

比如上面的结果可以写成：

```text
[["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]
```

注意，这题有一个很容易忽略的点：

- 返回结果里，各个分组的顺序不重要
- 每个分组内部的顺序通常也不重要

所以你看到题目示例和你最后程序输出的顺序不一样，不一定是错的。

## 2. 什么叫“字母异位词”

“字母异位词”这个词第一次看会有点绕，但它的意思其实很简单：

- 两个字符串用到的字母完全一样
- 每个字母出现的次数也一样
- 只是顺序不同

例如：

- `eat` 和 `tea` 是字母异位词
- `tan` 和 `nat` 是字母异位词
- `bat` 自己单独一组

为什么 `eat` 和 `tea` 能分到一组？

因为它们都由这三个字母组成：

- `a`
- `e`
- `t`

只是排列顺序不一样。

## 3. 这题真正要你判断的是什么

这题表面上看是在问：

- 哪些字符串应该放一组？

但实际上它真正考的是：

- 你能不能给每个字符串找到一个“统一特征”
- 让同一组字符串拥有相同的特征

一旦你找到了这个统一特征，事情就会变简单很多：

- 用这个特征作为字典的 key
- 把原字符串塞进这个 key 对应的列表里

所以这题和第一题一样，本质上还是哈希表，只是这次 key 不再是数字，而是“字符串特征”。

## 4. 第一反应可以怎么想

如果你是第一次刷到这题，最自然的想法可能是：

- 拿第一个字符串去和后面的每个字符串比
- 判断它们是不是字母异位词
- 如果是，就分到一组

这个思路不是完全不对，但实现会比较麻烦，因为你还得反复写“两个字符串是否属于异位词”的判断逻辑，而且两两比较效率也不太好。

所以这题更好的方向不是“一个个比较”，而是：

- 直接给每个字符串算出一个代表身份的 key
- key 相同的，自动放到同一组

## 5. 方法一：排序后作为 key

### 5.1 核心想法

如果两个字符串是字母异位词，那么：

- 它们排序之后一定长得一样

例如：

```text
eat -> aet
tea -> aet
ate -> aet
```

你会发现：

- 虽然原字符串不同
- 但排完序之后都变成了 `aet`

这就说明，`aet` 可以作为它们这组的“统一身份证”。

同样地：

```text
tan -> ant
nat -> ant
```

所以 `ant` 可以作为另一组的 key。

### 5.2 为什么这个思路好用

因为这样一来，你就不用再两两比较字符串了。

你只需要对每个字符串做两件事：

1. 排序，得到它的 key
2. 把它放进字典里对应 key 的列表中

最后字典里的每个 value，就是一个分组。

### 5.3 先看 Python Tutor 版代码

这是最适合你放到 Python Tutor 里看的版本：

```python
def group_anagrams(strs):
    groups = {}

    for s in strs:
        key = ''.join(sorted(s))

        if key not in groups:
            groups[key] = []

        groups[key].append(s)

    return list(groups.values())

result = group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
print(result)
```

先看第一张图。这里程序刚开始处理第一个字符串 `eat`：

![排序法第一次处理 eat 并生成 key 为 aet 的 Python Tutor 视图](/img/leetcode-hot100/group-anagrams/sort-key-step-01-first-key.png)

你在这张图里重点看这几个变量：

- `s = "eat"`，说明当前正在处理的字符串是 `eat`
- `key = "aet"`，说明程序已经把它排序并重新拼成了统一 key
- `groups` 还是空字典，因为这一刻还没来得及真正把 `eat` 放进去

这一步非常关键，因为它第一次展示了这题的核心：

- 程序不是直接比较两个字符串像不像
- 而是先给当前字符串提取一个“统一特征”

再看第二张图。此时排序法已经把所有字符串处理完，并准备返回分组结果：

![排序法最终形成多个分组时的 Python Tutor 视图](/img/leetcode-hot100/group-anagrams/sort-key-step-02-final-groups.png)

这张图里最值得注意的是：

- 字典里已经出现了三个 key：`aet`、`ant`、`abt`
- `aet` 对应的是 `eat`、`tea`、`ate`
- `ant` 对应的是 `tan`、`nat`
- `abt` 对应的是 `bat`

这就说明排序法的整个流程已经跑通了：

- 每个字符串先转成排序后的 key
- 相同 key 自动归到同一组
- 最后返回所有分组

### 5.4 LeetCode 可提交版代码

```python
class Solution:
    def groupAnagrams(self, strs):
        groups = {}

        for s in strs:
            key = ''.join(sorted(s))

            if key not in groups:
                groups[key] = []

            groups[key].append(s)

        return list(groups.values())
```

### 5.5 每一行都在做什么

先看第一句：

```python
groups = {}
```

这表示创建一个空字典。

这个字典的设计是：

- 键 `key`：排序后的字符串
- 值 `value`：属于这一组的原字符串列表

比如后面它可能变成这样：

```python
{
    "aet": ["eat", "tea", "ate"],
    "ant": ["tan", "nat"],
    "abt": ["bat"]
}
```

再看循环：

```python
for s in strs:
```

意思是：

- 从数组 `strs` 里，一个一个取字符串出来
- 每次取出的当前字符串叫 `s`

例如第一次：

- `s = "eat"`

第二次：

- `s = "tea"`

再看这句最关键的：

```python
key = ''.join(sorted(s))
```

这是这道题最重要的一句。

它其实分成两步：

#### 第一步：`sorted(s)`

例如：

```python
sorted("eat")
```

结果不是字符串，而是列表：

```python
['a', 'e', 't']
```

也就是说，`sorted()` 会把字符排好序，但返回的是“字符列表”。

#### 第二步：`''.join(...)`

```python
''.join(['a', 'e', 't'])
```

结果才是：

```python
"aet"
```

所以：

```python
''.join(sorted("eat"))
```

最终得到：

```python
"aet"
```

这就是这个字符串的分组 key。

再看下面这句：

```python
if key not in groups:
```

意思是：

- 如果这个 key 还没有在字典里出现过
- 说明这是新的一组

那么就先给它准备一个空列表：

```python
groups[key] = []
```

然后不管它是不是新组，都会执行：

```python
groups[key].append(s)
```

意思是：

- 把当前字符串 `s` 追加到这个 key 对应的列表里

最后：

```python
return list(groups.values())
```

这里的 `groups.values()` 代表字典里所有的 value，也就是：

- `["eat", "tea", "ate"]`
- `["tan", "nat"]`
- `["bat"]`

这些分组列表。

但 `values()` 返回的是一个特殊视图对象，所以我们通常再用 `list(...)` 把它变成真正的列表。

### 5.6 拿示例一步一步模拟

示例：

```text
strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
```

一开始：

```python
groups = {}
```

#### 第 1 轮：处理 `eat`

- `s = "eat"`
- `sorted("eat") -> ['a', 'e', 't']`
- `''.join(...) -> "aet"`

所以：

```python
key = "aet"
```

此时字典里还没有 `aet`，所以先创建空列表，再放进去：

```python
groups = {
    "aet": ["eat"]
}
```

#### 第 2 轮：处理 `tea`

- `s = "tea"`
- 排序后还是 `"aet"`

说明它和 `eat` 属于同一组，于是：

```python
groups = {
    "aet": ["eat", "tea"]
}
```

#### 第 3 轮：处理 `tan`

- `s = "tan"`
- 排序后得到 `"ant"`

这是新 key，所以变成：

```python
groups = {
    "aet": ["eat", "tea"],
    "ant": ["tan"]
}
```

后面继续处理：

- `ate -> aet`
- `nat -> ant`
- `bat -> abt`

最终大致变成：

```python
{
    "aet": ["eat", "tea", "ate"],
    "ant": ["tan", "nat"],
    "abt": ["bat"]
}
```

最后返回这些 value 的列表即可。

### 5.7 这个方法的优缺点

优点：

- 非常直观
- 最容易想到
- 对刚开始刷题的人最友好

缺点：

- 每个字符串都要排序
- 排序会带来额外开销

不过对这题来说，它已经是非常优秀、非常常见的解法了。

## 6. 方法二：字母计数作为 key

### 6.1 为什么还可以继续优化

方法一的核心问题在于：

- 每个字符串都做了排序

如果字符串比较长，排序就不是最省事的操作。

而这题还有一个特殊条件：

- `strs[i]` 只包含小写字母

这句话很重要。

因为小写字母只有 26 个，所以我们完全可以不排序，而是直接统计：

- `a` 出现几次
- `b` 出现几次
- `c` 出现几次
- ...
- `z` 出现几次

只要两个字符串每个字母的计数都一样，它们就一定属于同一组。

### 6.2 用计数来理解“同一类字符串”

例如：

- `eat`
- `tea`
- `ate`

它们的字母统计都是：

- `a`：1 次
- `e`：1 次
- `t`：1 次
- 其他字母：0 次

所以它们的“计数特征”完全一样。

这就说明，我们也可以把“26 个字母出现次数”作为 key。

### 6.3 Python Tutor 版代码

```python
def group_anagrams(strs):
    groups = {}

    for s in strs:
        count = [0] * 26

        for ch in s:
            index = ord(ch) - ord('a')
            count[index] += 1

        key = tuple(count)

        if key not in groups:
            groups[key] = []

        groups[key].append(s)

    return list(groups.values())

result = group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
print(result)
```

第一张图对应的是计数法刚处理完 `eat` 里的几个字符之后：

![计数法中处理 eat 时 count 列表逐步变化的 Python Tutor 视图](/img/leetcode-hot100/group-anagrams/count-key-step-01-count-growing.png)

这里你可以观察到：

- `s = "eat"`
- 当前字符 `ch = "t"`
- `index = 19`，说明字母 `t` 被映射到了下标 19
- `count` 列表里，`a`、`e`、`t` 对应的位置已经变成了 1

这张图最想告诉你的就是：

- 计数法不是排序字符串
- 而是把“每个字母出现几次”记录在一个长度为 26 的列表里

第二张图对应的是计数法已经把这个列表转成元组 key：

![计数法中把 count 转成 tuple key 的 Python Tutor 视图](/img/leetcode-hot100/group-anagrams/count-key-step-02-tuple-key.png)

这时候你能直接看到：

- `count` 还是那个 26 长度的统计列表
- `key` 已经变成了 `tuple(count)`
- 之所以要这样做，是因为字典不能拿 `list` 当 key，但可以拿 `tuple` 当 key

也就是说，计数法真正的关键不是“把字母数出来”就结束，而是：

- 先统计出稳定的字母频次特征
- 再把这个特征转成可以放进字典里的 key

### 6.4 LeetCode 可提交版代码

```python
class Solution:
    def groupAnagrams(self, strs):
        groups = {}

        for s in strs:
            count = [0] * 26

            for ch in s:
                index = ord(ch) - ord('a')
                count[index] += 1

            key = tuple(count)

            if key not in groups:
                groups[key] = []

            groups[key].append(s)

        return list(groups.values())
```

### 6.5 每一行都在做什么

先看这句：

```python
count = [0] * 26
```

意思是：

- 创建一个长度为 26 的列表
- 初始值全是 0
- 用来记录 26 个小写字母的出现次数

比如：

- 下标 `0` 代表 `a`
- 下标 `1` 代表 `b`
- 下标 `2` 代表 `c`
- ...
- 下标 `25` 代表 `z`

再看：

```python
for ch in s:
```

表示遍历当前字符串里的每个字符。

如果 `s = "eat"`，那么 `ch` 会依次是：

- `e`
- `a`
- `t`

接着看最容易陌生的一句：

```python
index = ord(ch) - ord('a')
```

这里的 `ord()` 是 Python 内置函数，用来得到字符的编码值。

例如：

```python
ord('a')
ord('b')
ord('c')
```

它们会得到依次递增的数字。

所以：

```python
ord('a') - ord('a') = 0
ord('b') - ord('a') = 1
ord('c') - ord('a') = 2
```

这样就能把字符映射到 0 到 25 的下标。

例如处理 `e` 时：

```python
index = ord('e') - ord('a')
```

就会得到 4，于是执行：

```python
count[4] += 1
```

表示字母 `e` 出现了一次。

再看这句：

```python
key = tuple(count)
```

为什么不直接写：

```python
key = count
```

因为列表 `list` 不能作为字典的 key。

字典的 key 需要是“可哈希的”，也就是比较稳定、不能随便改的对象。

而：

- `list` 可变，不能当 key
- `tuple` 不可变，可以当 key

所以要把 `count` 转成元组：

```python
tuple(count)
```

这样它才能放进字典中。

### 6.6 用 `eat` 手动走一遍

当前字符串：

```text
s = "eat"
```

先创建：

```python
count = [0] * 26
```

遍历字符：

#### 处理 `e`

- `index = ord('e') - ord('a') = 4`
- `count[4] += 1`

#### 处理 `a`

- `index = ord('a') - ord('a') = 0`
- `count[0] += 1`

#### 处理 `t`

- `index = ord('t') - ord('a') = 19`
- `count[19] += 1`

这样 `count` 里就记录了：

- `a` 出现 1 次
- `e` 出现 1 次
- `t` 出现 1 次

再把它转成：

```python
key = tuple(count)
```

这个 key 就代表了 `eat` 的字母组成。

以后如果处理 `tea`、`ate`，它们生成的 key 也会完全一样，于是自然进入同一组。

### 6.7 这个方法的优缺点

优点：

- 不需要排序
- 更贴近这题底层特征

缺点：

- 对初学者来说更绕一点
- 需要理解 `ord()`、列表计数、`tuple` 作为 key

所以如果你现在刚开始刷题，我会建议你：

- 先彻底掌握排序法
- 再把计数法当成进阶理解

## 7. 两种方法放在一起对比

### 7.1 排序 key

- 更直观
- 更容易想到
- 更适合刚开始写题解和建立思路

### 7.2 计数 key

- 更像进一步优化
- 更能体现“特征设计”的能力
- 对理解哈希表 key 的本质很有帮助

### 7.3 我更推荐你先记住哪个

如果你现在还是 Hot100 前期，我建议你优先记住排序法。

原因很现实：

- 你需要先把题做出来
- 再把题讲清楚
- 最后再考虑更抽象、更进阶的优化写法

所以这题的“默认模板解”，我建议你先记排序法。

## 8. 这题顺手学到的 Python 语法

这题里有几个非常高频的 Python 写法，后面字符串题和哈希表题会反复见到。

### 8.1 `sorted(s)`

把字符串里的字符排序，但返回的是列表。

```python
sorted("tea")
```

结果是：

```python
['a', 'e', 't']
```

### 8.2 `''.join(...)`

把字符列表重新拼回字符串。

```python
''.join(['a', 'e', 't'])
```

结果是：

```python
"aet"
```

### 8.3 字典中“key 对应一个列表”

例如：

```python
groups["aet"] = ["eat", "tea"]
```

表示：

- key 是 `aet`
- 这一组里目前有 `eat` 和 `tea`

### 8.4 `append()`

向列表尾部加入一个新元素。

```python
groups[key].append(s)
```

意思是把当前字符串 `s` 放进对应分组。

### 8.5 `list(groups.values())`

把字典里所有 value 取出来，变成真正的列表。

### 8.6 `ord()`

把字符转成编码值，经常用于把字母映射到数组下标。

```python
ord('a')
ord('b')
```

### 8.7 `tuple()`

把列表转成元组。元组不可变，所以可以作为字典 key。

## 9. 这题最容易犯的错

### 9.1 以为输出顺序必须和示例一模一样

这题的分组顺序通常不重要，所以不要因为顺序不同就误以为自己错了。

### 9.2 忘了 `sorted(s)` 返回的是列表，不是字符串

所以你不能直接拿它当最终 key，通常还要：

```python
''.join(sorted(s))
```

### 9.3 在字典里还没建这个 key，就直接 `append`

错误风险写法：

```python
groups[key].append(s)
```

如果这个 key 之前不存在，就会报错。

所以要先判断：

```python
if key not in groups:
    groups[key] = []
```

### 9.4 计数法里直接拿 list 当 key

像这样不行：

```python
groups[count] = ...
```

因为 `count` 是列表，列表不能作为字典 key。

要改成：

```python
key = tuple(count)
```

### 9.5 在 Python Tutor 里直接粘贴 LeetCode 模板

像下面这种：

```python
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
```

对 Python Tutor 并不友好，尤其是刚开始时容易被 `List[str]` 这些类型标注分散注意力。

更推荐你使用前面的普通函数版本。

## 10. 最终推荐你先背下来的版本

如果你准备把这题作为自己的第二道模板题，我建议你先记住排序 key 版本：

```python
class Solution:
    def groupAnagrams(self, strs):
        groups = {}

        for s in strs:
            key = ''.join(sorted(s))

            if key not in groups:
                groups[key] = []

            groups[key].append(s)

        return list(groups.values())
```

这版的优点是：

- 思路清晰
- 结构稳定
- 以后复习时也最容易想起来

## 11. 这题真正想让你学会什么

如果把这题放回整个 Hot100 系列里，它最核心的训练点其实是：

- 不要只盯着字符串本身
- 要学会为一个对象设计“统一特征”

在这题里：

- 排序后的字符串是特征
- 字母计数结果也是特征

一旦你抓到这个点，就会发现很多分组题、分类题、本质上都是一样的套路：

- 先找 key
- 再用哈希表归类

## 12. 这题刷完后，你应该带走什么

### 12.1 一句话复盘

这题不是在“一个个比较字符串像不像”，而是在给每个字符串找统一 key，然后用字典自动完成分组。

### 12.2 这题的关键词

- 哈希表
- 字符串
- 排序
- 分组
- 特征设计

### 12.3 对你现在阶段最重要的一点

如果你还在刷题前期，不要强迫自己一上来就写最优、最炫的解法。

对这题来说，你最重要的是：

- 真正看懂为什么排序后可以变成同一个 key
- 能自己独立把排序法写出来
- 能对着例子说清楚字典是怎么一点点长出来的

## 13. 给现在的自己留一个小练习

做完这篇后，可以自己再练 3 次：

### 练习 1

不看文章，自己重新写出排序 key 版本。

### 练习 2

再自己尝试写出计数 key 版本。

### 练习 3

把下面这组数据放进 Python Tutor 里看：

```python
print(group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
print(group_anagrams([""]))
print(group_anagrams(["a"]))
```

重点观察：

- 当前字符串 `s` 每一轮分别是谁
- `key` 是怎么生成的
- `groups` 是怎么从空字典一步步变成多个分组的

当你能把这些讲清楚时，这题就不只是“做过”，而是真正开始掌握了。

## 14. 下一步怎么学

如果你准备继续往下刷，我建议你这样接：

1. 先把这题的排序法自己重敲一遍
2. 再去看导航页里同专题的下一题
3. 后面遇到“分组、分类、是否同类”的题，优先先想：能不能设计一个统一 key

系列导航在这里：[`/2026/03/19/leetcode-hot100-index/`](/2026/03/19/leetcode-hot100-index/)
