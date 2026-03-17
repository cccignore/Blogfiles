---
title: 用 ID3（信息增益）手算两道题：缺失值 + 连续特征
date: 2025-10-18 18:00:00
categories:
  - 技术教程
  - 机器学习
tags:
  - 决策树
  - ID3
  - 信息增益
  - 数学
  - 机器学习
mathjax: true
description: 记录课堂两道 ID3 信息增益练习的完整手算过程，覆盖缺失值处理、连续特征阈值枚举和重点公式，便于复习查阅
---

# 用 ID3（信息增益）手算两道题：缺失值 + 连续特征

这篇笔记把课堂两道练习题按 ID3 的信息增益法完整手算一遍，并把用到的公式、处理缺失值与连续特征的做法先讲清楚。熵一律用 $\log_2$。

---

## 0. 算法与公式

数值全部保留 4 位小数；所有对数底为 2。

### 0.1 熵（Entropy）

二分类数据集 $S$ 中，正例比例为 $p$、反例为 $1-p$：
$$
\mathrm{Ent}(S)
= -\sum_{c\in\{+,-\}} p_c \log_2 p_c
= -p\log_2 p - (1-p)\log_2(1-p)
$$

### 0.2 信息增益（Information Gain）

离散特征 $A$ 取值集合为 $\mathcal{V}$，划分后子集为 $S_v$：
$$
\begin{aligned}
\mathrm{Gain}(S,A)
&= \mathrm{Ent}(S) \\
&\quad - \sum_{v\in\mathcal{V}} \frac{|S_v|}{|S|}\,\mathrm{Ent}(S_v)
\end{aligned}
$$

### 0.3 连续特征阈值

连续特征按数值升序，取相邻中点为候选 $\theta$。划分 $L=\{x\le\theta\},R=\{x>\theta\}$：
$$
\begin{aligned}
\mathrm{Gain}(S,\theta)
&= \mathrm{Ent}(S) \\
&\quad - \frac{|L|}{|S|}\mathrm{Ent}(L)
     - \frac{|R|}{|S|}\mathrm{Ent}(R)
\end{aligned}
$$

### 0.4 缺失值处理

特征 $A$ 的缺失样本（记为“？”）**不参与熵计算**；但在信息增益加权时，依旧按照 $\tfrac{|S_v|}{|S|}$ 使用其在原集合中的占比。这与课堂的写法一致。

---

## 1) 题一：离散特征 + 缺失值

目标变量：是否去健身房（是/否），共 9 条。

| 序号 | 天气 | 是否有课 | 距离 | 是否去健身房 |
| ---: | --- | -------- | --- | ------------ |
| 1 | 晴 | 有 | 近 | 是 |
| 2 | 晴 | 无 | 远 | 否 |
| 3 | 雨 | ? | 近 | 是 |
| 4 | 阴 | 有 | 中 | 否 |
| 5 | 晴 | 无 | 近 | 是 |
| 6 | 雨 | 无 | 远 | 否 |
| 7 | 阴 | ? | 中 | 是 |
| 8 | 雨 | 有 | 近 | 是 |
| 9 | 阴 | 无 | 远 | 否 |

### 1.0 数据集熵

总体正例 5、反例 4：
$$
\begin{aligned}
\mathrm{Ent}(D)
&= -\frac{5}{9}\log_2\frac{5}{9} - \frac{4}{9}\log_2\frac{4}{9} \\
&= 0.9911
\end{aligned}
$$

### 1.1 特征「是否有课」

- 有：$\{1,4,8\}$（2 是 / 1 否）
  $$
  \mathrm{Ent}(D_{\text{有}})
  = -\frac{2}{3}\log_2\frac{2}{3} - \frac{1}{3}\log_2\frac{1}{3}
  = 0.9183
  $$
- 无：$\{2,5,6,9\}$（1 是 / 3 否）
  $$
  \mathrm{Ent}(D_{\text{无}})
  = -\frac{1}{4}\log_2\frac{1}{4} - \frac{3}{4}\log_2\frac{3}{4}
  = 0.8113
  $$

