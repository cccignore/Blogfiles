---
title: Hot100 76 | 最小覆盖子串：可变长滑动窗口的代表题
slug: leetcode-hot100-76-minimum-window-substring
date: 2026-03-19 17:40:00
updated: 2026-03-19 17:40:00
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
description: 把 LeetCode Hot100 第 76 题讲给刷题新手，从题意理解、暴力思路到可变长滑动窗口，再到变量含义与代码细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 最小覆盖子串
  - Python
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-438-find-all-anagrams-in-a-string Hot100 438 | 找到字符串中所有字母异位词：定长滑动窗口 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-53-maximum-subarray Hot100 53 | 最大子数组和：暴力到动态规划入门 %}

如果说 `438. 找到字符串中所有字母异位词` 让你看到了“固定长度窗口”的写法，那这道 `最小覆盖子串` 就是在练滑动窗口里更核心、也更难的一种能力：

- 窗口什么时候算“已经够了”
- 窗口够了以后，怎么继续尽量缩小它

这就是可变长滑动窗口的代表题。

<!-- more -->

## 专栏导读

这题特别适合拿来检验你是不是真的开始理解滑动窗口。

因为前面两题更多是在练：

- 窗口里不能重复
- 窗口长度固定

而这一题更进一步，它会让你开始思考：

- 窗口满足条件后，不是结束，而是继续缩
- 只有不断缩，才能找到最短答案

这篇会重点讲清楚下面几件事：

1. 什么叫“覆盖”
2. 为什么这题不能只看字符种类，还要看数量
3. `need`、`missing`、`left`、`right` 到底各自代表什么
4. 为什么窗口满足条件后，要用 `while` 一直缩

## 1. 题目到底在说什么

题目给你两个字符串：

- `s`
- `t`

你要在 `s` 里找到一个最短的连续子串，使得它满足：

- 包含 `t` 里的所有字符
- 并且每个字符出现的次数也要足够

最后返回这个最短子串。

例如：

```text
s = "ADOBECODEBANC"
t = "ABC"
```

答案是：

```text
"BANC"
```

## 2. 什么叫“覆盖”

这是这题最关键、也最容易看漏的地方。

覆盖不只是说：

- 这几个字符种类都出现过

还要满足：

- 每个字符的数量也够

例如：

```text
t = "AABC"
```

那么一个合法窗口里必须有：

- 2 个 `A`
- 1 个 `B`
- 1 个 `C`

如果窗口里只有一个 `A`，那就还不算覆盖。

所以这题本质上不是集合问题，而是：

- 字符计数问题

## 3. 这题最容易误解的点

这题很多人第一次写挂，不是因为想不到滑动窗口，而是因为没完全看懂下面这两件事：

### 3.1 窗口“够了”不代表可以结束

当一个窗口第一次覆盖了 `t`，你不能立刻停下来。

因为题目要的是：

- 最短覆盖子串

所以窗口一旦够了，你还得继续尽可能缩小它，直到再缩就不够为止。

### 3.2 这题的窗口不是固定长度

和上一题 `438` 不同，这题窗口长度没有固定值。

它的行为是：

- 先扩张，直到够
- 再收缩，直到不够
- 然后继续扩张

这就是可变长滑动窗口的典型模式。

## 4. 先把题目翻译成人话

如果把这题翻译成最直白的话，其实就是：

- 右指针负责把新字符放进窗口
- 只要窗口还不够，就继续往右扩
- 一旦窗口够了，就让左指针尽量往右缩
- 在缩的过程中不断更新“目前最短答案”

你可以把它记成一句话：

- 右边负责凑齐，左边负责压缩

## 5. 最直观的想法：暴力枚举所有子串

### 5.1 为什么先讲暴力法

虽然这题最终一定要用滑动窗口，但对刷题新手来说，最稳的顺序永远是：

1. 先想一个肯定正确的做法
2. 再想怎么优化

所以这题最直接的想法就是：

- 枚举每个起点
- 枚举每个终点
- 截出所有子串
- 看它们是否覆盖 `t`
- 取最短的那个

当然，这样会很慢，但有助于你先把题目想清楚。

### 5.2 Python Tutor 版代码

```python
from collections import Counter

def min_window(s, t):
    need = Counter(t)
    best = ""

    for i in range(len(s)):
        window = Counter()

        for j in range(i, len(s)):
            window[s[j]] += 1

            ok = True
            for ch in need:
                if window[ch] < need[ch]:
                    ok = False
                    break

            if ok:
                cur = s[i:j + 1]
                if best == "" or len(cur) < len(best):
                    best = cur
                break

    return best

print(min_window("ADOBECODEBANC", "ABC"))
```

### 5.3 这个方法为什么能做出来

因为它最忠实地模拟了题目：

