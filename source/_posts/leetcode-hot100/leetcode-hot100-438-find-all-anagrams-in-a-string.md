---
title: Hot100 438 | 找到字符串中所有字母异位词：定长滑动窗口
slug: leetcode-hot100-438-find-all-anagrams-in-a-string
date: 2026-03-19 17:30:00
updated: 2026-03-19 17:30:00
tags:
  - LeetCode
  - Hot100
  - Python
  - 滑动窗口
  - 字符串
categories:
  - 算法刷题
  - LeetCode Hot100
  - 滑动窗口
description: 把 LeetCode Hot100 第 438 题讲给刷题新手，从题意理解、排序比较到定长滑动窗口，再到变量含义与代码细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 字母异位词
  - 滑动窗口
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-03-longest-substring-without-repeating-characters Hot100 3 | 无重复字符的最长子串：从暴力到滑动窗口 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-76-minimum-window-substring Hot100 76 | 最小覆盖子串：可变长滑动窗口的代表题 %}

如果说上一题 `无重复字符的最长子串` 是滑动窗口里“窗口内容不能重复”的入门题，那这道 `找到字符串中所有字母异位词` 就是在练另一种非常重要的窗口模型：

- 窗口长度固定
- 重点比较窗口里的字符计数是否匹配

<!-- more -->

## 专栏导读

这题特别适合帮你建立“定长窗口”思维。

因为你会第一次明确感受到：

- 有些窗口题不是一直自由伸缩
- 而是窗口长度从头到尾都应该固定住
- 每次只是让右边进来一个字符、左边出去一个字符

这篇会重点讲清楚下面几件事：

1. 什么叫“字母异位词”
2. 为什么这题天然是定长窗口
3. 为什么暴力排序比较虽然能做，但不够好
4. `need`、`window`、`right - m + 1` 这些最容易混的细节到底是什么意思

## 1. 题目到底在说什么

题目给你两个字符串：

- `s`
- `p`

你要在 `s` 中找出所有和 `p` 互为字母异位词的子串，并返回这些子串的起始下标。

例如：

```text
s = "cbaebabacd"
p = "abc"
```

答案是：

```text
[0, 6]
```

因为：

- `s[0:3] = "cba"`
- `s[6:9] = "bac"`

这两段虽然顺序不同，但它们和 `abc` 用到的字母完全一样。

## 2. 什么叫“字母异位词”

“字母异位词”的意思非常简单：

- 两个字符串长度相同
- 字母种类相同
- 每个字母出现次数也相同
- 只是排列顺序不同

例如：

- `abc` 和 `cba` 是字母异位词
- `abc` 和 `bac` 也是
- `abc` 和 `abb` 就不是

所以你可以把这题理解成：

- 在 `s` 里找到所有长度和 `p` 一样、并且字母计数完全一致的窗口

## 3. 这题最容易看漏的点

这题有两个容易混淆的点：

### 3.1 长度必须相同

如果一个子串想和 `p` 互为异位词，那它长度必须和 `p` 一样。

例如 `p = "abc"`，那候选子串就只能是长度 3。

这件事非常关键，因为它直接决定了：

- 这题天然是“定长滑动窗口”

### 3.2 不只是字符种类相同，还要次数相同

例如：

- `abc` 和 `abb`

虽然都包含 `a` 和 `b`，但计数不同，所以不能算字母异位词。

也就是说，这题真正比较的是：

- 字符频次表

## 4. 先把题目翻译成人话

如果把这题翻译成最直白的话，其实就是：

- 在字符串 `s` 上放一个长度固定为 `len(p)` 的窗口
- 让这个窗口从左往右滑过去
- 每滑到一个位置，就看看窗口里的字符组成是不是和 `p` 一样
- 如果一样，就把这个位置记下来

这其实已经把滑动窗口的本质说出来了。

## 5. 方法一：每次截一段再排序比较

### 5.1 最直观的想法

第一次做这题时，最自然的思路一定是：

1. 每次从 `s` 里截一个长度等于 `len(p)` 的子串
2. 把这个子串排序
3. 再把 `p` 也排序
4. 如果两个排序结果相同，就说明这是一个异位词窗口

这思路完全合理，而且非常容易理解。

### 5.2 Python Tutor 版代码