缺失样本两条忽略于熵，但加权仍按 $\tfrac{3}{9}$ 与 $\tfrac{4}{9}$：
$$
\sum_v \frac{|D_v|}{|D|}\mathrm{Ent}(D_v)
= \frac{3}{9}\cdot 0.9183 + \frac{4}{9}\cdot 0.8113
= 0.6667
$$
$$
\boxed{\mathrm{Gain}(D,\text{有课}) = 0.9911 - 0.6667 = 0.3244}
$$

### 1.2 特征「天气」

三种天气的熵完全相同：
$$
\mathrm{Ent}(D_{\text{晴}})=\mathrm{Ent}(D_{\text{阴}})=\mathrm{Ent}(D_{\text{雨}})=0.9183
$$
$$
\sum_v \frac{|D_v|}{|D|}\mathrm{Ent}(D_v)
= \frac{3}{9}\cdot 0.9183 \times 3
= 0.9183
$$
$$
\boxed{\mathrm{Gain}(D,\text{天气}) = 0.9911 - 0.9183 = 0.0728}
$$

### 1.3 特征「距离」

- 近：$\{1,3,5,8\}$（4/0）
  $$
  \mathrm{Ent}(D_{\text{近}})=0
  $$
- 中：$\{4,7\}$（1/1）
  $$
  \mathrm{Ent}(D_{\text{中}})= -\tfrac{1}{2}\log_2\tfrac{1}{2}-\tfrac{1}{2}\log_2\tfrac{1}{2}=1
  $$
- 远：$\{2,6,9\}$（0/3）
  $$
  \mathrm{Ent}(D_{\text{远}})=0
  $$

$$
\sum_v \frac{|D_v|}{|D|}\mathrm{Ent}(D_v)
= \frac{4}{9}\cdot 0 + \frac{2}{9}\cdot 1 + \frac{3}{9}\cdot 0
= 0.2222
$$
$$
\boxed{\mathrm{Gain}(D,\text{距离}) = 0.9911 - 0.2222 = 0.7689}
$$

**根节点选择**：距离（信息增益最大）。

- 距离＝近 → 纯“是” → **是**；
- 距离＝远 → 纯“否” → **否**；
- 距离＝中 → $\{4:\text{否},7:\text{是}\}$ 各一，可直接多数表决为“是”。

---

## 2) 题二：连续特征 + 离散特征

目标变量：是否购买保险（是/否），共 8 条。

| 序号 | 年龄 | 是否有车 | 购保 |
| ---: | ---: | -------- | --- |
| 1 | 25 | 否 | 否 |
| 2 | 30 | 是 | 是 |
| 3 | 35 | 否 | 否 |
| 4 | 40 | 是 | 是 |
| 5 | 45 | 否 | 是 |
| 6 | 50 | 是 | 是 |
| 7 | 55 | 否 | 是 |
| 8 | 60 | 是 | 是 |

### 2.0 数据集熵

总体正例 6、反例 2：
$$
\begin{aligned}
\mathrm{Ent}(D)
&= -\frac{6}{8}\log_2\frac{6}{8} - \frac{2}{8}\log_2\frac{2}{8} \\
&= 0.8113
\end{aligned}
$$

### 2.1 连续特征「年龄」阈值枚举

排序值：25, 30, 35, 40, 45, 50, 55, 60，对应候选中点
$\theta \in \{27.5, 32.5, 37.5, 42.5, 47.5, 52.5, 57.5\}$。逐一计算：

1. **$\theta=27.5$**
   $$
   \mathrm{Ent}(L) = 0,\quad
   \mathrm{Ent}(R) = -\frac{6}{7}\log_2\frac{6}{7}-\frac{1}{7}\log_2\frac{1}{7}=0.5917
   $$
   $$
   \mathrm{Gain}(D,27.5) = 0.8113 - \frac{1}{8}\cdot 0 - \frac{7}{8}\cdot 0.5917 = \boxed{0.2936}
   $$

2. **$\theta=32.5$**
   $$
   \mathrm{Ent}(L) = 1,\quad
   \mathrm{Ent}(R) = -\frac{5}{6}\log_2\frac{5}{6}-\frac{1}{6}\log_2\frac{1}{6}=0.6500
   $$
   $$
   \mathrm{Gain}(D,32.5) = 0.8113 - \frac{2}{8}\cdot 1 - \frac{6}{8}\cdot 0.6500 = \boxed{0.0738}
   $$