- 我就把每一个候选窗口都拿出来看看够不够

但问题也很明显：

- 枚举子串本来就多
- 每次还要再检查覆盖关系

所以它只适合理解题意，不适合作为正式答案。

## 6. 标准做法：可变长滑动窗口

### 6.1 先想清楚我们要维护什么

标准解法里会维护几个核心变量：

- `need`
- `missing`
- `left`
- `right`
- `start`
- `min_len`

你可以先粗略记住：

- `need`：窗口还差哪些字符
- `missing`：整体还差多少个字符
- `left` / `right`：窗口左右边界
- `start` / `min_len`：当前最优答案的位置和长度

### 6.2 为什么这里用 `missing` 很巧

很多人第一次做这题，会想用一个变量表示：

- 还差几种字符

但这不够精确。

因为：

- `AABC` 和 `ABC` 不一样
- 差 2 个 `A` 和差 1 个 `A` 是两回事

所以这里更稳的做法是：

- 直接记录“总共还差多少个字符”

这就是：

```python
missing = len(t)
```

## 7. Python Tutor 版代码

```python
from collections import Counter

def min_window(s, t):
    need = Counter(t)
    missing = len(t)
    left = 0
    start = 0
    min_len = float('inf')

    for right in range(len(s)):
        ch = s[right]

        if need[ch] > 0:
            missing -= 1
        need[ch] -= 1

        while missing == 0:
            if right - left + 1 < min_len:
                start = left
                min_len = right - left + 1

            left_char = s[left]
            need[left_char] += 1
            if need[left_char] > 0:
                missing += 1
            left += 1

    return "" if min_len == float('inf') else s[start:start + min_len]

print(min_window("ADOBECODEBANC", "ABC"))
```

## 8. LeetCode 可提交版代码

```python
from collections import Counter

class Solution:
    def minWindow(self, s, t):
        need = Counter(t)
        missing = len(t)
        left = 0
        start = 0
        min_len = float('inf')

        for right in range(len(s)):
            ch = s[right]

            if need[ch] > 0:
                missing -= 1
            need[ch] -= 1

            while missing == 0:
                if right - left + 1 < min_len:
                    start = left
                    min_len = right - left + 1

                left_char = s[left]
                need[left_char] += 1
                if need[left_char] > 0:
                    missing += 1
                left += 1

        return "" if min_len == float('inf') else s[start:start + min_len]
```

## 9. 每一行代码在做什么

先看初始化：

```python
need = Counter(t)
missing = len(t)
left = 0
start = 0
min_len = float('inf')
```

这里每个变量都很关键。

### 9.1 `need = Counter(t)`

表示：

- 目标字符串 `t` 里每个字符需要出现几次

例如：

```python
Counter("ABC")
```

得到：

```python
{'A': 1, 'B': 1, 'C': 1}
```

如果是：

```python
Counter("AABC")
```

那就是：

```python
{'A': 2, 'B': 1, 'C': 1}
```

### 9.2 `missing = len(t)`

表示：

- 从整体上看，窗口还差多少个字符

为什么是 `len(t)`？

因为一开始窗口是空的，`t` 里的每个字符都还没凑齐。

### 9.3 `left = 0`

表示窗口左边界从最左开始。

### 9.4 `start` 和 `min_len`

它们用来记录当前找到的最优答案：

- `start`：最短窗口的起点
- `min_len`：最短窗口的长度

为什么 `min_len` 初始化成：

```python
float('inf')
```

因为这样任何真正找到的窗口长度都会比它小，方便更新。

## 10. 右指针扩张部分到底在做什么

看这段：

```python
for right in range(len(s)):
    ch = s[right]

    if need[ch] > 0:
        missing -= 1
    need[ch] -= 1
```

这几句是右边扩张窗口的核心。

### 10.1 `ch = s[right]`

当前右指针指到的新字符。

### 10.2 `if need[ch] > 0:`

这一句非常关键。

它表示：

- 当前这个字符本来是我们还缺的

如果是这样，那它进入窗口之后，整体缺口就应该减 1：

```python
missing -= 1
```

### 10.3 `need[ch] -= 1`

这一句不管怎样都要执行。

它表示：

- 当前字符已经进入窗口了
- 所以“窗口还缺它多少”要减 1

这里最容易让人困惑的是：

- 为什么有时候 `need[ch]` 会变成负数？

答案是：

- 负数表示这个字符在窗口里已经“多出来了”

比如本来只需要 1 个 `A`，结果窗口里已经进来了 2 个，那第二个 `A` 进来后，`need['A']` 就可能变成 `-1`。

这不是错，反而是故意利用的状态信息。

## 11. 为什么 `while missing == 0` 这么重要

看这句：

```python
while missing == 0:
```

它表示：