```python
def find_anagrams(s, p):
    ans = []
    m = len(p)

    for i in range(len(s) - m + 1):
        if sorted(s[i:i + m]) == sorted(p):
            ans.append(i)

    return ans

print(find_anagrams("cbaebabacd", "abc"))
```

### 5.3 LeetCode 可提交版代码

```python
class Solution:
    def findAnagrams(self, s, p):
        ans = []
        m = len(p)

        for i in range(len(s) - m + 1):
            if sorted(s[i:i + m]) == sorted(p):
                ans.append(i)

        return ans
```

### 5.4 每一行代码在做什么

先看：

```python
m = len(p)
```

这里的 `m` 表示：

- 目标窗口长度

因为任何和 `p` 互为异位词的子串，长度都必须是 `m`。

再看循环：

```python
for i in range(len(s) - m + 1):
```

这里的 `i` 表示：

- 当前窗口的起点

为什么是 `len(s) - m + 1`？

因为如果窗口长度是 `m`，最后一个合法起点只能到：

```text
len(s) - m
```

再往后就不够截出完整窗口了。

接着：

```python
sorted(s[i:i + m]) == sorted(p)
```

这句是在做两件事：

1. 取出当前长度为 `m` 的子串
2. 把它排序后和 `p` 的排序结果比较

如果一样，就说明它们字母组成相同，于是：

```python
ans.append(i)
```

把当前起点加进答案。

### 5.5 为什么这个方法不够好

它的问题不在于错，而在于：

- 每次滑一个位置，都重新截子串、重新排序

这会产生大量重复工作。

所以我们要进一步优化成真正的定长滑动窗口。

## 6. 方法二：定长滑动窗口（真正推荐）

### 6.1 先想明白窗口应该怎么动

因为窗口长度必须固定等于 `len(p)`，所以这题的窗口不是自由伸缩的，而是：

- 右边进一个字符
- 左边就要在合适的时候出去一个字符

你可以把它想成一个长度固定的框，贴着字符串一路往右滑。

框里的字符内容会变化，但框的宽度不变。

### 6.2 核心想法

我们维护两个计数表：

- `need`：目标字符串 `p` 的字符计数
- `window`：当前窗口里的字符计数

每走一步：

1. 右边新字符进入窗口
2. 如果窗口长度超过 `m`，左边最老的字符移出窗口
3. 当窗口长度正好是 `m` 时，比较 `window` 和 `need`
4. 如果完全一样，就说明当前窗口是一个异位词

## 7. 定长滑动窗口 Python Tutor 版代码

```python
from collections import Counter

def find_anagrams(s, p):
    ans = []
    need = Counter(p)
    window = Counter()
    m = len(p)

    for right in range(len(s)):
        window[s[right]] += 1

        if right >= m:
            left_char = s[right - m]
            window[left_char] -= 1
            if window[left_char] == 0:
                del window[left_char]

        if window == need:
            ans.append(right - m + 1)

    return ans

print(find_anagrams("cbaebabacd", "abc"))
```

## 8. LeetCode 可提交版代码

```python
from collections import Counter

class Solution:
    def findAnagrams(self, s, p):
        ans = []
        need = Counter(p)
        window = Counter()
        m = len(p)

        for right in range(len(s)):
            window[s[right]] += 1

            if right >= m:
                left_char = s[right - m]
                window[left_char] -= 1
                if window[left_char] == 0:
                    del window[left_char]

            if window == need:
                ans.append(right - m + 1)

        return ans
```

## 9. 每一行代码在做什么

先看：

```python
need = Counter(p)
window = Counter()
m = len(p)
```

这里三个变量都非常重要：

- `need`：目标计数表，表示 `p` 里每个字符应该出现几次
- `window`：当前窗口里的字符计数表
- `m`：窗口固定长度

例如：

```python
Counter("abc")
```

会得到：

```python
{'a': 1, 'b': 1, 'c': 1}
```

再看循环：

```python
for right in range(len(s)):
```

这里的 `right` 表示：

- 当前新进入窗口的字符位置

每走一步，先把它加进窗口：

```python
window[s[right]] += 1
```

这句一定要先做，因为当前字符已经被窗口框住了。

接着看：

```python
if right >= m:
```

为什么判断 `right >= m`？

因为：

- 当 `right < m` 时，窗口长度还没超过 `m`
- 当 `right >= m` 时，说明现在窗口长度已经变成 `m + 1`

这时候必须让最左边那个旧字符离开。

