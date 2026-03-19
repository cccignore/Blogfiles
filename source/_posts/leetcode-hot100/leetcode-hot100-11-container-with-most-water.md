---
title: Hot100 11 | 盛最多水的容器：暴力枚举到双指针夹逼
slug: leetcode-hot100-11-container-with-most-water
date: 2026-03-19 16:10:00
updated: 2026-03-19 16:10:00
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
description: 把 LeetCode Hot100 第 11 题讲给刷题新手，从题意理解、暴力枚举到双指针夹逼思路，再到 Python 语法细节全部拆开说明
keywords:
  - LeetCode
  - Hot100
  - 盛最多水的容器
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

> 系列导航：{% post_link leetcode-hot100/leetcode-hot100-index LeetCode Hot100 刷题导航（系列导航） %} · 上一篇：{% post_link leetcode-hot100/leetcode-hot100-283-move-zeroes Hot100 283 | 移动零：额外数组到双指针原地修改 %} · 下一篇：{% post_link leetcode-hot100/leetcode-hot100-15-3sum Hot100 15 | 三数之和：排序去重与双指针 %}

这道题是双指针专题里非常经典的一题。和 `移动零` 那种“整理数组”的题不同，`盛最多水的容器` 更像是在训练你：如何让两个指针一左一右往中间夹，并且每一步都不是瞎移动，而是有理由地移动。

<!-- more -->

## 专栏导读

如果你现在刚刷到双指针，很可能会有这种感觉：

- 我知道要用左右两个指针
- 但我不知道为什么该移动左边，而不是右边
- 更不知道这种移动为什么不会漏答案

这题最重要的价值就在这里：

- 它会第一次逼着你想清楚“双指针为什么能缩小范围却不漏最优解”

所以这篇会讲得比普通题解更慢一点，重点不是只给出结论，而是把“为什么”讲透。

## 1. 题目到底在说什么

题目给你一个数组 `height`。

- 下标表示横坐标位置
- `height[i]` 表示在位置 `i` 竖起一条高度为 `height[i]` 的线

你要从这些线里选两条，和 x 轴一起围成一个容器，看看最多能装多少水。

题目示意图如下：

![LeetCode 第 11 题官方示意图](/img/leetcode-hot100/container-most-water/question-11.jpg)

例如：

```text
height = [1,8,6,2,5,4,8,3,7]
```

答案是：

```text
49
```

## 2. 这题到底怎么算“装水量”

这是你第一眼必须看懂的东西。

假设你选中了两条线：

- 左边在位置 `left`
- 右边在位置 `right`

那么能装多少水，不是看更高的那条线，而是看更矮的那条线。

为什么？

因为水会从矮的一侧漏出去，所以真正能装的高度只能由较短板决定。

因此面积公式是：

```text
宽度 × 高度
```

其中：

- 宽度 = `right - left`
- 高度 = `min(height[left], height[right])`

所以：

```text
面积 = (right - left) * min(height[left], height[right])
```

这就是整道题的核心公式。

## 3. 先用例子把公式算熟

例如：

```text
height = [1,8,6,2,5,4,8,3,7]
```

如果我们选：

- 左边下标 `1`，高度 `8`
- 右边下标 `8`，高度 `7`

那么：

- 宽度 = `8 - 1 = 7`
- 高度 = `min(8, 7) = 7`

所以面积是：

```text
7 * 7 = 49
```

这就是题目示例里的最大值。

## 4. 第一反应可以怎么想

如果你第一次看到这题，最自然的想法一定是：

- 把所有两条线的组合都试一遍
- 每次都算出面积
- 取最大值

这个思路完全正确，而且非常适合作为第一步。

所以我们先从暴力法讲起。

## 5. 方法一：暴力枚举

### 5.1 核心想法

用两层循环：

- 外层枚举左边那条线
- 内层枚举右边那条线
- 每一对都算一次面积
- 维护最大值

### 5.2 Python Tutor 版代码

```python
def max_area(height):
    ans = 0

    for i in range(len(height)):
        for j in range(i + 1, len(height)):
            width = j - i
            h = min(height[i], height[j])
            area = width * h
            ans = max(ans, area)

    return ans

result = max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
print(result)
```

### 5.3 LeetCode 可提交版代码

```python
class Solution:
    def maxArea(self, height):
        ans = 0

        for i in range(len(height)):
            for j in range(i + 1, len(height)):
                width = j - i
                h = min(height[i], height[j])
                area = width * h
                ans = max(ans, area)

        return ans
```

### 5.4 每一行都在做什么

先看：

```python
ans = 0
```

表示当前记录到的最大面积，初始为 0。