3. **$\theta=37.5$**
   $$
   \mathrm{Ent}(L) = -\frac{1}{3}\log_2\frac{1}{3}-\frac{2}{3}\log_2\frac{2}{3}=0.9183,\quad
   \mathrm{Ent}(R) = 0
   $$
   $$
   \mathrm{Gain}(D,37.5) = 0.8113 - \frac{3}{8}\cdot 0.9183 - \frac{5}{8}\cdot 0 = \boxed{0.4669}
   $$

4. **$\theta=42.5$**
   $$
   \mathrm{Ent}(L) = 1,\quad \mathrm{Ent}(R) = 0
   $$
   $$
   \mathrm{Gain}(D,42.5) = 0.8113 - \frac{4}{8}\cdot 1 - \frac{4}{8}\cdot 0 = \boxed{0.3113}
   $$

5. **$\theta=47.5$**
   $$
   \mathrm{Ent}(L) = -\frac{3}{5}\log_2\frac{3}{5}-\frac{2}{5}\log_2\frac{2}{5}=0.9710,\quad
   \mathrm{Ent}(R) = 0
   $$
   $$
   \mathrm{Gain}(D,47.5) = 0.8113 - \frac{5}{8}\cdot 0.9710 - \frac{3}{8}\cdot 0 = \boxed{0.2044}
   $$

6. **$\theta=52.5$**
   $$
   \mathrm{Ent}(L) = -\frac{4}{6}\log_2\frac{4}{6}-\frac{2}{6}\log_2\frac{2}{6}=0.9183,\quad
   \mathrm{Ent}(R) = 0
   $$
   $$
   \mathrm{Gain}(D,52.5) = 0.8113 - \frac{6}{8}\cdot 0.9183 - \frac{2}{8}\cdot 0 = \boxed{0.1226}
   $$

7. **$\theta=57.5$**
   $$
   \mathrm{Ent}(L) = -\frac{5}{7}\log_2\frac{5}{7}-\frac{2}{7}\log_2\frac{2}{7}=0.8631,\quad
   \mathrm{Ent}(R) = 0
   $$
   $$
   \mathrm{Gain}(D,57.5) = 0.8113 - \frac{7}{8}\cdot 0.8631 - \frac{1}{8}\cdot 0 = \boxed{0.0560}
   $$

最大信息增益出现在 $\boxed{\theta^\* = 37.5}$（0.4669）。

### 2.2 特征「是否有车」

- 有车：$\{2,4,6,8\}$（全为“是”）
  $$
  \mathrm{Ent}(D_{\text{是}}) = 0
  $$
- 无车：$\{1,3,5,7\}$（2 是 / 2 否）
  $$
  \mathrm{Ent}(D_{\text{否}}) = 1
  $$

$$
\sum_v \frac{|D_v|}{|D|}\mathrm{Ent}(D_v)
= \frac{4}{8}\cdot 0 + \frac{4}{8}\cdot 1
= 0.5
$$
$$
\boxed{\mathrm{Gain}(D,\text{有车}) = 0.8113 - 0.5 = 0.3113}
$$

**根节点选择**：先按年龄 $\le 37.5$ 划分。得到的决策规则：

- 年龄 $> 37.5$ ⇒ 纯“是” ⇒ **购买**；
- 年龄 $\le 37.5$ ⇒ 再看是否有车：有车 ⇒ **购买**；无车 ⇒ **不购买**。

---

## 3. 写作与复习提示

1. 先写出 $\mathrm{Ent}(D)$ 的原式、代入分数，再给小数值。
2. 每个候选划分都写出 $\mathrm{Ent}(\cdot)$ 的分式表达、加权和以及最终信息增益。
3. 连续特征必须列出全部相邻中点阈值并逐一计算。
4. 缺失值：熵忽略缺失样本，加权仍按总体比例。

---

公式与步骤这样展开后，复现课堂计算会更直接。如果需要决策树示意图或 PDF 版本，也可以继续完善文章。