离开的字符是谁？

```python
left_char = s[right - m]
```

这里非常容易写懵，但其实它的意思很简单：

- 当前窗口想保持长度 `m`
- 当右边进来一个字符后，多出来的那个最老字符，正好就是 `right - m` 位置上的字符

然后把它从计数表里减掉：

```python
window[left_char] -= 1
```

为什么后面还要写：

```python
if window[left_char] == 0:
    del window[left_char]
```

因为如果某个字符计数已经变成 0，保留在 `Counter` 里会影响和 `need` 的直接比较。

删除掉以后，`window == need` 的比较会更干净、更稳妥。

最后看：

```python
if window == need:
    ans.append(right - m + 1)
```

如果当前窗口计数和目标计数完全一样，就说明当前窗口就是一个异位词。

这里为什么记录的是：

```python
right - m + 1
```

因为：

- `right` 是窗口右边界
- 窗口长度是 `m`
- 所以窗口起点就是 `right - m + 1`

这一步很容易写错成 `right`，一定要注意。

## 10. 用经典示例一步一步模拟

示例：

```text
s = "cbaebabacd"
p = "abc"
```

所以：

- `m = 3`
- `need = {'a':1,'b':1,'c':1}`

### 第 1 轮：`right = 0`

加入字符 `c`。

这时：

- `window = {'c': 1}`

窗口长度还没到 3，所以先不比较。

### 第 2 轮：`right = 1`

加入字符 `b`。

这时：

- `window = {'c': 1, 'b': 1}`

仍然没到长度 3。

### 第 3 轮：`right = 2`

加入字符 `a`。

这时：

- `window = {'c': 1, 'b': 1, 'a': 1}`

窗口长度刚好是 3，并且：

```text
window == need
```

所以记录起点：

```text
2 - 3 + 1 = 0
```

答案加入：

```text
[0]
```

### 第 4 轮：`right = 3`

加入字符 `e`，此时窗口长度超过 3，所以要把最左边旧字符移出去。

旧字符是谁？

- `s[3 - 3] = s[0] = 'c'`

移出之后，窗口不再匹配 `abc`。

### 一路继续滑

后面窗口继续右移，直到：

- 右边来到 `8`

此时窗口会变成：

```text
"bac"
```

这又和 `abc` 计数一致，所以再加入一个起点：

```text
6
```

最终答案就是：

```text
[0, 6]
```

## 11. 为什么这题是定长窗口模板题

你可以把这题总结成一个非常标准的模板：

1. 先让右边进一个字符
2. 如果窗口太长，就让左边出去一个字符
3. 当窗口长度刚好等于目标长度时，检查条件

这个模板以后在很多题里都会反复出现。

和上一题 `无重复字符的最长子串` 的区别是：

- 上一题是“窗口内容必须合法”，所以窗口长度可变
- 这一题是“窗口长度固定”，只比较窗口内容是否匹配

## 12. 这题顺手学到的 Python 语法

### 12.1 `Counter`

`Counter` 可以帮你快速统计字符出现次数。

### 12.2 `window[s[right]] += 1`

表示当前字符进入窗口后，计数加 1。

### 12.3 `del window[left_char]`

表示当某个字符计数已经变成 0 时，把它从字典里彻底删掉。

### 12.4 `right - m + 1`

这是固定长度窗口里很常见的起点公式。

## 13. 这题最容易犯的错

### 13.1 忘记窗口长度必须固定等于 `len(p)`

一旦窗口长度乱了，这题就不再是异位词比较了。

### 13.2 左边字符移出后，没有正确更新计数

这会导致 `window` 和实际窗口内容不一致。

### 13.3 命中时记录下标写错

记录的应该是窗口起点：

```python
right - m + 1
```

不是 `right`。

### 13.4 不理解为什么要删除 0 计数字符

如果不删，有时 `Counter` 比较会因为多出一个计数为 0 的键而看起来不够干净，初学阶段很容易把自己绕晕。

## 14. 一句话复盘

这题的本质不是“逐个子串去排序”，而是维护一个长度固定为 `len(p)` 的窗口，并持续比较窗口字符计数和目标字符计数是否一致。

## 15. 下一步怎么学

下一题 `76. 最小覆盖子串` 依然是滑动窗口，但窗口不再固定，而是会在“满足条件后尽量缩小”。这会是你进入更复杂窗口题的重要一步。