- 只要当前窗口已经完整覆盖了 `t`
- 就继续尝试缩小它

为什么一定要用 `while`，而不是 `if`？

因为当窗口已经够了之后，往往还能连续缩很多步。

题目要的是：

- 最短覆盖子串

所以不能只是发现一次合法窗口就停，而要一路缩到刚好不合法为止。

这正是这题最核心的地方。

## 12. 收缩窗口部分每一行在做什么

先看更新答案：

```python
if right - left + 1 < min_len:
    start = left
    min_len = right - left + 1
```

这里的意思是：

- 当前窗口已经合法
- 所以它有资格和历史最优答案比较
- 如果更短，就更新最优解

注意：

- 必须先更新答案
- 再缩窗口

因为现在这个窗口是合法的，而下一步缩完可能就不合法了。

接着：

```python
left_char = s[left]
need[left_char] += 1
```

这表示：

- 左边这个字符准备离开窗口
- 所以窗口对它的“缺口”要加回来

这里为什么是 `+1`？

因为前面它进窗口时做的是 `-1`，现在出窗口，自然要反过来补回去。

然后：

```python
if need[left_char] > 0:
    missing += 1
```

这句非常关键。

它的意思是：

- 如果这个字符移走以后，`need[left_char]` 重新变成正数
- 就说明现在窗口真的开始缺它了
- 于是窗口不再满足覆盖条件

最后：

```python
left += 1
```

表示左边界正式右移一格。

## 13. 用经典示例一步一步模拟

还是：

```text
s = "ADOBECODEBANC"
t = "ABC"
```

开始时：

- `need = {'A': 1, 'B': 1, 'C': 1}`
- `missing = 3`
- `left = 0`

### 先不断扩张

右指针一路往右走：

- 遇到 `A`，`missing` 变成 2
- 遇到 `D`、`O`，这些不是必须字符，`missing` 不变
- 遇到 `B`，`missing` 变成 1
- 遇到 `E`，不变
- 遇到 `C`，`missing` 变成 0

这说明现在窗口已经第一次“够了”。

此时窗口大概是：

```text
"ADOBEC"
```

### 开始收缩

现在进入：

```python
while missing == 0:
```

因为窗口已经合法，所以开始尽量缩。

先记录它是一个候选答案。

然后尝试移走左边的 `A`。

一旦 `A` 被移走，窗口就又开始缺 `A`，所以：

- `missing` 重新变成 1

于是停止收缩，重新让右指针继续扩张。

### 后面继续扩张再收缩

程序会继续向右，直到再次凑齐 `A`、`B`、`C`。

最后当窗口来到：

```text
"BANC"
```

它既合法，又比之前更短，于是答案更新成 `BANC`。

再往后已经没有更优结果，所以最终返回：

```text
"BANC"
```

## 14. 这题和前两道滑动窗口题的区别是什么

你可以这样理解这三题：

### 14.1 `3. 无重复字符的最长子串`

- 窗口条件：不能有重复字符
- 窗口长度：不固定

### 14.2 `438. 找到字符串中所有字母异位词`

- 窗口条件：字符计数匹配
- 窗口长度：固定

### 14.3 `76. 最小覆盖子串`

- 窗口条件：必须覆盖目标计数
- 窗口长度：不固定
- 目标：在所有合法窗口里找最短的

所以它是目前这组三道窗口题里，综合性最强的一题。

## 15. 这题顺手学到的 Python 语法

### 15.1 `Counter`

用来统计字符频次。

### 15.2 `float('inf')`

表示正无穷，常用来做“最小值初始化”。

### 15.3 `while missing == 0`

表示只要窗口还合法，就持续收缩。

### 15.4 切片返回答案

```python
s[start:start + min_len]
```

根据记录下来的起点和长度，把最终子串截出来。

## 16. 这题最容易犯的错

### 16.1 把“覆盖”理解成只要字符种类对了就行

其实数量也必须够。

### 16.2 右边扩张时没有正确更新 `missing`

这会导致窗口明明已经够了，却还以为不够。

### 16.3 左边收缩时先移动 `left`，再处理字符

顺序写反很容易出 bug。

更稳的顺序是：

1. 先拿到 `left_char`
2. 先恢复 `need[left_char]`
3. 再判断窗口是否因此不够
4. 最后 `left += 1`

### 16.4 找到一个合法窗口就直接返回

这题要的是最短，不是第一个合法窗口。

## 17. 一句话复盘

这题的本质是：右边不断扩张把窗口凑够，左边不断收缩把窗口压短，在“已经覆盖”和“尽量最短”之间反复平衡。

## 18. 下一步怎么学

如果你准备离开滑动窗口专题，下一题 `53. 最大子数组和` 会带你进入另一个非常重要的方向：动态规划入门。