再看两层循环：

```python
for i in range(len(height)):
    for j in range(i + 1, len(height)):
```

这表示：

- `i` 负责左边那条线
- `j` 负责右边那条线
- `j` 从 `i + 1` 开始，是为了避免重复和自己配对

接下来：

```python
width = j - i
h = min(height[i], height[j])
area = width * h
```

就是直接套公式。

最后：

```python
ans = max(ans, area)
```

表示如果当前面积更大，就更新答案。

### 5.5 这个方法的优缺点

优点：

- 最容易想到
- 公式理解最清楚

缺点：

- 两层循环，时间复杂度是 `O(n^2)`
- 题目数据一大就不够理想

所以这题真正想考的，显然不是暴力法。

## 6. 方法二：双指针夹逼（真正推荐）

### 6.1 先说结论做法

最经典的写法是：

- 一个指针 `left` 放在最左边
- 一个指针 `right` 放在最右边
- 每次计算当前这两个边界围成的面积
- 然后移动“更矮的那一边”

这四句你可能现在还只是记住了，但最重要的是要理解最后一句：

- 为什么一定移动更矮的那一边？

### 6.2 为什么不能移动更高的那一边

先记住一个事实：

- 当前面积由 `较短板` 决定

假设当前：

- 左边高 2
- 右边高 8

那么容器高度其实只有 2。

这时如果你移动右边那根更高的线，会发生什么？

- 宽度一定变小
- 高度上限仍然最多只有 2，因为左边那根短板没变

也就是说：

- 宽度变小了
- 控制高度的短板没改善

那面积不可能变得更优。

所以当左边更矮时，移动右边通常没有希望。

真正有希望的是：

- 把较短板那一边往里移动
- 看能不能遇到更高的线

这才有机会弥补宽度缩小带来的损失。

### 6.3 用人话总结这个关键逻辑

每走一步：

- 宽度一定会缩小
- 所以你唯一还能争取的，就是让短板变高

而短板是谁，就移动谁。

这就是双指针这题的核心思想。

## 7. 双指针 Python Tutor 版代码

```python
def max_area(height):
    left = 0
    right = len(height) - 1
    ans = 0

    while left < right:
        width = right - left
        h = min(height[left], height[right])
        area = width * h
        ans = max(ans, area)

        if height[left] < height[right]:
            left += 1
        else:
            right -= 1

    return ans

result = max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
print(result)
```

## 8. LeetCode 可提交版代码

```python
class Solution:
    def maxArea(self, height):
        left = 0
        right = len(height) - 1
        ans = 0

        while left < right:
            width = right - left
            h = min(height[left], height[right])
            area = width * h
            ans = max(ans, area)

            if height[left] < height[right]:
                left += 1
            else:
                right -= 1

        return ans
```

## 9. 每一行都在做什么

先看初始化：

```python
left = 0
right = len(height) - 1
ans = 0
```

表示：

- `left` 在最左边
- `right` 在最右边
- `ans` 记录最大面积

为什么一开始放两端？

因为这样宽度最大。

双指针法的想法就是：

- 先从最大宽度出发
- 再一步步缩小范围
- 但每一步都尽量保留产生最优解的可能性

再看循环条件：

```python
while left < right:
```

只要左右指针还没相遇，就还能形成一个容器。

接着算当前面积：

```python
width = right - left
h = min(height[left], height[right])
area = width * h
ans = max(ans, area)
```

这部分和暴力法其实一样，都是套面积公式。

真正区别在下一步移动：

```python
if height[left] < height[right]:
    left += 1
else:
    right -= 1
```

意思是：

- 谁更矮，就移动谁

如果两边一样高，移动哪边都可以，这里代码默认移动右边。

## 10. 用示例一步一步模拟

示例：

```text
height = [1,8,6,2,5,4,8,3,7]
```

### 第 1 轮

- `left = 0`，高度 1
- `right = 8`，高度 7
- 宽度 = 8
- 高度 = `min(1, 7) = 1`
- 面积 = 8

因为左边更矮，所以移动 `left`。

### 第 2 轮

- `left = 1`，高度 8
- `right = 8`，高度 7
- 宽度 = 7
- 高度 = 7
- 面积 = 49

这时答案更新成 49。

因为右边更矮，所以移动 `right`。

后面继续缩，虽然还会算出很多面积，但都不会超过 49。

最终答案就是：

```text
49
```

## 11. 为什么双指针不会漏答案

这是这题最难、也最值得你真正理解的一部分。

假设当前左右两边是：

- 左边更矮
- 右边更高

当前面积已经由左边这个短板决定了。

如果你保留左边不动，只移动右边：

- 宽度会缩小
- 短板高度还是左边那根

所以不可能比当前更有希望。

只有移动短板那边，才有可能：

- 遇到更高的线
- 让容器高度上限提升

所以“双指针每次移动短板”不是拍脑袋的技巧，而是由面积公式推出来的。

## 12. 两种方法放在一起对比

### 12.1 暴力法

- 好理解
- 适合第一步确认公式
- 但复杂度高

### 12.2 双指针法

- 更符合题目要求
- 复杂度降到 `O(n)`
- 真正考察的是“为什么移动短板”

### 12.3 我建议你先记住哪个

这题我建议你：

- 先把暴力法用来彻底理解公式
- 最后一定把双指针法当成正式答案记住

因为这题真正的模板价值，就是双指针夹逼。

## 13. 这题顺手学到的 Python 语法

### 13.1 `min(a, b)`

返回两个值里更小的那个。

```python
min(8, 7)
```

结果是：

```python
7
```

### 13.2 `max(a, b)`

返回两个值里更大的那个。

```python
ans = max(ans, area)
```

### 13.3 `while left < right`

只要两个指针没相遇，就继续循环。

### 13.4 指针移动

```python
left += 1
right -= 1
```

这是双指针题里最常见的写法。

## 14. 这题最容易犯的错

### 14.1 把高度误写成两边高度之和

这题高度不是：

```text
height[left] + height[right]
```

而是：

```text
min(height[left], height[right])
```

### 14.2 不理解为什么移动短板

如果只是死记“移动短板”，下次很容易忘。

真正要记的是：

- 宽度一定缩小
- 唯一可能补回来的是高度
- 所以必须尝试替换短板

### 14.3 把这题当成普通排序题或贪心题乱做

这题本质上是双指针题，不需要排序。

### 14.4 在 Python Tutor 里直接粘贴 LeetCode 模板

像这种：

```python
class Solution:
    def maxArea(self, height: List[int]) -> int:
```

对 Python Tutor 并不友好，最好还是优先用普通函数版本观察指针怎么动。

## 15. 最终推荐你先背下来的版本

如果你准备把这题作为双指针的代表题，我建议你最后记住这一版：

```python
class Solution:
    def maxArea(self, height):
        left = 0
        right = len(height) - 1
        ans = 0

        while left < right:
            width = right - left
            h = min(height[left], height[right])
            area = width * h
            ans = max(ans, area)

            if height[left] < height[right]:
                left += 1
            else:
                right -= 1

        return ans
```

你最该记住的人话版本是：

- 先算当前面积
- 再移动更短的那块板

## 16. 这题真正想让你学会什么

如果把这题放回整个 Hot100 系列里，它最核心的训练点其实是：

- 双指针不只是“两个变量一起动”
- 真正关键是：每一步移动都要有依据

这题帮你建立的，就是双指针里非常重要的一种思维：

- 缩小范围时，怎么保证不漏最优解

## 17. 这题刷完后，你应该带走什么

### 17.1 一句话复盘

这题的本质不是“枚举两个边界”，而是“在宽度必然缩小的前提下，只移动短板，去争取更高的有效高度”。

### 17.2 这题的关键词

- 双指针
- 数组
- 夹逼
- 短板效应

### 17.3 对你现在阶段最重要的一点

如果你现在刚开始进入双指针专题，这题最重要的不是背代码，而是把下面这句话真正想明白：

- 为什么移动长板没有意义，而移动短板才有机会变好

## 18. 给现在的自己留一个小练习

做完这篇后，可以自己再练 3 次：

### 练习 1

不看文章，自己重写暴力法。

### 练习 2

不看文章，自己重写双指针法。

### 练习 3

把下面这些测试放进 Python Tutor 看：

```python
print(max_area([1, 8, 6, 2, 5, 4, 8, 3, 7]))
print(max_area([1, 1]))
print(max_area([4, 3, 2, 1, 4]))
```

重点观察：

- `left` 和 `right` 每一步分别在哪
- 当前面积是怎么计算出来的
- 为什么下一步移动的是短板那一边

当你能把这三点讲清楚时，这题就不只是“做过”，而是真的理解了双指针。

## 19. 下一步怎么学

如果你准备继续往下刷双指针专题，我建议你这样接：

1. 先把这题双指针版自己重敲一遍
2. 再去写同专题的下一题，比如 `15. 三数之和`
3. 以后再看到“左右边界 + 最大值 / 最优值”这类题时，优先先想双指针夹逼能不能做

系列导航在这里：[`/2026/03/19/leetcode-hot100-index/`](/2026/03/19/leetcode-hot100-index/)
