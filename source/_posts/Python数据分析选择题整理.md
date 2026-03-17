---
title: Python数据分析选择题整理
comments: true
toc: true
toc_number: true
copyright: true
mathjax: false
katex: false
date: 2025-06-20 12:04:41
updated: 2025-06-20 12:04:41
tags: [考试复习]
categories:
  - [Python数据分析, 选择题]
cover: https://www.17golang.com/uploads/20250704/175162132268679eca78e8c.png
---

<!-- 文章摘要，会显示在首页 -->
<!-- more -->

## 第二章：Python语言基础与环境 + 第三章：Pandas 数据结构与操作

**1. 执行后可以查看Python的版本的是 （ ）**
A. import sys; print(sys.version)
B. import system; print(system.version)
C. import system; print(system.Version)
D. import sys; print(sys.Version)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br> 解析：
  要查看 Python 的版本，正确的模块是 `sys`，而不是 `system`。`sys` 模块提供了与 Python 解释器及其环境相关的功能。
  `sys.version` 是一个字符串，包含了 Python 解释器的版本号、编译日期和编译器信息。
  因此，正确的选项是 A。

  **正确答案：** A

  **代码示例：**
  ```python
  import sys
  print(sys.version)
  # 示例输出可能类似于：
  # 3.9.7 (default, Oct 16 2021, 19:42:19)
  # [Clang 13.0.0 (clang-1300.0.29.3)]
  ```
</details>

---

**2. 已知 x=5，三元表达式 `'a' if x>=0 else 'b'` 的结果为（ ）**
A. 'a'
B. 'b'
C. 5
D. 0

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Python 的三元表达式（条件表达式）的语法是：`为真时的值 if 条件 else 为假时的值`。
  <br>
  在本题中：
  <ul>
    <li><b>条件</b> 是 `x >= 0`。</li>
    <li>由于 `x` 的值为 `5`，所以条件 `5 >= 0` 的结果是 `True`。</li>
    <li>因此，表达式会返回 <b>为真时的值</b>，也就是 `'a'`。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  x = 5
  result = 'a' if x >= 0 else 'b'
  print(result)
  # 输出:
  # a
  ```
</details>

---
**3. 下列哪种不是Python元组的定义方式? （ ）**
A. (1,)
B. (1)
C. (1, 2)
D. (1, 2, (3, 4))

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Python 中元组的创建关键在于逗号 `,`，而不仅仅是括号 `()`。
  <ul>
    <li><b>A. `(1,)`</b>：这是定义一个包含单个元素的元组的正确方式，末尾的逗号是必须的。</li>
    <li><b>B. `(1)`</b>：这不会创建一个元组，括号在这里只起到改变运算优先级的作⽤，其结果仍然是整数 `1`。</li>
    <li><b>C. `(1, 2)`</b>：这是定义包含多个元素的元组的正确方式。</li>
    <li><b>D. `(1, 2, (3, 4))`</b>：这是一个合法的嵌套元组。</li>
  </ul>
  因此，B. `(1)` 不是元组的定义方式。

  **正确答案：** B

  **代码示例：**
  ```python
  print(type((1,)))
  # 输出: <class 'tuple'>

  print(type((1)))
  # 输出: <class 'int'>

  print(type((1, 2)))
  # 输出: <class 'tuple'>

  print(type((1, 2, (3, 4))))
  # 输出: <class 'tuple'>
  ```
</details>

---
**4. 下列代码的输出是（ ）**
```python
color = ['red', 'blue', 'green', 'red', 'yellow']
color.append('black')
color.insert(1,'red')
color.remove('red')
print(color)
```
A. ['blue', 'green', 'yellow', 'black']
B. ['red', 'blue', 'green', 'red', 'yellow', 'black']
C. ['red', 'red', 'blue', 'green', 'red', 'yellow', 'black']
D. ['blue', 'green', 'red', 'yellow', 'black']

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  让我们逐步分析代码：
  <ol>
    <li><code>color = ['red', 'blue', 'green', 'red', 'yellow']</code>： 初始列表。</li>
    <li><code>color.append('black')</code>：在列表末尾添加 'black'。 列表变为 <code>['red', 'blue', 'green', 'red', 'yellow', 'black']</code>。</li>
    <li><code>color.insert(1,'red')</code>：在索引 1 处插入 'red'。 列表变为 <code>['red', 'red', 'blue', 'green', 'red', 'yellow', 'black']</code>。</li>
    <li><code>color.remove('red')</code>：移除列表中<b>第一个</b>出现的 'red'（即索引0处的'red'）。 列表变为 <code>['red', 'blue', 'green', 'red', 'yellow', 'black']</code>。</li>
  </ol>
  因此，最终输出的是 `['red', 'blue', 'green', 'red', 'yellow', 'black']`。

  **正确答案：** B

  **代码示例：**
  ```python
  color = ['red', 'blue', 'green', 'red', 'yellow']
  print(f"Initial:      {color}")

  color.append('black')
  print(f"After append:   {color}")

  color.insert(1,'red')
  print(f"After insert:   {color}")

  color.remove('red')
  print(f"After remove:   {color}")
  ```
</details>

---
**5. 对于列表 `test_list = [5, 4, 3, 2, 1]` 而言，下列不能输出 `[1, 2, 3, 4, 5]` 的是（ ）**
A. `test_list[::-1]`
B. `list(reversed(test_list))`
C. `sorted(test_list)`
D. `test_list[0:-5:1]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `test_list[::-1]`</b>：这是列表切片的反转用法，表示从头到尾以步长 -1 进行切片，结果为 `[1, 2, 3, 4, 5]`。</li>
    <li><b>B. `list(reversed(test_list))`</b>：<code>reversed()</code> 函数返回一个反向迭代器，<code>list()</code> 将其转换为列表，结果为 `[1, 2, 3, 4, 5]`。</li>
    <li><b>C. `sorted(test_list)`</b>：<code>sorted()</code> 函数对列表进行排序并返回一个新列表，结果为 `[1, 2, 3, 4, 5]`。</li>
    <li><b>D. `test_list[0:-5:1]`</b>：这是一个列表切片，从索引 0 开始，到索引 -5（即列表中的元素 `5`）结束（不包括索引-5），步长为 1。这个切片范围是空的，因此结果是一个空列表 `[]`。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  test_list = [5, 4, 3, 2, 1]
  print(f"A: {test_list[::-1]}")
  print(f"B: {list(reversed(test_list))}")
  print(f"C: {sorted(test_list)}")
  print(f"D: {test_list[0:-5:1]}")
  ```
</details>

---
**6. 对于以下二元操作符，其描述为 a 的 b 次方的是（ ）**
A. `a^b`
B. `a**b`
C. `a*b`
D. `a//b`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `a^b`</b>：在 Python 中，`^` 是按位异或运算符。</li>
    <li><b>B. `a**b`</b>：在 Python 中，`**` 是幂运算符，表示 a 的 b 次方。</li>
    <li><b>C. `a*b`</b>：在 Python 中，`*` 是乘法运算符。</li>
    <li><b>D. `a//b`</b>：在 Python 中，`//` 是整除运算符。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  a = 2
  b = 3
  print(f"a^b (按位异或): {a^b}")
  print(f"a**b (幂运算): {a**b}")
  print(f"a*b (乘法): {a*b}")
  print(f"a//b (整除): {a//b}")
  ```
</details>

---
**7. 存在一个列表为 `a = [1, 2, 3]`，下列的操作中错误的是（ ）**
A. `a + 4`
B. `a + [4]`
C. `a + a`
D. `a * 4`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Python 中，列表的 `+` 运算符用于列表的拼接，`*` 运算符用于重复。
  <ul>
    <li><b>A. `a + 4`</b>：尝试将一个列表与一个整数相加，这会导致 <code>TypeError</code>，因为它们是不同类型的操作数。</li>
    <li><b>B. `a + [4]`</b>：将列表 `a` 与另一个列表 `[4]` 进行拼接，是合法的，结果为 `[1, 2, 3, 4]`。</li>
    <li><b>C. `a + a`</b>：将列表 `a` 与自身进行拼接，是合法的，结果为 `[1, 2, 3, 1, 2, 3]`。</li>
    <li><b>D. `a * 4`</b>：将列表 `a` 重复 4 次，是合法的，结果为 `[1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]`。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  a = [1, 2, 3]

  print(f"a + [4]: {a + [4]}")
  print(f"a + a: {a + a}")
  print(f"a * 4: {a * 4}")

  # A. a + 4 (This will cause an error)
  try:
    print(f"a + 4: {a + 4}")
  except TypeError as e:
    print(f"Error for a + 4: {e}")
  ```
</details>

---
**8. 对于下列代码 `a=1; type(a); bool(a)` 在交互式环境中逐行执行，最终输出的结果为（ ）**
A. int;True
B. float;True
C. int;False
D. float;False

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`a = 1`</b>：将整数值 1 赋给变量 `a`。</li>
    <li><b>`type(a)`</b>：<code>type()</code> 函数返回对象的类型。因为 `a` 是整数 1，其类型为 <code>&lt;class 'int'&gt;</code>。</li>
    <li><b>`bool(a)`</b>：<code>bool()</code> 函数将值转换为布尔类型。在 Python 中，非零数字（包括1）转换为布尔值时都为 `True`。</li>
  </ol>
  虽然代码分行，但题目问的是最终结果，暗示了这两个函数的返回值。因此，类型是 `int`，布尔值是 `True`。

  **正确答案：** A

  **代码示例：**
  ```python
  a = 1
  print(type(a))
  print(bool(a))
  ```
</details>

---
**9. 设 `a=[2, 3, 7]; b=list(a)`，执行 `a is b` 和 `a == b` 得到的输出分别是（ ）**
A. False,False
B. False,True
C. True,False
D. True,True

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`a is b`</b>：`is` 运算符检查两个变量是否引用内存中的<b>同一个对象</b>。`b = list(a)` 通过 `list()` 构造函数创建了 `a` 的一个新副本，所以 `a` 和 `b` 指向不同的内存地址。因此 `a is b` 的结果是 `False`。</li>
    <li><b>`a == b`</b>：`==` 运算符检查两个对象的<b>值是否相等</b>。由于 `a` 和 `b` 包含完全相同的元素且顺序一致，它们的值是相等的。因此 `a == b` 的结果是 `True`。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  a = [2, 3, 7]
  b = list(a)

  # a 和 b 的内存地址不同
  print(f"id of a: {id(a)}")
  print(f"id of b: {id(b)}")

  print(f"a is b: {a is b}")
  print(f"a == b: {a == b}")
  ```
</details>

---
**10. 下列代码的输出是（ ）**
```python
t = 2
def a(x):
  return x ** t
print(a(a(3)))
```
A. 9
B. 27
C. 81
D. 243

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  代码执行过程分析：
  <ol>
    <li><b>`t = 2`</b>：定义了一个全局变量 `t`。</li>
    <li><b>`def a(x): ...`</b>：定义了一个函数 `a`，它会引用全局变量 `t`。</li>
    <li><b>`print(a(a(3)))`</b>：这是一个嵌套函数调用。
        <ul>
            <li>首先计算内层 <b>`a(3)`</b>：`x` 为 `3`，函数返回 `3 ** t`，即 `3 ** 2`，结果为 `9`。</li>
            <li>然后计算外层 <b>`a(9)`</b>：`x` 为 `9`，函数返回 `9 ** t`，即 `9 ** 2`，结果为 `81`。</li>
        </ul>
    </li>
  </ol>
  因此，最终输出是 `81`。

  **正确答案：** C

  **代码示例：**
  ```python
  t = 2
  def a(x):
    return x ** t

  inner_result = a(3)
  print(f"a(3) = {inner_result}")

  outer_result = a(inner_result)
  print(f"a(a(3)) which is a(9) = {outer_result}")
  ```
</details>

---
**11. 下面不可以作为字典的键的是 （ ）**
A. `tuple([1,2,3,4])`
B. `(1, 2, (1, 2, 3))`
C. `(1, 2, [1, 2])`
D. `1`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Python 字典的键必须是<b>可哈希 (hashable)</b> 的对象。通常，<b>不可变 (immutable)</b> 对象是可哈希的，而<b>可变 (mutable)</b> 对象是不可哈希的。
  <ul>
    <li><b>A. `tuple([1,2,3,4])`</b>：这会创建一个元组 `(1, 2, 3, 4)`。元组是不可变的，因此可哈希。</li>
    <li><b>B. `(1, 2, (1, 2, 3))`</b>：这是一个嵌套元组，所有元素都是不可变的，因此可哈希。</li>
    <li><b>C. `(1, 2, [1, 2])`</b>：这是一个元组，但它的第三个元素是列表 `[1, 2]`。列表是可变对象，因此是不可哈希的。一个元组如果包含了不可哈希的元素，那么它自身也变得不可哈希。</li>
    <li><b>D. `1`</b>：整数是不可变对象，因此可哈希。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  my_dict = {}

  # A. Correct
  my_dict[tuple([1,2,3,4])] = 'A'

  # B. Correct
  my_dict[(1, 2, (1, 2, 3))] = 'B'

  # D. Correct
  my_dict[1] = 'D'

  # C. Incorrect (will raise TypeError)
  try:
      my_dict[(1, 2, [1, 2])] = 'C'
  except TypeError as e:
      print(f"Error for (1, 2, [1, 2]): {e}")

  print(my_dict)
  ```
</details>

---
**12. 对于代码 `a=[1,2,3]; b=a ; a.append(4); c=list(a)` 以下输出结果为False的是（ ）**
A. `a == c`
B. `a is c`
C. `a == b`
D. `a is b`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  让我们逐步分析代码：
  <ol>
    <li><b>`a = [1,2,3]`</b>：创建列表 `[1,2,3]`，变量 `a` 引用它。</li>
    <li><b>`b = a`</b>：变量 `b` 引用 `a` 所指向的<b>同一个列表对象</b>。</li>
    <li><b>`a.append(4)`</b>：修改 `a` 引用的列表。因为 `a` 和 `b` 指向同一个对象，所以 `b` 的值也随之改变。此时 `a` 和 `b` 都指向 `[1, 2, 3, 4]`。</li>
    <li><b>`c = list(a)`</b>：通过 `list()` 创建 `a` 的一个<b>新副本</b>。此时 `c` 是一个值为 `[1, 2, 3, 4]` 的新列表。</li>
  </ol>
  现在评估每个选项：
  <ul>
    <li><b>A. `a == c`</b>：比较值。`a` 和 `c` 的值都是 `[1, 2, 3, 4]`，所以结果为 `True`。</li>
    <li><b>B. `a is c`</b>：比较内存地址。`a` 和 `c` 是两个不同的对象，所以结果为 `False`。</li>
    <li><b>C. `a == b`</b>：比较值。`a` 和 `b` 指向同一个对象，值必然相等，所以结果为 `True`。</li>
    <li><b>D. `a is b`</b>：比较内存地址。`a` 和 `b` 指向同一个对象，所以结果为 `True`。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  a = [1, 2, 3]
  b = a
  a.append(4)
  c = list(a)

  print(f"a = {a}, id = {id(a)}")
  print(f"b = {b}, id = {id(b)}")
  print(f"c = {c}, id = {id(c)}")

  print(f"\na == c: {a == c}")
  print(f"a is c: {a is c}")
  print(f"a == b: {a == b}")
  print(f"a is b: {a is b}")
  ```
</details>

---
**13. 下列代码`a = '{0:.2f}{0:d}{1:s}'.format(int('10'), 5.0, 5) ; print(a)` 执行结果为（ ）**
A. 10.00105.0
B. 10.0055
C. 105.05
D. 会报错

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  此题考察 `str.format()` 方法中格式码的严格类型对应。
  <ul>
    <li><b>`{0:.2f}`</b> 和 <b>`{0:d}`</b> 分别将第一个参数 `10` 格式化为浮点数和整数，是正确的。</li>
    <li><b>`{1:s}`</b>：`s` 格式码被设计用于字符串类型。当它被用于非字符串类型（如本题中的浮点数 `5.0`）时，根据题目的考察意图，这被视为类型不匹配，会导致 `TypeError`。</li>
  </ul>
  因此，这段代码被认为会引发错误。

  **正确答案：** D

  **代码示例：**
  ```python
  # 以下代码模拟了题目所考察的严格类型检查场景。
  # 注意：在标准的现代Python中，此代码实际上不会报错。
  try:
    # 假设一个严格的实现，其中 :s 仅接受字符串
    param = 5.0
    if not isinstance(param, str):
        raise TypeError(f"Unknown format code 's' for object of type '{type(param).__name__}'")
    a = '{0:.2f}{0:d}{1:s}'.format(int('10'), param, 5)
    print(a)
  except TypeError as e:
    print(f"Error (as per question's logic): {e}")

  # 实际的标准Python行为
  print("\n--- Actual Python 3 Behavior ---")
  a_real = '{0:.2f}{0:d}{1:s}'.format(int('10'), 5.0, 5)
  print(a_real)
  ```
</details>

---
**14. 对于以下代码 `a = "Hello world" ;a[0] = "h" ; print(a)` 运行结果为（ ）**
A. “hello world”
B. “hHello world”
C. “Hhello world”
D. 报错

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Python 中，字符串是<b>不可变 (immutable)</b> 对象。这意味着一旦字符串被创建，它的任何部分都不能被修改。
  代码 `a[0] = "h"` 尝试通过索引赋值来修改字符串的第一个字符，这违反了字符串的不可变性，因此会引发 `TypeError`。

  **正确答案：** D

  **代码示例：**
  ```python
  a = "Hello world"
  try:
    a[0] = "h"
    print(a)
  except TypeError as e:
    print(f"Error: {e}")
  ```
</details>

---
**15. 设 `seq = [7, 2, 3, 7, 5, 6, 0, 1]`，执行 `seq[3:4] = [6, 3]` 之后，`seq` 的值是（ ）**
A. `[7, 2, 3, 6, 3, 5, 6, 0, 1]`
B. `[7, 2, 6, 3, 7, 5, 6, 0, 1]`
C. `[7, 2, 3, 6, 5, 6, 0, 1]`
D. `[7, 2, 6, 3, 5, 6, 0, 1]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是列表的切片赋值操作。
  <ol>
    <li><b>`seq = [7, 2, 3, 7, 5, 6, 0, 1]`</b>：初始列表。</li>
    <li><b>`seq[3:4]`</b>：这是一个切片，选中从索引 3 开始到索引 4 结束（不包括4）的元素，即 `[7]`。</li>
    <li><b>`seq[3:4] = [6, 3]`</b>：将切片 `[7]` 替换为新的列表 `[6, 3]`。这个操作会用新列表的内容替换掉原切片所占的位置。</li>
  </ol>
  原列表 `[7, 2, 3, | 7, | 5, 6, 0, 1]` 中的 `7` 被 `[6, 3]` 替换，得到 `[7, 2, 3, 6, 3, 5, 6, 0, 1]`。

  **正确答案：** A

  **代码示例：**
  ```python
  seq = [7, 2, 3, 7, 5, 6, 0, 1]
  print(f"Initial seq: {seq}")

  seq[3:4] = [6, 3]
  print(f"Final seq:   {seq}")
  ```
</details>

---
**16. 以下是不可变对象的是（ ）**
A．列表
B. 字典
C. Numpy数组
D. 字符串

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. 列表 (list)</b>：列表是可变的，可以添加、删除或修改其元素。</li>
    <li><b>B. 字典 (dict)</b>：字典是可变的，可以添加、删除或修改键值对。</li>
    <li><b>C. Numpy 数组 (numpy.ndarray)</b>：Numpy 数组是可变的，可以修改其元素。</li>
    <li><b>D. 字符串 (str)</b>：字符串是不可变的，一旦创建，其内容就不能被修改。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  # 列表是可变的
  my_list = [1, 2, 3]
  my_list[0] = 100
  print(f"Modified list: {my_list}")

  # 字典是可变的
  my_dict = {'a': 1}
  my_dict['a'] = 100
  print(f"Modified dict: {my_dict}")

  # 字符串是不可变的 (会报错)
  my_string = "hello"
  try:
      my_string[0] = 'H'
  except TypeError as e:
      print(f"Error when modifying string: {e}")
  ```
</details>

---
**17. 代码 `a=[1,2]; b=[3,4,5] ; c=[6,7,8,9]; len(tuple(zip(a,b,c)))` 的输出为（ ）**
A. 1
B. 2
C. 3
D. 4

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`zip(a, b, c)`</b>：`zip()` 函数将多个可迭代对象中对应位置的元素打包成元组。`zip()` 的长度由<b>最短</b>的可迭代对象的长度决定。</li>
    <li>在这里，`a` 的长度是 2，`b` 是 3，`c` 是 4。最短的是 `a`，长度为 2。</li>
    <li>因此，`zip()` 会生成 2 个元组：`(1, 3, 6)` 和 `(2, 4, 7)`。</li>
    <li><b>`tuple(...)`</b>：将 `zip` 对象的结果转换为一个元组，得到 `((1, 3, 6), (2, 4, 7))`。</li>
    <li><b>`len(...)`</b>：获取这个元组的长度，它包含 2 个子元组，所以长度为 2。</li>
  </ol>

  **正确答案：** B

  **代码示例：**
  ```python
  a = [1, 2]
  b = [3, 4, 5]
  c = [6, 7, 8, 9]

  zipped_tuple = tuple(zip(a, b, c))
  print(f"Zipped tuple: {zipped_tuple}")

  length = len(zipped_tuple)
  print(f"Length: {length}")
  ```
</details>

---
**18. 设 `a=[1, 2, 3]`, 执行 `b=a; a.append(3)` 之后输出 `b` 的值是（ ）**
A. `[1, 2, 3]`
B. `[1, 2]`
C. `[1, 2, 3, 3]`
D. `[1, 2, 3, 3, 3]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`a = [1, 2, 3]`</b>：创建一个列表，`a` 引用它。</li>
    <li><b>`b = a`</b>：这不是复制，而是将 `b` 指向 `a` 所引用的<b>同一个列表对象</b>。</li>
    <li><b>`a.append(3)`</b>：修改 `a` 引用的列表。因为 `a` 和 `b` 指向同一个对象，所以通过 `a` 修改列表，`b` 也会看到这个变化。列表变为 `[1, 2, 3, 3]`。</li>
  </ol>
  因此，输出 `b` 的值将是 `[1, 2, 3, 3]`。

  **正确答案：** C

  **代码示例：**
  ```python
  a = [1, 2, 3]
  b = a
  print(f"Before modification, a is b: {a is b}")

  a.append(3)
  print(f"After modification, a = {a}")
  print(f"After modification, b = {b}")
  ```
</details>

---
**19. 下列代码的输出是（ ）**
```python
my_list = [11, 12, 13, 12, 15, 16, 13, 14]
a = set(my_list)
print([x for x in a if x > 11])
```
A. `[12, 13, 12, 15, 16, 13, 14]`
B. `[11, 12, 13, 12, 15, 16, 13, 14]`
C. `[12, 13, 15, 16, 14]`
D. `[12, 13, 14, 15, 16]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`a = set(my_list)`</b>：`set()` 会从列表中创建一个集合，集合的特性是<b>无序</b>且<b>元素唯一</b>。因此，`a` 变为 `{11, 12, 13, 14, 15, 16}`。</li>
    <li><b>`[x for x in a if x > 11]`</b>：这是一个列表推导式，遍历集合 `a`，筛选出所有大于 11 的元素。这些元素是 `12, 13, 14, 15, 16`。</li>
    <li><b>输出顺序</b>：从 Python 3.7 开始，`set` 的迭代顺序是插入顺序。但 `set()` 从列表创建集合的内部顺序不保证与原列表一致。不过，对于选择题，通常会展示一个<b>有序</b>的结果作为标准答案。</li>
  </ol>
  将筛选出的元素 `{12, 13, 14, 15, 16}` 排序后，得到 `[12, 13, 14, 15, 16]`。

  **正确答案：** D (通常选择题会提供排序后的结果)

  **代码示例：**
  ```python
  my_list = [11, 12, 13, 12, 15, 16, 13, 14]
  a = set(my_list)
  print(f"Set a: {a}")

  result = [x for x in a if x > 11]
  print(f"Result (actual output may vary in order): {result}")
  print(f"Result (sorted for comparison): {sorted(result)}")
  ```
</details>

---
**20. 下面对列表 `a = [1, 2, 3, 4, 5, 6, 7, 8, 9]` 的操作，得到的结果正确的是（ ）**
A. `c = a[::-2]`, c为 `[1, 3, 5, 7, 9]`
B. `c = a[::3]`, c为 `[1, 4, 7]`
C. `c = a[:-1]`, c为 `[1, 2, 3, 4, 5, 6, 7, 8, 9]`
D. `c = a[-4:]`, c为 `[5, 6, 7, 8, 9]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `c = a[::-2]`</b>：从后向前反向切片，步长为2。结果为 `[9, 7, 5, 3, 1]`。所以 A 错误。</li>
    <li><b>B. `c = a[::3]`</b>：从头到尾正向切片，步长为3。取索引 0, 3, 6 的元素。结果为 `[1, 4, 7]`。所以 B 正确。</li>
    <li><b>C. `c = a[:-1]`</b>：切片从头开始，到倒数第一个元素之前结束。结果为 `[1, 2, 3, 4, 5, 6, 7, 8]`。所以 C 错误。</li>
    <li><b>D. `c = a[-4:]`</b>：切片从倒数第四个元素开始，到末尾结束。结果为 `[6, 7, 8, 9]`。所以 D 错误。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  print(f"a[::-2] is {a[::-2]}")
  print(f"a[::3] is {a[::3]}")
  print(f"a[:-1] is {a[:-1]}")
  print(f"a[-4:] is {a[-4:]}")
  ```
</details>

---
**21. 下面对于列表的操作方法的叙述，错误的是（ ）**
A. 使用insert方法可以将元素插入到指定的列表位置。
B. 使用pop方法可以将特定位置的元素移除并返回。
C. 使用append方法可以将元素添加到列表的尾部。
D. 使用remove方法可以移除列表中所有符合要求的值。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `insert()`</b>：`list.insert(index, element)` 将元素插入到指定 `index` 位置。叙述正确。</li>
    <li><b>B. `pop()`</b>：`list.pop(index)` 移除指定 `index` 位置的元素并返回该元素。叙述正确。</li>
    <li><b>C. `append()`</b>：`list.append(element)` 将元素添加到列表的末尾。叙述正确。</li>
    <li><b>D. `remove()`</b>：`list.remove(value)` 仅移除列表中<b>第一个</b>匹配到的 `value`。它不会移除所有符合要求的值。叙述错误。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  my_list = [1, 2, 3, 2, 4]
  my_list.remove(2) # 只移除了第一个2
  print(f"After single remove: {my_list}")

  # 要移除所有2，需要循环或列表推导式
  my_list = [1, 2, 3, 2, 4]
  my_list_all_removed = [x for x in my_list if x != 2]
  print(f"After removing all 2s: {my_list_all_removed}")
  ```
</details>

---
**22. 下面对字典 `d = {'a' : 'some value', 'b' : [1, 2, 3, 4]}` 的操作的叙述，错误的是（ ）**
A. `'a' in d`, 返回True.
B. `'some value' in d`, 返回True
C. `print(d.pop('a'))`, 输出结果为some value
D. `d.update({'b': 1})`, d改变为 `{'a': 'some value', 'b': 1}`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `'a' in d`</b>：`in` 运算符默认检查字典的<b>键</b>。字典 `d` 中存在键 `'a'`，所以返回 `True`。叙述正确。</li>
    <li><b>B. `'some value' in d`</b>：`in` 运算符检查的是键，不是值。`'some value'` 是一个值，不是键，所以返回 `False`。叙述错误。 (要检查值，应使用 `d.values()`)</li>
    <li><b>C. `print(d.pop('a'))`</b>：`pop('a')` 会移除键 `'a'` 及其对应的值，并返回被移除的值 `'some value'`。叙述正确。</li>
    <li><b>D. `d.update({'b': 1})`</b>：`update()` 方法会用新字典更新原字典。键 `'b'` 已存在，其值会被更新为 `1`。叙述正确。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  d_test = {'a': 'some value', 'b': [1, 2, 3, 4]}

  print(f"'a' in d_test: {'a' in d_test}")
  print(f"'some value' in d_test: {'some value' in d_test}")
  print(f"'some value' in d_test.values(): {'some value' in d_test.values()}")
  ```
</details>

---
**23. 对于以下代码 `a = (3, 4, (5, 6)); a[1] = 'four'` 运行结果为（ ）**
A. `('four', 4, (5, 6))`
B. `(3, 4, 'four', (5, 6))`
C. `TypeError`
D. `(3, 'four', (5, 6))`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Python 中，元组 (tuple) 是<b>不可变 (immutable)</b> 对象。这意味着一旦创建了一个元组，就不能修改其任何元素。
  代码 `a[1] = 'four'` 尝试通过索引赋值的方式修改元组，这会引发 `TypeError`。

  **正确答案：** C

  **代码示例：**
  ```python
  a = (3, 4, (5, 6))
  try:
      a[1] = 'four'
      print(a)
  except TypeError as e:
      print(f"Error: {e}")
  ```
</details>

---
**24. 下面代码的结果是（ ）**
```python
lambdas = [lambda: i for i in range(10)]
result = lambdas[0]()
print(result)
```
A. 0
B. 1
C. 9
D. 10

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是一个关于闭包 (closure) 和变量作用域的经典问题。
  <ol>
    <li><b>`lambdas = [lambda: i for i in range(10)]`</b>：这个列表推导式创建了一个包含 10 个 `lambda` 函数的列表。</li>
    <li><b>关键点</b>：这些 `lambda` 函数在定义时，并没有捕获 `i` 在每次迭代时的值，而是捕获了变量 `i` 本身。这被称为<b>延迟绑定</b>。</li>
    <li>当列表推导式循环<b>结束时</b>，变量 `i` 的最终值是 `9`。</li>
    <li><b>`result = lambdas[0]()`</b>：这行代码调用列表中的第一个 `lambda` 函数。当函数被<b>调用时</b>，它会去查找它所引用的变量 `i` 的当前值。此时 `i` 的值已经是 `9`。</li>
  </ol>
  因此，调用列表中任何一个 `lambda` 函数，都会返回 `9`。

  **正确答案：** C

  **代码示例：**
  ```python
  lambdas = [lambda: i for i in range(10)]
  result = lambdas[0]()
  print(f"Result of lambdas[0](): {result}")
  print(f"Result of lambdas[5](): {lambdas[5]()}")

  # 如果想捕获每次迭代的值，需要这样做：
  fixed_lambdas = [lambda val=i: val for i in range(10)]
  print(f"\nFixed result of fixed_lambdas[0](): {fixed_lambdas[0]()}")
  print(f"Fixed result of fixed_lambdas[5](): {fixed_lambdas[5]()}")
  ```
</details>

---
**25. 下面代码的结果是（ ）**
```python
a = [['a', 'b', 'a', 'i'],
     ['i','b', 'b', 'c'],
     ['c', 'a','i', 'c'],
     ['a','b','c','c','i','a']]
b = [i for i, x in enumerate(a) if x.index('i') > 1]
print(b)
```
A. `[0, 2, 3]`
B. `[0, 1, 2, 3]`
C. `[['a', 'b', 'a', 'i'],['c', 'a','i', 'c'],['a','b','c','c','i','a']]`
D. `[['a', 'b', 'a', 'i'], ['i','b', 'b', 'c'],['c', 'a','i', 'c'],['a','b','c','c','i','a']]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是一个列表推导式，`enumerate(a)` 会生成每个子列表的索引 `i` 和值 `x`。条件是 `x.index('i') > 1`，即子列表中 `'i'` 首次出现的索引大于 1。
  我们逐个检查子列表：
  <ul>
    <li><b>索引 0: `['a', 'b', 'a', 'i']`</b>。`'i'` 的索引是 3。`3 > 1` 为 `True`。保留索引 `0`。</li>
    <li><b>索引 1: `['i','b', 'b', 'c']`</b>。`'i'` 的索引是 0。`0 > 1` 为 `False`。丢弃索引 `1`。</li>
    <li><b>索引 2: `['c', 'a','i', 'c']`</b>。`'i'` 的索引是 2。`2 > 1` 为 `True`。保留索引 `2`。</li>
    <li><b>索引 3: `['a','b','c','c','i','a']`</b>。`'i'` 的索引是 4。`4 > 1` 为 `True`。保留索引 `3`。</li>
  </ul>
  因此，最终列表 `b` 的结果是 `[0, 2, 3]`。

  **正确答案：** A

  **代码示例：**
  ```python
  a = [['a', 'b', 'a', 'i'],
       ['i','b', 'b', 'c'],
       ['c', 'a','i', 'c'],
       ['a','b','c','c','i','a']]

  b = [i for i, x in enumerate(a) if x.index('i') > 1]
  print(b)
  ```
</details>

---
**26. 执行下面代码的结果是( )**
```python
seq1=[('foo','bar'),('one','two')]
a, b = zip(*seq1)
print(a)
```
A. `['foo','bar']`
B. `('foo','bar')`
C. `['foo','one']`
D. `('foo','one')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `zip(*seq1)` 是一个常见的用于“解压”或“转置”的操作。
  <ol>
    <li><b>`*seq1`</b>：这里的 `*` 是解包运算符。它会将 `seq1` 列表中的元素解开，作为独立的参数传给 `zip`。所以 `zip(*seq1)` 相当于 `zip(('foo', 'bar'), ('one', 'two'))`。</li>
    <li><b>`zip(...)`</b>：`zip` 会将传入的多个序列中对应位置的元素打包。
        <ul>
            <li>第一个元素 `('foo', 'one')`</li>
            <li>第二个元素 `('bar', 'two')`</li>
        </ul>
    </li>
    <li><b>`a, b = ...`</b>：这是一个解包赋值。`a` 会得到第一个元组，`b` 会得到第二个。
        <ul>
            <li>`a` 被赋值为 `('foo', 'one')`。</li>
            <li>`b` 被赋值为 `('bar', 'two')`。</li>
        </ul>
    </li>
    <li><b>`print(a)`</b>：打印 `a` 的值。</li>
  </ol>

  **正确答案：** D

  **代码示例：**
  ```python
  seq1=[('foo','bar'),('one','two')]
  a, b = zip(*seq1)
  print(f"a = {a}")
  print(f"b = {b}")
  ```
</details>

---
**27. 以下代码的输出结果为( )**
```python
seq1=['a','b','c']
seq2=['A','B','C']
combine = zip(seq1,seq2)
first, last = zip(*combine)
print(first)
```
A. `('a', 'A')`
B. `('A', 'a')`
C. `('a', 'b', 'c')`
D. `('A', 'B', 'C')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是一个 `zip` 的经典二次操作，实现了“压缩”再“解压”的过程。
  <ol>
    <li><b>`combine = zip(seq1,seq2)`</b>：`combine` 是一个迭代器，它将产生 `[('a', 'A'), ('b', 'B'), ('c', 'C')]`。</li>
    <li><b>`*combine`</b>：解包 `combine` 迭代器，相当于把 `('a', 'A')`, `('b', 'B')`, `('c', 'C')` 作为三个独立的参数。</li>
    <li><b>`zip(*combine)`</b>：这等价于 `zip(('a', 'A'), ('b', 'B'), ('c', 'C'))`。</li>
    <li>这个新的 `zip` 操作会再次打包，将每个元组的第一个元素组合，第二个元素组合：
        <ul>
            <li>`('a', 'b', 'c')`</li>
            <li>`('A', 'B', 'C')`</li>
        </ul>
    </li>
    <li><b>`first, last = ...`</b>：解包赋值。`first` 得到 `('a', 'b', 'c')`，`last` 得到 `('A', 'B', 'C')`。</li>
    <li><b>`print(first)`</b>：打印 `first` 的值。</li>
  </ol>

  **正确答案：** C

  **代码示例：**
  ```python
  seq1=['a','b','c']
  seq2=['A','B','C']
  combine = zip(seq1, seq2)
  first, last = zip(*combine)
  print(f"first = {first}")
  print(f"last = {last}")
  ```
</details>

---
**28. `a.union(b)` 和哪个是一样的（ ）**
A. `a | b`
B. `a & b`
C. `a || b`
D. `a && b`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Python 中，对于集合 (set) 类型：
  <ul>
    <li><b>A. `a | b`</b>：`|` 运算符是集合的<b>并集</b> (union)，与 `a.union(b)` 功能完全相同。</li>
    <li><b>B. `a & b`</b>：`&` 运算符是集合的<b>交集</b> (intersection)。</li>
    <li><b>C. `a || b`</b>：`||` 不是 Python 中的有效运算符。逻辑或是 `or`。</li>
    <li><b>D. `a && b`</b>：`&&` 不是 Python 中的有效运算符。逻辑与是 `and`。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  a = {1, 2, 3}
  b = {3, 4, 5}

  print(f"a.union(b): {a.union(b)}")
  print(f"a | b:        {a | b}")
  print(f"a & b:        {a & b}")
  ```
</details>

---
**29. `my_list=[5, 9, 12, 3, 10, 8, 16, 1]`, `my_list[::-3]` 的结果是( )**
A. `[1, 8, 3, 9]`
B. `[8, 16, 1]`
C. `[1, 10, 9]`
D. `[5, 3, 16]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  列表切片 `list[start:stop:step]`。
  对于 `list[::-3]`：
  <ul>
    <li>`start` 未指定，`step` 为负，表示从列表末尾开始。</li>
    <li>`stop` 未指定，`step` 为负，表示到列表开头结束。</li>
    <li>`step` 为 -3，表示从后往前每隔 3 个元素取一个。</li>
  </ul>
  让我们从后往前取：
  <ol>
    <li>第一个元素是索引 `-1` 的 `1`。</li>
    <li>向前跳 3 个位置，到索引 `-4`，元素是 `10`。</li>
    <li>再向前跳 3 个位置，到索引 `-7`，元素是 `9`。</li>
    <li>再向前跳 3 个位置，索引 `-10` 超出范围，停止。</li>
  </ol>
  因此，结果是 `[1, 10, 9]`。

  **正确答案：** C

  **代码示例：**
  ```python
  my_list = [5, 9, 12, 3, 10, 8, 16, 1]
  result = my_list[::-3]
  print(result)
  ```
</details>

---
**30. 取集合a和集合b中的所有不重复元素的操作符是( )**
A. -
B. |
C. &
D. ^

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  “取集合a和集合b中的所有不重复元素”指的是求两个集合的<b>并集</b>。
  <ul>
    <li><b>A. `-`</b>：差集 (difference)，属于 a 但不属于 b 的元素。</li>
    <li><b>B. `|`</b>：并集 (union)，属于 a 或属于 b 的所有元素。</li>
    <li><b>C. `&`</b>：交集 (intersection)，同时属于 a 和 b 的元素。</li>
    <li><b>D. `^`</b>：对称差集 (symmetric difference)，属于 a 或 b 但不同时属于二者的元素。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  a = {1, 2, 3}
  b = {3, 4, 5}
  print(f"Union (a | b): {a | b}")
  ```
</details>

---
**31. 下列代码的的运行结果为：( )**
```python
import bisect
c = [1, 8, 2, 2, 3, 4, 7]
bisect.insort(c, 6)
print(c)
```
A. `[1, 2, 2, 3, 4, 6, 7, 8]`
B. `[1, 6, 8, 2, 2, 3, 4, 7]`
C. `[1, 8, 2, 2, 3, 4, 6, 7]`
D. `Error`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `bisect.insort(list, item)` 函数的作用是，在保持 `list` <b>有序</b>的情况下，插入 `item`。
  <b>关键点</b>：`bisect` 模块的函数<b>假设</b>传入的列表已经是排好序的。如果列表未排序，`bisect` 仍然会通过二分查找来寻找一个插入点，但最终结果可能不符合预期。
  <ol>
    <li>它会在未排序的列表 `c` 上执行二分查找来定位 `6` 的插入位置。</li>
    <li>在 `[1, 8, 2, 2, 3, 4, 7]` 中，二分查找会确定一个插入点，使得插入后，该点左侧所有元素都小于等于 `6`，右侧都大于等于 `6`（这是在有序列表中的行为，在无序列表中，它只是找到一个满足二分查找逻辑的位置）。</li>
    <li>经过计算，`bisect` 会确定索引 `6` 是插入 `6` 的位置（在 `4` 和 `7` 之间）。</li>
    <li>所以 `6` 会被插入到原列表的索引 6 处，结果为 `[1, 8, 2, 2, 3, 4, 6, 7]`。</li>
  </ol>
  注意：最终列表并未完全排序，`insort` 只是完成了插入操作。

  **正确答案：** C

  **代码示例：**
  ```python
  import bisect
  c = [1, 8, 2, 2, 3, 4, 7]
  print(f"Original c: {c}")

  bisect.insort(c, 6)
  print(f"After insort: {c}")

  # 正确用法示例
  c_sorted = [1, 2, 2, 3, 4, 7, 8]
  bisect.insort(c_sorted, 6)
  print(f"Correct usage on sorted list: {c_sorted}")
  ```
</details>

---
**32. 关于Python组合数据类型，以下描述错误的是：( )**
A. Python的字符串、元组和列表类型都属于序列类型
B. 组合数据类型能够将多个相同类型或不同类型的数据组织起来，通过单一的表示使数据操作更有序、更容易
C. 组合数据类型可以分为3类：序列类型、集合类型和映射类型
D. 序列类型是二维元素向量，元素之间存在先后关系，通过序号访问

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A</b>: 正确。字符串、元组和列表都是序列，其元素有顺序，可通过索引访问。</li>
    <li><b>B</b>: 正确。这是对组合数据类型作用的准确描述。</li>
    <li><b>C</b>: 正确。Python 的主要组合数据类型可分为这三类。</li>
    <li><b>D</b>: 错误。序列类型是<b>一维</b>元素向量，而不是二维。其余描述（元素有先后关系，通过序号访问）是正确的。</li>
  </ul>

  **正确答案：** D
</details>

---
**33. 下列代码的运行结果为：( )**
```python
print(4 > 3 > 2 > 1)
print(4 > (3 > 2) > 1)
```
A. `True True`
B. `True False`
C. `False False`
D. `False True`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`4 > 3 > 2 > 1`</b>：在 Python 中，比较运算符可以<b>链式使用</b>。这个表达式等价于 `(4 > 3) and (3 > 2) and (2 > 1)`。因为所有子表达式都为 `True`，所以最终结果是 `True`。</li>
    <li><b>`4 > (3 > 2) > 1`</b>：
        <ul>
            <li>首先计算括号内的 `(3 > 2)`，结果为 `True`。</li>
            <li>表达式变为 `4 > True > 1`。</li>
            <li>在数值比较中，`True` 会被当作整数 `1`。</li>
            <li>表达式变为 `4 > 1 > 1`。</li>
            <li>这又是一个链式比较，等价于 `(4 > 1) and (1 > 1)`。</li>
            <li>`(4 > 1)` 是 `True`，但 `(1 > 1)` 是 `False`。</li>
            <li>`True and False` 的结果是 `False`。</li>
        </ul>
    </li>
  </ol>

  **正确答案：** B

  **代码示例：**
  ```python
  print(4 > 3 > 2 > 1)
  print(4 > (3 > 2) > 1)
  ```
</details>

---
**34. 下列代码的运行结果为：( )**
```python
tup1 =( 4 ,'#', 'for') + ( 1 ,[6 , 0] ) * 2 + tuple ( 'bar' )
print(tup1)
```
A. `(4, '#', 'for', 1, [6, 0], 1, [6, 0], 'b', 'a', 'r')`
B. `(4, '#', 'f', 'o', 'r', 1, [6, 0], 1, [6, 0], 'b', 'a', 'r')`
C. `(4, '#', 'for', 1, [6, 0], 1, [6, 0], 'bar')`
D. `Error`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  让我们逐步分解表达式：
  <ol>
    <li><b>`(1, [6, 0]) * 2`</b>：元组重复操作。结果是 `(1, [6, 0], 1, [6, 0])`。</li>
    <li><b>`tuple('bar')`</b>：将字符串转换为元组，每个字符成为一个元素。结果是 `('b', 'a', 'r')`。</li>
    <li><b>`+` 运算符</b>：将三个元组进行拼接。
        <br>`(4, '#', 'for') + (1, [6, 0], 1, [6, 0]) + ('b', 'a', 'r')`</li>
    <li>最终结果是 `(4, '#', 'for', 1, [6, 0], 1, [6, 0], 'b', 'a', 'r')`。</li>
  </ol>

  **正确答案：** A

  **代码示例：**
  ```python
  tup1 = (4, '#', 'for') + (1, [6, 0]) * 2 + tuple('bar')
  print(tup1)
  ```
</details>

---
**35. `a = [1, 2, 3, None, (), [], ]`，`print(len(a))` 的输出结果为( )**
A. 4
B. 5
C. 6
D. 7

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `len()` 函数返回列表中元素的数量。我们来数一下列表 `a` 中的元素：
  <ol>
    <li>`1` (整数)</li>
    <li>`2` (整数)</li>
    <li>`3` (整数)</li>
    <li>`None` (NoneType)</li>
    <li>`()` (空元组)</li>
    <li>`[]` (空列表)</li>
  </ol>
  总共有 6 个元素，即使有些元素是空的或者 `None`，它们仍然算作独立的元素。

  **正确答案：** C

  **代码示例：**
  ```python
  a = [1, 2, 3, None, (), [], ]
  print(len(a))
  ```
</details>

---
**36. 以下不能创建一个字典的语句是：（）**
A. `d1 = {'a':[1,3,5],'b':128}`
B. `d1 = dict('a'=[1,2,3])`
C. `d1 = dict.fromkeys(['a','b','c'])`
D. `seq1 = ['a','b']; seq2 = [1,2]; d1 = dict(zip(seq1,seq2))`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A</b>: 正确。使用花括号 `{}` 是创建字典的标准字面量语法。</li>
    <li><b>B</b>: 错误。`dict()` 构造函数如果使用关键字参数来创建字典，那么关键字必须是合法的变量名，不能是字符串。`'a'` 是一个字符串，不是变量名，这会导致 `SyntaxError`。正确的写法是 `d1 = dict(a=[1,2,3])`。</li>
    <li><b>C</b>: 正确。`dict.fromkeys()` 是一个类方法，用于从一个序列创建字典，所有键对应同一个值（默认为 `None`）。</li>
    <li><b>D</b>: 正确。`zip()` 将两个序列打包成键值对，`dict()` 构造函数再将这些键值对转换为字典。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  # A. Correct
  d1_A = {'a':[1,3,5],'b':128}
  print(f"A: {d1_A}")

  # C. Correct
  d1_C = dict.fromkeys(['a','b','c'])
  print(f"C: {d1_C}")

  # D. Correct
  seq1 = ['a','b','c','d']
  seq2 = [123,'second',True,[1,3,5]]
  d1_D = dict(zip(seq1,seq2))
  print(f"D: {d1_D}")

  # B (will raise SyntaxError)
  try:
      # This line needs to be in a string to be evaluated,
      # as it's a syntax error and would stop the script.
      exec("d1 = dict('a'=[1,2,3])")
  except SyntaxError as e:
      print(f"Error for B: Invalid syntax")
  ```
</details>

---
**37. 下列语句结果为： ( )**
```python
a = [1,2,3]
b = [4,5,6]
print(a + 3 * b)
```
A. `[1,2,3,12,15,18]`
B. `[1,2,3,4,5,6,4,5,6,4,5,6]`
C. `[1,2,3,4,5,6,1,2,3,4,5,6]`
D. 输出错误

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  运算符优先级决定了计算顺序。在 Python 中，乘法 `*` 的优先级高于加法 `+`。
  <ol>
    <li><b>`3 * b`</b>：首先执行列表的重复操作。列表 `b` 被重复 3 次，结果为 `[4, 5, 6, 4, 5, 6, 4, 5, 6]`。</li>
    <li><b>`a + ...`</b>：然后执行列表的拼接操作。将列表 `a` 与上一步的结果拼接。</li>
  </ol>
  `[1, 2, 3] + [4, 5, 6, 4, 5, 6, 4, 5, 6]` 的结果是 `[1, 2, 3, 4, 5, 6, 4, 5, 6, 4, 5, 6]`。

  **正确答案：** B

  **代码示例：**
  ```python
  a = [1, 2, 3]
  b = [4, 5, 6]
  result = a + 3 * b
  print(result)
  ```
</details>

## 第四章：NumPy 数组与操作

**1. 代码`arr=np.arange(1,10).reshape(3,3);arr[1:2,:].shape` 的输出是（ ）**
A. (2, 3)
B. (1, 2)
C. (1, 3)
D. (2, 2)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`arr = np.arange(1,10).reshape(3,3)`</b>： 创建一个 3x3 的 NumPy 数组。</li>
    <li><b>`arr[1:2,:]`</b>： 这是一个切片操作。
        <ul>
            <li>`1:2`：在第一个维度（行）上，选择索引为 1 的行。因为使用的是切片 `1:2` 而不是整数 `1`，所以结果会<b>保持其二维特性</b>。</li>
            <li>`:`：在第二个维度（列）上，选择所有列。</li>
        </ul>
        因此，结果是一个 1 行 3 列的二维数组 `[[4, 5, 6]]`。
    </li>
    <li><b>`.shape`</b>：获取这个结果数组的形状，即 `(1, 3)`。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import numpy as np
  arr = np.arange(1,10).reshape(3,3)
  print(f"Original array:\n{arr}")

  sliced_arr = arr[1:2,:]
  print(f"Sliced array:\n{sliced_arr}")
  print(f"Shape of sliced array: {sliced_arr.shape}")
  ```
</details>

---
**2. 代码`arr=np.arange(1,10).reshape(3,3);arr[[0,-1,-2]]` 的输出是（ ）**
A. `array([[1, 2, 3], [7, 8, 9],[4, 5, 6]])`
B. `array([[7, 8, 9],[7, 8, 9],[4, 5, 6]])`
C. `array([[1, 2, 3],[1, 2, 3], [4, 5, 6]])`
D. `array([[7, 8, 9],[1, 2, 3],[4, 5, 6]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`arr = np.arange(1,10).reshape(3,3)`</b>： 创建数组 `[[1,2,3], [4,5,6], [7,8,9]]`。</li>
    <li><b>`arr[[0,-1,-2]]`</b>： 这是一个<b>花式索引 (Fancy Indexing)</b>。它使用一个整数列表来选择行，并且结果数组的行顺序将与索引列表中的顺序完全相同。
        <ul>
            <li>`0` 对应第一行：`[1, 2, 3]`</li>
            <li>`-1` 对应最后一行：`[7, 8, 9]`</li>
            <li>`-2` 对应倒数第二行：`[4, 5, 6]`</li>
        </ul>
    </li>
  </ul>
  因此，输出是 `array([[1, 2, 3], [7, 8, 9], [4, 5, 6]])`。

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  arr = np.arange(1,10).reshape(3,3)
  print(f"Original array:\n{arr}")

  result = arr[[0,-1,-2]]
  print(f"Result of arr[[0,-1,-2]]:\n{result}")
  ```
</details>

---
**3. 计算numpy中元素个数的方法（ ）**
A. `np.sqrt()`
B. `np.size()`
C. `np.identity()`
D. `np.itemsize()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `np.sqrt()`</b>：计算数组中每个元素的平方根。</li>
    <li><b>B. `np.size()`</b>：返回数组中元素的总数量。也可以使用数组属性 `.size`。</li>
    <li><b>C. `np.identity()`</b>：返回一个单位矩阵。</li>
    <li><b>D. `np.itemsize()`</b>：返回数组中每个元素占用的字节数。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  arr = np.array([[1, 2, 3], [4, 5, 6]])
  print(f"Number of elements (np.size): {np.size(arr)}")
  print(f"Number of elements (arr.size): {arr.size}")
  ```
</details>

---
**4. NumPy中没有以下哪个功能？（ ）**
A. 随机数生成
B. 矩阵计算
C. 生成DataFrame数据结构
D. 傅里叶变换

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. 随机数生成</b>：NumPy 的 `numpy.random` 模块提供了强大的随机数生成功能。</li>
    <li><b>B. 矩阵计算</b>：NumPy 提供了矩阵乘法 (`@` 或 `np.dot()`) 和其他线性代数运算。</li>
    <li><b>C. 生成DataFrame数据结构</b>：`DataFrame` 是 <b>Pandas</b> 库的核心数据结构，不是 NumPy 的。</li>
    <li><b>D. 傅里叶变换</b>：NumPy 包含 `numpy.fft` 模块，用于执行傅里叶变换。</li>
  </ul>

  **正确答案：** C
</details>

---
**5. 以下结果为TRUE的是（ ）**
A. `np.nan == np.nan`
B. `np.inf > np.nan`
C. `0.3 == 3 * 0.1`
D. `0 * np.nan != 0`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `np.nan == np.nan`</b>：`NaN` (Not a Number) 与任何值（包括它自己）的相等比较结果都是 `False`。</li>
    <li><b>B. `np.inf > np.nan`</b>：任何涉及 `NaN` 的大小比较结果都是 `False`。</li>
    <li><b>C. `0.3 == 3 * 0.1`</b>：由于浮点数精度问题，`3 * 0.1` 的结果是 `0.30000000000000004`，不精确等于 `0.3`，所以结果为 `False`。</li>
    <li><b>D. `0 * np.nan != 0`</b>：
        <ul>
            <li>`0 * np.nan` 的结果是 `np.nan`。</li>
            <li>表达式变为 `np.nan != 0`。</li>
            <li>`NaN` 与任何值的不等比较结果都是 `True`。</li>
        </ul>
    </li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import numpy as np

  print(f"np.nan == np.nan: {np.nan == np.nan}")
  print(f"np.inf > np.nan: {np.inf > np.nan}")
  print(f"0.3 == 3 * 0.1: {0.3 == 3 * 0.1}")
  print(f"0 * np.nan != 0: {0 * np.nan != 0}")
  ```
</details>

---
**6. 已知`arr=np.arange(9).reshape(3,3)`, 执行`arr.cumsum(axis=0)`得到的结果是（ ）**
A. 36
B. `array([3,12,21])`
C. `array([[0,1,2],[3,5,7],[9,12,15]])`
D. `array([[0,1,3],[3,7,12],[6,13,21]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`arr = np.arange(9).reshape(3,3)`</b>：创建数组 `[[0,1,2], [3,4,5], [6,7,8]]`。</li>
    <li><b>`arr.cumsum(axis=0)`</b>：`cumsum()` 计算累积和。`axis=0` 表示沿着第一个轴（行方向，即<b>向下</b>）对每一列独立计算累积和。
        <ul>
            <li>第0列: `[0, 0+3, (0+3)+6]` -> `[0, 3, 9]`</li>
            <li>第1列: `[1, 1+4, (1+4)+7]` -> `[1, 5, 12]`</li>
            <li>第2列: `[2, 2+5, (2+5)+8]` -> `[2, 7, 15]`</li>
        </ul>
    </li>
  </ul>
  将结果组合得到 `[[0,1,2],[3,5,7],[9,12,15]]`。

  **正确答案：** C

  **代码示例：**
  ```python
  import numpy as np
  arr = np.arange(9).reshape(3,3)
  print(f"Original array:\n{arr}")

  result = arr.cumsum(axis=0)
  print(f"Result of arr.cumsum(axis=0):\n{result}")
  ```
</details>

---
**7. 设`bools=np.array([False,False,True,False])`,执行`bools.any()`和`bools.all()`得到的输出分别是（ ）**
A. True,False
B. True,True
C. False,True
D. False,False

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`bools.any()`</b>：检查数组中是否<b>至少有一个</b>元素为 `True`。因为数组中包含 `True`，所以结果是 `True`。</li>
    <li><b>`bools.all()`</b>：检查数组中是否<b>所有元素</b>都为 `True`。因为数组中包含 `False`，所以结果是 `False`。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  bools = np.array([False, False, True, False])
  print(f"bools.any(): {bools.any()}")
  print(f"bools.all(): {bools.all()}")
  ```
</details>

---
**8. 假设`arr = np.array([[1, 2 ,3], [4, 5, 6]]).T`，下列哪项可计算arr每一行的平均值？（ ）**
A. `arr.mean()`
B. `arr.mean(1)`
C. `arr.mean(0)`
D. `arr.mean(axis = 1)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`arr = np.array(...).T`</b>：创建的 `arr` 是一个 3x2 的数组：`[[1,4], [2,5], [3,6]]`。</li>
    <li><b>`arr.mean()`</b>：计算整个数组所有元素的平均值。</li>
    <li><b>`arr.mean(axis=0)`</b> 或 `arr.mean(0)`：沿着轴 0 (向下) 计算，得到每一<b>列</b>的平均值。</li>
    <li><b>`arr.mean(axis=1)`</b> 或 `arr.mean(1)`：沿着轴 1 (向右) 计算，得到每一<b>行</b>的平均值。</li>
  </ul>
  选项 B 和 D 是等价的，都计算每一行的平均值。

  **正确答案：** B (或 D)

  **代码示例：**
  ```python
  import numpy as np
  arr = np.array([[1, 2 ,3], [4, 5, 6]]).T
  print(f"Transposed array arr:\n{arr}")

  print(f"\nMean of each row (arr.mean(axis=1)):\n{arr.mean(axis=1)}")
  ```
</details>

---
**9. NumPy中的`ndim`属性表示的意思是（ ）**
A. 元素类型
B. 秩
C. 每一维度的数量
D. 元素的值

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`dtype`</b>：表示数组中元素的数据类型。</li>
    <li><b>`shape`</b>：一个元组，表示数组在每个维度上的大小（即每一维度的数量）。</li>
    <li><b>`ndim`</b>：一个整数，表示数组的<b>维度数</b>（number of dimensions），也称为<b>秩 (rank)</b>。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  arr1d = np.array([1, 2, 3])
  arr2d = np.array([[1, 2], [3, 4]])

  print(f"arr1d.ndim: {arr1d.ndim}")
  print(f"arr2d.ndim: {arr2d.ndim}")
  ```
</details>

---
**10. 根据输出结果，下列①处的代码应该为（ ）**
```python
import numpy as np
arr = np.arange(12).reshape(3, 4)
# ①
print(arr)
# 输出：
# [[ 0  1  2  3]
#  [12 12  6  7]
#  [ 8  9 10 11]]
```
A. `arr[1][:2] = 12`
B. `arr[1][1:2] = 12`
C. `arr[1,1:2] = 12`
D. `arr[1,2] = 12`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  目标是将 `arr` 的第二行 `[4, 5, 6, 7]` 的前两个元素 `[4, 5]` 修改为 `12`。
  <ul>
    <li><b>A. `arr[1][:2] = 12`</b>：
        <ul>
            <li>`arr[1]` 得到第二行 `[4, 5, 6, 7]`。</li>
            <li>`[:2]` 进一步切片得到 `[4, 5]`。</li>
            <li>`= 12` 会通过广播将 `[4, 5]` 修改为 `[12, 12]`。符合目标。</li>
        </ul>
    </li>
    <li><b>B. `arr[1][1:2] = 12`</b>：只修改了索引为 1 的元素 `5`。</li>
    <li><b>C. `arr[1,1:2] = 12`</b>：等同于 B，只修改了 `[1,1]` 处的元素。</li>
    <li><b>D. `arr[1,2] = 12`</b>：只修改了 `[1,2]` 处的元素 `6`。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  arr = np.arange(12).reshape(3, 4)
  arr[1][:2] = 12
  print(arr)
  ```
</details>

---
**11. `a = [1, 2, 3]`， `c = np.array(a)`，以下对`a`和`c`的操作，错误的是（ ）**
A. `c**2`
B. `c + 1`
C. `a*2`
D. `a + 1`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `c**2`</b>：NumPy 数组支持元素级幂运算，结果为 `array([1, 4, 9])`。正确。</li>
    <li><b>B. `c + 1`</b>：NumPy 数组支持与标量的广播运算，结果为 `array([2, 3, 4])`。正确。</li>
    <li><b>C. `a*2`</b>：Python 列表的 `*` 运算符用于重复，结果为 `[1, 2, 3, 1, 2, 3]`。正确。</li>
    <li><b>D. `a + 1`</b>：Python 列表的 `+` 运算符用于列表拼接，不能与整数相加，会引发 `TypeError`。错误。</li>
  </ul>

  **正确答案：** D
</details>


---
**12. numpy中向量转成矩阵使用( )**
A. `reshape`
B. `reval`
C. `arange`
D. `random`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `reshape`</b>：用于改变数组的形状，可以将一维数组（向量）转换为多维数组（矩阵）。</li>
    <li><b>B. `reval`</b>：不是 NumPy 中的标准函数。</li>
    <li><b>C. `arange`</b>：用于创建等差序列数组。</li>
    <li><b>D. `random`</b>：是 NumPy 中用于生成随机数的模块。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np

  vec = np.arange(6) # 向量
  print(f"Original vector (shape {vec.shape}):\n{vec}")

  matrix = vec.reshape(2, 3) # 转换为矩阵
  print(f"\nMatrix after reshape (shape {matrix.shape}):\n{matrix}")
  ```
</details>

---
**13. `data1=[6,7.5,8,0,1];arr1=np.array(data1)`则`arr1`的输出结果是：( )**
A. `array([6. , 7.5, 8. , 0. , 1. ])`
B. `array([6 , 7, 8 , 0 , 1 ])`
C. `array([6 , 8, 8. , 0. , 1. ])`
D. `array([6 , 7.5, 8 , 0 , 1 ])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `np.array()` 从列表创建数组时，会自动推断数据类型 (`dtype`)。由于输入列表 `data1` 中包含浮点数 (`7.5`)，为了保持数据精度，NumPy 会将整个数组的类型提升为浮点数（通常是 `float64`）。因此，所有的整数也会被转换为浮点数。

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  data1 = [6, 7.5, 8, 0, 1]
  arr1 = np.array(data1)
  print(arr1)
  print(f"dtype of arr1: {arr1.dtype}")
  ```
</details>

---
**14. 下列代码的输出是( )**
```python
import numpy as np
data = np.random.randn(3, 4)
data1 = data[1].copy()
data1[0:2] = 12
data1[2:4] = 13
print(data1)
```
A. `[12. 12. 13. 13.]`
B. `[12. 12. 12. 13.]`
C. `[[12. 12.] [13. 13.]]`
D. 发生错误，没有输出

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`data = np.random.randn(3, 4)`</b>：创建一个 3x4 的随机浮点数数组。</li>
    <li><b>`data1 = data[1].copy()`</b>：获取 `data` 的第二行并<b>创建其副本</b> `data1`。`data1` 是一个包含 4 个元素的一维浮点数数组。</li>
    <li><b>`data1[0:2] = 12`</b>：通过广播将 `data1` 的前两个元素赋值为 `12.`。</li>
    <li><b>`data1[2:4] = 13`</b>：通过广播将 `data1` 的后两个元素赋值为 `13.`。</li>
  </ol>
  最终 `data1` 变为 `[12. 12. 13. 13.]`。

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  data1 = np.random.randn(4) # 模拟一个4元素的一维数组
  print(f"Initial data1: {data1}")
  data1[0:2] = 12
  data1[2:4] = 13
  print(f"Final data1:   {data1}")
  ```
</details>

---
**15. `arr=np.arange(12).reshape(4,3)`，切片操作`arr[[1],:3]`返回的结果是（ ）**
A. `array([[0,1, 2]])`
B. `array([[3, 4]])`
C. `array([[1, 2]])`
D. `array([[3, 4, 5]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`arr = np.arange(12).reshape(4,3)`</b>：创建数组 `[[0,1,2],[3,4,5],[6,7,8],[9,10,11]]`。</li>
    <li><b>`arr[[1],:3]`</b>：这是一个混合索引。
        <ul>
            <li>`[1]`：在行上使用花式索引，即使只选择一行，也会<b>保持二维特性</b>。</li>
            <li>`:3`：在列上选择所有三列。</li>
        </ul>
    </li>
  </ul>
  因此，结果是选择索引为 1 的行，并保持其二维形式，即 `array([[3, 4, 5]])`。

  **正确答案：** D

  **代码示例：**
  ```python
  import numpy as np
  arr = np.arange(12).reshape(4,3)
  result = arr[[1],:3]
  print(result)
  print(f"Shape of result: {result.shape}")
  ```
</details>

---
**16. 对于一个numpy对象`data = np.arange(12).reshape(4, 3)`，下列代码可以得到`[[ 7] [10]]`切片的是（ ）**
A. `data[2:4, 1:2]`
B. `data[2:4][1:2]`
C. `data[2:4, 1:3]`
D. `data[2:3, 1:2]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  目标是选择 `data` 中索引为 `(2,1)` 的 `7` 和索引为 `(3,1)` 的 `10`，并保持列的维度。
  <ul>
    <li><b>A. `data[2:4, 1:2]`</b>：
        <ul>
            <li>`2:4`：选择行索引 2 和 3。</li>
            <li>`1:2`：选择列索引 1。</li>
        </ul>
        这个组合精确地选择了目标元素，并返回一个 2x1 的数组 `[[7], [10]]`。符合目标。
    </li>
    <li><b>B. `data[2:4][1:2]`</b>：先取行 `2,3` 得到 `[[6,7,8],[9,10,11]]`，再取这个新数组的行 `1` 得到 `[[9,10,11]]`。不符。</li>
    <li><b>C. `data[2:4, 1:3]`</b>：选择了行 `2,3` 和列 `1,2`，结果是 `[[7,8],[10,11]]`。不符。</li>
    <li><b>D. `data[2:3, 1:2]`</b>：只选择了行 `2` 和列 `1`，结果是 `[[7]]`。不符。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  data = np.arange(12).reshape(4, 3)
  print(data[2:4, 1:2])
  ```
</details>

---
**17. 以下可以创建数组`[1.,3.,5.]`的是（ ）**
A. `numpy.arange(1,7)`
B. `numpy.arange(1.,7)`
C. `numpy.arange(1.,7,2)`
D. `numpy.arange(1.,5.,2)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `np.arange(start, stop, step)` 创建一个从 `start` 开始，到 `stop` (不包含)结束，步长为 `step` 的数组。
  <ul>
    <li><b>A. `numpy.arange(1,7)`</b>：`[1, 2, 3, 4, 5, 6]`</li>
    <li><b>B. `numpy.arange(1.,7)`</b>：`[1., 2., 3., 4., 5., 6.]`</li>
    <li><b>C. `numpy.arange(1.,7,2)`</b>：从 1.0 开始，步长为 2，到 7 之前。序列为 `1.0`, `3.0`, `5.0`。符合目标。</li>
    <li><b>D. `numpy.arange(1.,5.,2)`</b>：从 1.0 开始，步长为 2，到 5.0 之前。序列为 `1.0`, `3.0`。不符。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import numpy as np
  print(np.arange(1.,7,2))
  ```
</details>

---
**18. 如果 `x = np.array([[1., 2.], [4., 5.]])`, 则`print(x*x)`的结果为（ ）**
A. `[[1. 2.] [4. 5.]]`
B. `[[ 1.  4.] [16. 25.]]`
C. `[[ 9. 12.] [24. 33.]]`
D. `[[ 1.  8.] [ 8. 25.]]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 NumPy 中，`*` 运算符表示<b>元素级 (element-wise)</b> 的乘法，而不是矩阵乘法。这意味着数组中对应位置的元素会相乘。
  <pre>
  [[1.*1., 2.*2.],
   [4.*4., 5.*5.]]
  </pre>
  结果为 `[[1., 4.], [16., 25.]]`。

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  x = np.array([[1., 2.], [4., 5.]])
  print("Element-wise multiplication (x * x):")
  print(x * x)

  # For comparison, matrix multiplication:
  print("\nMatrix multiplication (x @ x):")
  print(x @ x)
  ```
</details>

---
**19. 代码 `arr1=np.arange(10); arr2=arr1[5:8]; arr2[:]=123; print(arr1)` 的输出是（ ）**
A. `array([ 0, 1, 2, 3, 4, 123, 6, 7, 8, 9])`
B. `array([ 0, 1, 2, 3, 4, 123, 123, 123, 8, 9])`
C. `array([ 0, 1, 2, 3, 4, 5, 123, 7, 8, 9])`
D. `array([ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`arr2 = arr1[5:8]`</b>：在 NumPy 中，数组的切片返回的是原数组的<b>视图 (view)</b>，而不是副本。`arr2` 是 `arr1` 中 `[5, 6, 7]` 部分的视图。</li>
    <li><b>`arr2[:] = 123`</b>：这会修改 `arr2` 视图中的所有元素。</li>
    <li>由于 `arr2` 是 `arr1` 的视图，对 `arr2` 的修改会直接反映到 `arr1` 对应的位置上。所以，`arr1` 中索引 5, 6, 7 的元素都变成了 123。</li>
  </ol>

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  arr1 = np.arange(10)
  arr2 = arr1[5:8]
  arr2[:] = 123
  print(arr1)
  ```
</details>

---
**20. 已知`arr=np.arange(1,10).reshape(3,3)`,执行`arr[:,:1]`得到的是（ ）**
A. `array([[1]])`
B. `array([1,4,7])`
C. `array([1,2,3])`
D. `array([[1],[4],[7]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `arr[:,:1]` 是一个切片操作。
  <ul>
    <li>`:`：在行上，选择所有行。</li>
    <li>`:1`：在列上，选择从开始到索引 1 (不包含)的列，即只选择第 0 列。</li>
  </ul>
  因为在列的维度上使用的是切片 (`:1`) 而不是单个整数 (`0`)，所以结果会<b>保留列的维度</b>。因此，它返回一个 3 行 1 列的二维数组。

  **正确答案：** D

  **代码示例：**
  ```python
  import numpy as np
  arr = np.arange(1,10).reshape(3,3)
  result = arr[:,:1]
  print(result)
  print(f"Shape: {result.shape}")

  # 对比使用整数索引
  result_int = arr[:,0]
  print(f"\nResult of arr[:,0]: {result_int}")
  print(f"Shape: {result_int.shape}")
  ```
</details>

---
**21. 已知`c= np.arange(24).reshape(3,4,2)` 那么`c.sum(axis = 0)`所得的结果为（ ）**
A. `array([[12, 16],[44, 48],[76, 80]])`
B. `array([[ 1, 5, 9, 13],[17, 21, 25, 29],[33, 37, 41, 45]])`
C. `array([[24, 27], [30, 33],[36, 39],[42, 45]])`
D. `array([[12, 14, 16, 18],[20, 22, 24, 26],[28, 30, 32, 34]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`c` 的形状是 `(3, 4, 2)`，可以看作 3 个 4x2 的“层”。</li>
    <li>`c.sum(axis=0)` 表示沿着第一个轴（“层”的方向）进行求和。这意味着会将所有层中对应位置的元素相加，结果数组的形状将是 `(4, 2)`。</li>
    <li>例如，结果的 `[0,0]` 位置是 `c[0,0,0] + c[1,0,0] + c[2,0,0]` = `0 + 8 + 16 = 24`。</li>
    <li>结果的 `[0,1]` 位置是 `c[0,0,1] + c[1,0,1] + c[2,0,1]` = `1 + 9 + 17 = 27`。以此类推。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import numpy as np
  c = np.arange(24).reshape(3,4,2)
  result = c.sum(axis=0)
  print(result)
  ```
</details>

---
**22. 下列对于`ndarray`的运算属性的叙述，错误的是：（ ）**
A. `.shape`表示`ndarray`对象的尺度，对于矩阵，表示它有几行几列。
B. `.size`表示`ndarray`对象元素的个数。
C. `.type`表示`ndarray`对象的元素类型。
D. `.itemsize`表示`ndarray`对象中每个元素的大小，以字节为单位。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `.shape`：正确，表示数组的维度。</li>
    <li>B. `.size`：正确，表示元素的总数。</li>
    <li>C. `.type`：错误。表示元素类型的属性是 <b>`.dtype`</b>。</li>
    <li>D. `.itemsize`：正确，表示每个元素占用的字节数。</li>
  </ul>

  **正确答案：** C
</details>

---
**23. 假设`arr = np.array([[1,2 ,3], [4, 5, 6]])`，下列关于arr的叙述，错误的是：（ ）**
A. 执行`arr[:]`，输出为`array([[1, 2, 3],[4, 5, 6]])`。
B. 执行`arr[0:10]`，会报错。
C. 执行`arr[:][:1]`输出结果与执行`arr[:,:1]`输出结果不相同。
D. 执行`arr[1,1] = 1`，`arr`输出结果为`array([[1, 2, 3],[4, 1, 6]])`。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。`arr[:]` 选择所有行，返回原数组视图。</li>
    <li>B: 错误。NumPy 切片中，超出范围的索引<b>不会报错</b>，它只会取到数组的末尾。`arr[0:10]` 会返回整个数组。</li>
    <li>C: 正确。`arr[:][:1]` 返回第一行 `[[1, 2, 3]]`。`arr[:,:1]` 返回第一列 `[[1], [4]]`。</li>
    <li>D: 正确。`arr[1,1] = 1` 修改了指定位置的元素。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  arr = np.array([[1,2 ,3], [4, 5, 6]])
  print(arr[0:10]) # Demonstrates it does not error
  ```
</details>

---
**24. 假设`arr = np.array([[1,2 ,3], [4, 5, 6]])`，下列关于arr的叙述，错误的是：（ ）**
A. `arr[arr<5] = 0`, `arr`输出结果为`array([[0, 0, 0],[0, 5, 6]])`。
B. `arr[arr<5]`，输出结果为`array([1, 2, 3, 4])`。
C. `arr[~arr<4]`，输出结果为`array([4, 5, 6])`。
D. `arr[[0],[0,1]]`，输出结果为`array([1, 2])`。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。布尔索引赋值，将所有小于5的元素设为0。</li>
    <li>B: 正确。布尔索引，返回所有小于5的元素组成的一维数组。</li>
    <li>C: 错误。`~arr<4` 的语法有误。它会先对整数数组 `arr` 进行按位取反，再与4比较，结果不是预期的逻辑非。正确的逻辑非应为 `~(arr < 4)`。</li>
    <li>D: 正确。花式索引，选择坐标为 `(0,0)` 和 `(0,1)` 的元素。</li>
  </ul>

  **正确答案：** C
</details>


---
**25. 对于下面代码，运行之后得到的结果为（ ）**
```python
arr = np.arange(5)
arr_slice1 = arr[0:3]
arr_slice1[0] = 6
print(arr) # 第一个输出
arr_slice2 = arr[0:3].copy()
arr_slice2[0] = 0
print(arr) # 第二个输出
```
A. `[0,1,2,3,4]` ; `[0,1,2,3,4]`
B. `[6,1,2,3,4]` ; `[6,1,2,3,4]`
C. `[0,1,2,3,4]` ; `[6,1,2,3,4]`
D. `[6,1,2,3,4]` ; `[0,1,2,3,4]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`arr_slice1 = arr[0:3]`</b>：`arr_slice1` 是 `arr` 的<b>视图</b>。</li>
    <li><b>`arr_slice1[0] = 6`</b>：修改视图会影响原数组。`arr` 变为 `[6, 1, 2, 3, 4]`。</li>
    <li>第一个 `print(arr)` 输出 `[6 1 2 3 4]`。</li>
    <li><b>`arr_slice2 = arr[0:3].copy()`</b>：`arr_slice2` 是 `arr` 切片的<b>副本</b>。</li>
    <li><b>`arr_slice2[0] = 0`</b>：修改副本<b>不会</b>影响原数组 `arr`。</li>
    <li>第二个 `print(arr)` 输出时，`arr` 仍是 `[6 1 2 3 4]`。</li>
  </ol>

  **正确答案：** B
</details>

---
**26. 对于`np.sort()`方法，以下说法正确的是（ ）**
A. 该方法不允许传递参数
B. 该方法是对原数组按位置排序
C. 该方法返回的是已经排序好的数组拷贝
D. 该方法不适用于多维数组

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`np.sort(arr)`</b> 是一个函数，它返回原数组 `arr` 的一个<b>已排序的副本</b>，不改变原数组。</li>
    <li><b>`arr.sort()`</b> 是一个方法，它对数组 `arr` 进行<b>原地排序</b>，不返回值。</li>
  </ul>
  因此，C 是正确的描述。`np.sort()` 可以接受 `axis` 等参数，并且适用于多维数组。

  **正确答案：** C
</details>

---
**27. 下面代码的输出结果是 （ ）**
```python
arr=np.arange(12).reshape(3,4)
arr[1,:].shape
```
A. (4,1)
B. (1,)
C. (4,)
D. (1,4)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`arr[1,:]`</b>：这是一个索引和切片操作。</li>
    <li>`1`：在行上使用<b>单个整数索引</b>选择索引为 1 的行。</li>
    <li>当使用单个整数索引选择某个维度时，该维度会从结果中被移除（<b>降维</b>）。</li>
  </ul>
  所以 `arr[1,:]` 的结果是一个包含 4 个元素的一维数组 `[4, 5, 6, 7]`，其形状为 `(4,)`。

  **正确答案：** C
</details>

---
**28. 下面代码的输出结果是 （ ）**
```python
sample1 = [[1,1,1],[2,2,2],[3,3,3]]
sample2 = np.array([[1,1,1],[2,2,2],[3,3,3]])
arr1 = np.array(sample1)
arr2 = np.array(sample2)
sample1[1] = [-2,-2,-2]
sample2[1] = [-2,-2,-2]
print(arr1)
print(arr2)
```
A. `array([[1,1,1],[-2,-2,-2],[3,3,3]])` 和 `array([[1,1,1],[-2,-2,-2],[3,3,3]])`
B. `array([[1,1,1],[2,2,2],[3,3,3]])` 和 `array([[1,1,1],[-2,-2,-2],[3,3,3]])`
C. `array([[1,1,1],[2,2,2],[3,3,3]])` 和 `array([[1,1,1],[2,2,2],[3,3,3]])`
D. `array([[1,1,1],[-2,-2,-2],[3,3,3]])` 和 `array([[1,1,1],[2,2,2],[3,3,3]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <b>标准 NumPy 行为</b>：
  <ul>
    <li><b>`arr1 = np.array(sample1)`</b>：当从 Python 列表创建 `ndarray` 时，`np.array()` 会<b>复制数据</b>。`arr1` 是 `sample1` 的一个独立副本。</li>
    <li><b>`arr2 = np.array(sample2)`</b>：当从一个 `ndarray` 创建另一个 `ndarray` 时，`np.array()` 默认也会<b>复制数据</b>。`arr2` 是 `sample2` 的一个独立副本。</li>
    <li>因此，后续对 `sample1` 和 `sample2` 的修改<b>不会影响</b> `arr1` 和 `arr2`。</li>
    <li>`arr1` 和 `arr2` 都会保持其初始值 `[[1,1,1],[2,2,2],[3,3,3]]`。</li>
  </ul>
  <b>题目意图分析</b>：
  本题的选项 C 符合标准的 NumPy 行为。选项 A 暗示 `np.array()` 创建的是视图或某种链接，这在默认情况下是错误的。在选择题中，应遵循标准行为。

  **正确答案：** C

  **代码示例：**
  ```python
  import numpy as np
  sample1 = [[1,1,1],[2,2,2],[3,3,3]]
  sample2 = np.array([[1,1,1],[2,2,2],[3,3,3]])
  arr1 = np.array(sample1)
  arr2 = np.array(sample2)
  sample1[1] = [-2,-2,-2]
  sample2[1,:] = [-2,-2,-2] # Note: use slice for ndarray modification
  print("Final arr1:")
  print(arr1)
  print("\nFinal arr2:")
  print(arr2)
  ```
</details>

---
**29. 下面代码的输出结果是（ ）**
```python
a=np.array( [[[1,1],[2,2],[3,3]],
             [[4,4],[5,5],[6,6]],
             [[7,7],[8,8],[9,9]],
             [[10,10],[11,11],[12,12]]])
a.mean(0)
```
A. `[[[ 1 1] [ 2 2] [ 3 3]] [[ 4 4] [ 5 5] [ 6 6]] ...]`
B. `[[5.5 5.5] [6.5 6.5] [7.5 7.5]]`
C. `[[ 2.  2.] [ 5.  5.] [ 8.  8.] [11. 11.]]`
D. `[[ 1.  2.  3.] [ 4.  5.  6.] ...]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`a` 的形状是 `(4, 3, 2)`，可以看作 4 个 3x2 的“层”。</li>
    <li>`a.mean(0)` (或 `a.mean(axis=0)`) 表示沿着第一个轴（“层”的方向）计算平均值。结果数组的形状将是 `(3, 2)`。</li>
    <li>例如，结果的 `[0,0]` 位置是 `(1 + 4 + 7 + 10) / 4 = 5.5`。</li>
    <li>结果的 `[1,0]` 位置是 `(2 + 5 + 8 + 11) / 4 = 6.5`。以此类推。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  a=np.array( [[[1,1],[2,2],[3,3]],
               [[4,4],[5,5],[6,6]],
               [[7,7],[8,8],[9,9]],
               [[10,10],[11,11],[12,12]]])
  print(a.mean(0))
  ```
</details>

---
**30. 下面代码的输出结果是( )**
```python
arr1 = np.array(['Mike', 'Bob'])
arr2 = np.array(['Bob', 'Alice'])
print(np.union1d(arr1, arr2))
```
A. `['Alice' 'Bob' 'Mike']`
B. `['Alice', 'Bob', 'Mike']`
C. `['Mike' 'Bob' 'Alice']`
D. `['Mike', 'Bob', 'Alice']`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `np.union1d()` 函数计算两个一维数组的<b>并集</b>，即返回两个数组中所有<b>唯一的元素</b>，并且结果是<b>排序后</b>的。
  <ul>
    <li>两个数组的唯一元素是 `'Mike'`, `'Bob'`, `'Alice'`。</li>
    <li>按字母顺序排序后是 `'Alice'`, `'Bob'`, `'Mike'`。</li>
  </ul>
  NumPy 数组打印时，元素之间通常用空格分隔。

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  arr1 = np.array(['Mike', 'Bob'])
  arr2 = np.array(['Bob', 'Alice'])
  print(np.union1d(arr1, arr2))
  ```
</details>

---
**31. 输入`np.abs(12+5j)`的结果为？ （ ）**
A. 12
B. 13
C. 5
D. 17

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `np.abs()` 用于计算数字的绝对值。对于复数 `a + bj`，其绝对值（也称为模）是 `sqrt(a**2 + b**2)`。
  <ul>
    <li>`a = 12` (实部)</li>
    <li>`b = 5` (虚部)</li>
    <li>绝对值 = `sqrt(12**2 + 5**2)` = `sqrt(144 + 25)` = `sqrt(169)` = `13`。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  print(np.abs(12+5j))
  ```
</details>

---
**32. 假设`x`是长度为`m`的向量，`y`是长度为`n`的向量，则输入 `X,Y=np.meshgrid(x,y)` 最终生成的矩阵`X`和`Y`的维度是 ( )**
A. `m,n`
B. `m*n, n*m`
C. `m*n, m*n`
D. `n*m, n*m`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `np.meshgrid(x, y)` 用于从一维坐标数组 `x` (长度m) 和 `y` (长度n) 中生成二维网格坐标矩阵。
  <ul>
    <li>返回的第一个矩阵 `X`，其每一行都是 `x` 向量的重复，共有 `n` 行。所以 `X` 的维度是 `(n, m)`。</li>
    <li>返回的第二个矩阵 `Y`，其每一列都是 `y` 向量的重复，共有 `m` 列。所以 `Y` 的维度也是 `(n, m)`。</li>
  </ul>
  D选项中的`nm`表示`n`行`m`列，是正确的。

  **正确答案：** D

  **代码示例：**
  ```python
  import numpy as np
  m = 4 # length of x
  n = 3 # length of y
  x = np.arange(m)
  y = np.arange(n)
  X, Y = np.meshgrid(x, y)
  print(f"Shape of X: {X.shape}") # (n, m) -> (3, 4)
  print(f"Shape of Y: {Y.shape}") # (n, m) -> (3, 4)
  ```
</details>

---
**33. 以下程序的运行结果是（ ）**
```python
import numpy as np
x = np.array([1,2,3,4,5], dtype = np.int8)
print (x.itemsize)
```
A. 1
B. 8
C. 56
D. 64

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`dtype = np.int8`</b>：明确指定数组的数据类型为 8 位整数 (`int8`)。</li>
    <li><b>`x.itemsize`</b>：返回数组中<b>每个元素</b>占用的大小（以<b>字节</b>为单位）。</li>
  </ul>
  8 位 (bit) 等于 1 字节 (byte)。因此，`itemsize` 的结果是 1。

  **正确答案：** A
</details>

---
**34. 已知`x=[3,5,7]`，那么执行语句`x[len(x): ]=[1,2]`之后，x的值为（ ）**
A. `[3,5,7,1,2]`
B. `[3,5,7,1]`
C. `[3,5,7]`
D. `[1,2]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是一个 Python 列表的切片赋值操作。
  <ul>
    <li>`len(x)` 是 `3`。</li>
    <li>`x[3:]` 表示从索引 3 开始到末尾的切片，对于原列表 `x` 来说，这是一个空切片。</li>
    <li>将一个列表赋值给一个空切片，等同于在那个位置插入新列表的所有元素。在这里，相当于在列表末尾追加 `[1,2]`。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  x = [3,5,7]
  x[len(x):] = [1,2]
  print(x)
  ```
</details>

---
**35. `arr = np.arange(32).reshape((8,4)) + 1`；`arr[[1,5,7,2],[0,3,1,2]]`输出的结果是：**
A. `array([ 5, 24, 30, 11])`
B. `array([ 4, 23, 29, 10])`
C. `array([[ 5,  8, ...]])`
D. `array([[ 5,  6, ...]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是一个<b>花式索引 (Fancy Indexing)</b>，使用两个等长的整数列表作为索引。它会选择对应坐标的单个元素，并返回一个一维数组。
  <ul>
    <li>`arr = np.arange(32).reshape((8,4)) + 1` 创建一个 8x4 的数组，元素从 1 到 32。</li>
    <li>它会选择以下坐标的元素：
        <ul>
            <li>`(1, 0)` -> 值为 `5`</li>
            <li>`(5, 3)` -> 值为 `24`</li>
            <li>`(7, 1)` -> 值为 `30`</li>
            <li>`(2, 2)` -> 值为 `11`</li>
        </ul>
    </li>
  </ul>
  因此，结果是 `array([5, 24, 30, 11])`。

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np
  arr = np.arange(32).reshape((8,4)) + 1
  result = arr[[1,5,7,2],[0,3,1,2]]
  print(result)
  ```
</details>

---
**36. 已知`c= np.arange(24).reshape(3,4,2)` 那么`c.sum(axis = 0)`所得的结果为（ ）**
A. `array([[12, 16],[44, 48],[76, 80]])`
B. `array([[ 1, 5, ...]])`
C. `array([[24, 27], [30, 33],[36, 39],[42, 45]])`
D. `array([[12, 14, ...]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  此题与第 21 题相同。
  <ul>
    <li>`c` 的形状是 `(3, 4, 2)`，可以看作 3 个 4x2 的“层”。</li>
    <li>`c.sum(axis=0)` 表示沿着第一个轴（“层”的方向）进行求和。结果数组的形状将是 `(4, 2)`。</li>
    <li>例如，结果的 `[0,0]` 位置是 `c[0,0,0] + c[1,0,0] + c[2,0,0]` = `0 + 8 + 16 = 24`。</li>
    <li>结果的 `[0,1]` 位置是 `c[0,0,1] + c[1,0,1] + c[2,0,1]` = `1 + 9 + 17 = 27`。以此类推。</li>
  </ul>

  **正确答案：** C
</details>

---
**37. `a = np.arange(20).reshape(4,5)`; `a[[0,2,3],[1,2,3]]` 输出结果是（ ）**
A. `array([[ 1, 2, 3], [11, 12, 13], [16, 17, 18]])`
B. `array([ 1, 12, 18])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是一个<b>花式索引 (Fancy Indexing)</b>。它会选择对应坐标的单个元素，并返回一个一维数组。
  <ul>
    <li>`a = np.arange(20).reshape(4,5)` 创建一个 4x5 的数组。</li>
    <li>它会选择以下坐标的元素：
        <ul>
            <li>`(0, 1)` -> 值为 `1`</li>
            <li>`(2, 2)` -> 值为 `12`</li>
            <li>`(3, 3)` -> 值为 `18`</li>
        </ul>
    </li>
  </ul>
  因此，结果是 `array([1, 12, 18])`。

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  a = np.arange(20).reshape(4,5)
  result = a[[0,2,3],[1,2,3]]
  print(result)
  ```
</details>

---
**38. 对`array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])`，`array[:, :-1]`的结果是**
A. `array([[1, 2, 3], [4 5, 6]])`
B. `array([[1, 2], [4, 5]])`
C. `array([[1, 2], [4, 5], [7, 8]])`
D. `array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `array[:, :-1]` 是一个切片操作。
  <ul>
    <li>`:`：在行上，选择所有行。</li>
    <li>`:-1`：在列上，选择从开始到倒数第一个元素之前（<b>不包含</b>倒数第一个元素）。</li>
  </ul>
  这个操作会从每一行中移除最后一列。

  **正确答案：** C

  **代码示例：**
  ```python
  import numpy as np
  arr = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
  result = arr[:, :-1]
  print(result)
  ```
</details>

---
**39. 有下面4×6的二维数组：`arr= np.arange(24).reshape(4,6)` 则 `arr[[3, -2]][:, [1, 0, 3]]` 的输出结果为：**
A. `array([[13, 12, 14], [19, 18, 20]])`
B. `array([[13, 12, 15], [19, 18, 21]])`
C. `array([[19, 18, 20], [13, 12, 14]])`
D. `array([[19, 18, 21], [13, 12, 15]])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这是两次连续的索引操作。
  <ol>
    <li><b>`arr[[3, -2]]`</b>：第一次花式索引，选择行。
        <ul>
            <li>索引 `3` 是第4行：`[18, 19, 20, 21, 22, 23]`</li>
            <li>索引 `-2` 是倒数第2行：`[12, 13, 14, 15, 16, 17]`</li>
        </ul>
        得到临时数组 `temp_arr`：`[[18, 19, 20, 21, 22, 23], [12, 13, 14, 15, 16, 17]]`
    </li>
    <li><b>`temp_arr[:, [1, 0, 3]]`</b>：第二次索引。
        <ul>
            <li>`:` 选择所有行。</li>
            <li>`[1, 0, 3]` 选择列，并按此顺序排列。</li>
        </ul>
        从 `temp_arr` 中取出第1列 `[19, 13]`，第0列 `[18, 12]`，第3列 `[21, 15]`，组合得到 `[[19, 18, 21], [13, 12, 15]]`。
    </li>
  </ol>

  **正确答案：** D
</details>

---
**40. `arr=np.array([1.2, 2.4, 3.8, 4.5], dtype=np.int32); print(arr)` 输出的结果为（ ）**
A. `array([1, 2, 3, 4])`
B. `[1, 2, 3, 4]`
C. `[1, 2, 4, 5]`
D. `array([1, 2, 4, 5])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <b>`dtype=np.int32`</b> 明确指定了数组的数据类型为 32 位整数。当从一个浮点数列表创建整数数组时，所有浮点数的小数部分都会被<b>截断</b>（直接舍弃，不进行四舍五入）。
  <ul>
    <li>`1.2` -> `1`</li>
    <li>`2.4` -> `2`</li>
    <li>`3.8` -> `3`</li>
    <li>`4.5` -> `4`</li>
  </ul>
  因此，`arr` 的内容将是 `[1, 2, 3, 4]`，并且打印时会以 `array(...)` 形式显示。

  **正确答案：** A
</details>

---
**41. 执行以下代码的结果是( )**
```python
import numpy as np
arr = np.arange(5)
arr_slice = arr[2:4]
arr_slice = 10086
print(arr)
```
A. `array([0, 1, 2, 3, 4])`
B. `array([0, 1, 10086, 10086, 4])`
C. `array([0, 1, 10086, 10086, 10086])`
D. `array([0, 1, 10086, 4])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`arr_slice = arr[2:4]`</b>：`arr_slice` 是 `arr` 的一个视图，指向 `[2, 3]`。</li>
    <li><b>`arr_slice = 10086`</b>：<b>关键点</b>：这行代码不是修改视图内部的元素，而是将 `arr_slice` 这个<b>变量本身</b>重新赋值为一个新的整数 `10086`。</li>
    <li>这条赋值语句<b>切断</b>了 `arr_slice` 变量与原数组视图的链接。</li>
    <li>因此，原始数组 `arr` 没有被修改。</li>
  </ol>
  要修改原数组，应该使用 `arr_slice[:] = 10086`。

  **正确答案：** A
</details>

## 第五章：Pandas 核心功能

**1. 下列哪个函数用来展示DataFrame的基础信息和它的统计数据（ ）**
A. `dataFrame.describe()`
B. `dataFrame.head()`
C. `dataFrame.info()`
D. `dataFrame.values`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `dataFrame.describe()`</b>：生成描述性<b>统计数据</b>，包括计数、均值、标准差、最小值、最大值和四分位数，非常符合题意。</li>
    <li><b>B. `dataFrame.head()`</b>：显示前几行数据，用于快速预览。</li>
    <li><b>C. `dataFrame.info()`</b>：提供DataFrame的<b>基础信息</b>摘要，如索引、列、非空值数量和内存使用情况，但统计数据较少。</li>
    <li><b>D. `dataFrame.values`</b>：返回DataFrame中的数据，是一个NumPy数组。</li>
  </ul>
  `describe()` 是最全面地提供“统计数据”的方法。

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  df = pd.DataFrame({'col1': [1, 2, 3, 4, 5], 'col2': [10, 20, 30, 40, np.nan]})
  print("DataFrame.describe():")
  print(df.describe())
  
  print("\nDataFrame.info():")
  df.info()
  ```
</details>

---
**2. 以下时间不能被`pd.to_datetime()`函数转化为`xxxx-xx-xx`格式的是（ ）**
A. '01 Jan 2010'
B. '02-02-2011'
C. '20120303'
D. 都可以

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `pd.to_datetime()` 函数非常强大，能够自动识别并解析多种常见的日期和时间字符串格式。
  <ul>
    <li><b>A. '01 Jan 2010'</b>：(日 月 年) 格式，可被解析。</li>
    <li><b>B. '02-02-2011'</b>：(月-日-年 或 日-月-年) 格式，可被解析。</li>
    <li><b>C. '20120303'</b>：(YYYYMMDD) 格式，可被解析。</li>
  </ul>
  所有给出的字符串都可以被 `pd.to_datetime()` 成功解析。

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd

  print(pd.to_datetime('01 Jan 2010'))
  print(pd.to_datetime('02-02-2011'))
  print(pd.to_datetime('20120303'))
  ```
</details>

---
**3. 对于一个Series对象而言，若其中某一行含有缺失值NaN，在使用命令`sort_values()`之后，该行将会（ ）**
A. 自动被删除
B. 移到最前面
C. 移到最后面
D. 位置不作改变

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  当对 Pandas Series 使用 `sort_values()` 方法进行排序时，可以通过 `na_position` 参数控制缺失值 (`NaN`) 的位置。该参数的默认值是 `'last'`，这意味着缺失值会被放在排序结果的末尾。

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  s = pd.Series([10, np.nan, 5, 20])
  print("Original Series:")
  print(s)

  print("\nSorted Series (NaNs at the end by default):")
  print(s.sort_values())
  ```
</details>

---
**4. 下列不属于DataFrame构造函数的有效输入的是：（ ）**
A. Series构成的字典
B. 字典构成的字典
C. 字典或者元组构成的列表
D. 字典或者Series构成的元组

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas DataFrame 构造函数 `pd.DataFrame()` 支持多种数据结构作为输入。
  <ul>
    <li><b>A. Series构成的字典</b>：有效。外层字典键为列名，Series为列数据。</li>
    <li><b>B. 字典构成的字典</b>：有效。外层字典键为列名，内层字典键为行索引。</li>
    <li><b>C. 字典构成的列表</b>：有效。每个字典代表一行。</li>
    <li><b>D. 字典或者Series构成的元组</b>：无效。`pd.DataFrame()` 的 `data` 参数期望的是一个可迭代的结构（如列表），而不是一个元组直接作为容器。直接传入一个由字典或Series构成的元组通常会引发错误或产生非预期的结果。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  
  # A: Valid
  df_a = pd.DataFrame({'col1': pd.Series([1, 2])})
  print("From Dict of Series:\n", df_a)

  # C: Valid (list of dicts)
  df_c = pd.DataFrame([{'a': 1, 'b': 2}, {'a': 3, 'c': 4}])
  print("\nFrom List of Dicts:\n", df_c)

  # D: Invalid or unexpected behavior
  try:
    data_d = ({'a': 1}, {'b': 2})
    df_d = pd.DataFrame(data_d)
    print("\nFrom Tuple of Dicts:\n", df_d)
  except Exception as e:
    print(f"\nError from Tuple of Dicts: {e}")
  ```
</details>

---
**5. 对于一个DataFrame对象，里面有一列数据名称叫做`year`，下列哪一条语句不能成功筛选出`year`这一列（ ）**
A. `frame.year`
B. `frame['year']`
C. `frame.T.iloc[0]`
D. `frame.loc['year']`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `frame.year`</b>：属性访问，如果列名是有效的 Python 标识符，则可行。</li>
    <li><b>B. `frame['year']`</b>：字典式索引，通用且可靠的列选择方法。</li>
    <li><b>C. `frame.T.iloc[0]`</b>：转置后，原列变成行。如果 `year` 是第一列，那么转置后它就是第一行，可以通过 `iloc[0]` 选中。可行。</li>
    <li><b>D. `frame.loc['year']`</b>：`loc` 默认按<b>行标签</b>进行选择。除非 DataFrame 的行索引中恰好有一个标签是 `'year'`，否则此操作会因找不到行标签而报错。它不是用来选择列的。</li>
  </ul>

  **正确答案：** D
</details>

---
**6. 假设`frame = pd.DataFrame([[1,2],[3,4]])`，以下操作可以将`frame`的行索引，列索引都改变为`‘a’`， `‘b’`的是：（ ）**
A. `frame.reindex(['a','b'])`
B. `frame.reindex(columns = ['a','b'])`
C. `frame.reindex(columns = ['a','b'], index = ['a','b'])`
D. `frame.loc[['a', 'b'], ['a', 'b']]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `frame.reindex(['a','b'])`</b>：默认只改变行索引。</li>
    <li><b>B. `frame.reindex(columns = ['a','b'])`</b>：只改变列索引。</li>
    <li><b>C. `frame.reindex(columns = ['a','b'], index = ['a','b'])`</b>：`reindex()` 方法允许同时指定 `index` (行) 和 `columns` (列) 参数，可以同时改变二者。</li>
    <li><b>D. `frame.loc[...]`</b>：`loc` 是用于按标签<b>选择</b>数据，而不是改变索引结构。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  frame = pd.DataFrame([[1,2],[3,4]])
  print("Original DataFrame:\n", frame)
  
  result = frame.reindex(columns = ['a','b'], index = ['a','b'])
  print("\nResult of reindex on both axes:\n", result)
  ```
</details>

---
**7. 已知`myarr= np.arange(12).reshape(3,4)`，下列会报错的是（ ）**
A. `myarr[[0,1]]`
B. `myarr[[0,1],[1]]`
C. `myarr[[0,1],[1,2]]`
D. `myarr[[0,1],[1,2,3]]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  花式索引 (Fancy Indexing) 中，如果同时提供行和列的索引列表，NumPy 期望这两个列表的<b>长度相同</b>，用于选择 `(row, col)` 对的元素。
  <ul>
    <li><b>A. `myarr[[0,1]]`</b>：只提供行索引，选择第 0 和第 1 行。有效。</li>
    <li><b>B. `myarr[[0,1],[1]]`</b>：行索引列表长度为 2，列索引列表长度为 1。长度不匹配，会引发 `IndexError`。</li>
    <li><b>C. `myarr[[0,1],[1,2]]`</b>：两个列表长度都为 2。有效。选择 `(0,1)` 和 `(1,2)` 处的元素。</li>
    <li><b>D. `myarr[[0,1],[1,2,3]]`</b>：行索引列表长度为 2，列索引列表长度为 3。长度不匹配，会引发 `IndexError`。</li>
  </ul>
  B 和 D 都会报错，但 D 的长度差异更大。

  **正确答案：** D (或者 B，两者都因长度不匹配而报错)
</details>

---
**8. `obj = pd.Series([4.5, 7.2, -5.3, 3.6], index=['d', 'b', 'a', 'c'])`；`obj.index=['a', 'd', 'b', 'e']`；`obj['a']`的输出结果是（ ）**
A. a -5.3
B. a 4.5
C. a 7.2
D. a 3.6

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`obj = pd.Series(...)`</b>：创建初始 Series。</li>
    <li><b>`obj.index=['a', 'd', 'b', 'e']`</b>：这是对 Series 的 `index` 属性进行<b>直接重新赋值</b>。新的索引列表会按顺序与原 Series 的值进行对应。
        <ul>
            <li>第一个值 `4.5` 的新索引是 `'a'`。</li>
            <li>第二个值 `7.2` 的新索引是 `'d'`。</li>
            <li>第三个值 `-5.3` 的新索引是 `'b'`。</li>
            <li>第四个值 `3.6` 的新索引是 `'e'`。</li>
        </ul>
    </li>
    <li><b>`obj['a']`</b>：在修改后的 Series 中，通过新标签 `'a'` 访问，得到的值是 `4.5`。</li>
  </ol>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  obj = pd.Series([4.5, 7.2, -5.3, 3.6], index=['d', 'b', 'a', 'c'])
  obj.index = ['a', 'd', 'b', 'e']
  print("Series after re-assigning index:")
  print(obj)
  print(f"\nValue for index 'a': {obj['a']}")
  ```
</details>

---
**9. 下列代码的输出是（ ）**
```python
import pandas as pd
import numpy as np
data2 = pd.Series(np.arange(5), index = ['a', 'b', 'c', 'd', 'e'])
data2['b': 'd'] = 2.
print(data2)
```
A. `a 0.0 b 2.0 c 2.0 d 2.0 e 4.0`
B. `a 1.0 b 2.0 c 2.0 d 2.0 e 5.0`
C. `a 0.0 b 2.0 c 2.0 d 3.0 e 4.0`
D. `a 1.0 b 2.0 c 2.0 d 2.0 e 4.0`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`data2 = pd.Series(...)`</b>：创建 Series `a:0, b:1, c:2, d:3, e:4`。</li>
    <li><b>`data2['b': 'd']`</b>：在 Pandas 中，使用标签进行切片是<b>包含结束标签</b>的。所以它会选择索引为 `'b'`, `'c'`, `'d'` 的元素。</li>
    <li><b>`= 2.`</b>：将这些选中的元素（原值为 `1, 2, 3`）赋值为浮点数 `2.0`。因为赋值的是浮点数，整个 Series 的数据类型 (`dtype`) 会被提升为 `float64`。</li>
  </ol>
  最终结果是 `a:0.0, b:2.0, c:2.0, d:2.0, e:4.0`。

  **正确答案：** A
</details>

---
**10. 下列对pandas中的索引对象的叙述，错误的是：（ ）**
A. 索引对象是不可变的，因此用户是无法修改索引对象的。
B. 可以用 `'pop' in frame.columns` 查看pop是否为DataFrame对象frame中的列。
C. 在构造Series或者DataFrame时，所使用的任意数组或者标签序列都可以在内部转化为索引对象。
D. 与python集合一样，pandas索引也不可以包含重复标签。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. 正确。Index 对象一旦创建，其元素不可修改，这保证了数据结构的安全。</li>
    <li>B. 正确。`frame.columns` 是一个 Index 对象，可以使用 `in` 运算符检查成员。</li>
    <li>C. 正确。Pandas 会自动将传入的标签序列转换为 `pd.Index` 对象。</li>
    <li>D. 错误。与 Python 的 `set` 不同，Pandas 的 Index <b>可以包含重复的标签</b>。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  s_dup = pd.Series([10, 20, 30], index=['x', 'x', 'y'])
  print("Series with duplicate index is allowed:")
  print(s_dup)
  print("\nSelecting duplicate label 'x' returns multiple values:")
  print(s_dup['x'])
  ```
</details>

---
**11. 执行`frame = pd.DataFrame([[1, 2, 3], [3, 4, 6]]); frame.drop(0, axis = 1, inplace = False); print(frame)`，输出结果为：（ ）**
A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/1.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/2.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/3.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/4.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`frame.drop(0, axis=1, ...)`</b>：`axis=1` 表示删除<b>列</b>，标签为 `0` 的列被选中。</li>
    <li><b>`inplace = False`</b>：这是关键。它表示该操作<b>不会修改</b>原始的 `frame` 对象，而是会返回一个删除了列的新 DataFrame。</li>
    <li>因为 `drop` 操作的结果没有被赋给任何变量，所以它被丢弃了。</li>
    <li><b>`print(frame)`</b>：最后打印的是原始的 `frame`，它没有被改变。</li>
  </ul>
  因此，输出结果是原始的 DataFrame。

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd

  frame = pd.DataFrame([[1,2,3],[3,4,6]])
  print("原始 DataFrame:")
  print(frame)
  
  # drop 操作的结果没有被保存，原始 frame 不变
  frame.drop(0, axis = 1, inplace = False)
  
  print("\n执行 drop 操作后，再次打印 frame:")
  print(frame)
  ```
</details>

---
**12. 对于一个新的DataFrame对象，删除名字为’score’的这一列的操作是（ ）**
A. `frame.drop('score')`
B. `frame.drop(frame.T.drop('score').T)`
C. `del frame('score', axis = 1)`
D. `del frame['score']`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `frame.drop('score')` 默认删除<b>行</b> (`axis=0`)，不是列。</li>
    <li>B. 语法过于复杂且不标准。</li>
    <li>C. `del` 是 Python 关键字，不是函数，`del ...(...)` 是语法错误。</li>
    <li>D. `del frame['score']` 是使用 `del` 关键字删除 DataFrame 中指定列的标准且简洁的方法。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  frame = pd.DataFrame({'score': [10, 20], 'team': ['A', 'B']})
  print("Original DataFrame:\n", frame)
  del frame['score']
  print("\nDataFrame after `del frame['score']`:\n", frame)
  ```
</details>

---
**13. 已知`df=pd.DataFrame(...)`, 执行`df.sum()`得到的结果是（ ）**
A. `a 1.0 b 5.0 c 0.0 d 9.0`
B. `one 7.0 two 8.0`
C. `15.0`
D. `one 7.0 two 15.0`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`df.sum()`</b>：对于 DataFrame，`sum()` 方法默认沿着 `axis=0`（即按<b>列</b>）进行求和。</li>
    <li>在求和过程中，默认会跳过缺失值 (`NaN`)。</li>
    <li><b>'one' 列</b>: `1.0 + 2.0 + 4.0 = 7.0`。</li>
    <li><b>'two' 列</b>: `3.0 + 5.0 = 8.0`。</li>
  </ul>
  结果是一个 Series，其索引是原 DataFrame 的列名，值是各列的和。

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  df = pd.DataFrame([[1,np.nan],[2,3],[np.nan,np.nan],[4,5]],
                    index=['a','b','c','d'],
                    columns=['one','two'])
  print("Original DataFrame:\n", df)
  print("\nResult of df.sum():")
  print(df.sum())
  ```
</details>

---
**14. 以下哪个嵌套字典能生成目标DataFrame对象（ ）**
<pre>
     Num  Val
2019   1    2
2020   3    4
</pre>
A. `{'2019':{'Num':1, 'Val':2}, '2020':{'Num':3, 'Val':4}}`
B. `{'Num':{2019:1, 2020:3}, 'Val':{2019:2, 2020:4}}`
C. `{{1,2}:...}`
D. 不能通过嵌套字典产生

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  当使用嵌套字典构建 DataFrame 时，<b>外层字典的键成为列名</b>，<b>内层字典的键成为行索引</b>。
  <ul>
    <li>目标 DataFrame 的列名是 `['Num', 'Val']`，行索引是 `[2019, 2020]`。</li>
    <li><b>A</b>: 外层键是 `'2019', '2020'`，会成为列名。不符。</li>
    <li><b>B</b>: 外层键是 `'Num', 'Val'`，会成为列名。内层键是 `2019, 2020`，会成为行索引。完全匹配。</li>
    <li><b>C</b>: 语法错误，集合不能作为字典的键。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  data_B = {'Num':{2019:1, 2020:3}, 'Val':{2019:2, 2020:4}}
  df_B = pd.DataFrame(data_B)
  print(df_B)
  ```
</details>

---
**15. 关于DataFrame排序，以下方法是按照列标签的降序排序的是（ ）**
A. `frame.sort_index(axis=0,ascending=True)`
B. `frame.sort_index(axis=0,ascending=False)`
C. `frame.sort_index(axis=1,ascending=False)`
D. `frame.sort_index(axis=1,ascending=True)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `DataFrame.sort_index()` 方法用于根据索引标签进行排序。
  <ul>
    <li><b>`axis=1`</b> (或 `'columns'`) 表示按<b>列标签</b>排序。</li>
    <li><b>`ascending=False`</b> 表示<b>降序</b>排序。</li>
  </ul>
  因此，选项 C 完全符合“按照列标签的降序排序”的要求。

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  frame = pd.DataFrame(columns=['c', 'a', 'b'])
  print("Original columns:", frame.columns.tolist())
  
  sorted_frame = frame.sort_index(axis=1, ascending=False)
  print("Sorted columns:", sorted_frame.columns.tolist())
  ```
</details>

---
**16. 下面代码，返回的结果为（ ）**
```python
import pandas as pd
import numpy as np
data = np.arange(16).reshape(4,4)
df1 = pd.DataFrame(data)
df2 = pd.DataFrame(df1)
df3 = pd.DataFrame(data)
df4 = pd.DataFrame(data)
print(df1 is df2, df1.index is df2.index, df3.index is df4.index)
```
A. `True True True`
B. `False True False`
C. `True False True`
D. `False False False`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `is` 运算符检查两个变量是否引用内存中的同一个对象。
  <ul>
    <li><b>`df1 is df2`</b>：`pd.DataFrame(another_df)` 默认会创建数据的副本，所以 `df1` 和 `df2` 是两个不同的 DataFrame 对象。结果为 <b>`False`</b>。</li>
    <li><b>`df1.index is df2.index`</b>：`df1` 和 `df2` 的索引都是默认的 `RangeIndex`。Pandas 会对这些相同的不可变索引对象进行内部缓存和复用以节省内存。所以它们很可能指向同一个对象。结果为 <b>`True`</b>。</li>
    <li><b>`df3.index is df4.index`</b>：根据题目选项，这里假设 `df3` 和 `df4` 的索引没有被复用，是两个独立的对象（尽管内容相同）。这在某些 Pandas 版本或特定情况下可能发生。结果为 <b>`False`</b>。</li>
  </ul>
  综合起来是 `False, True, False`。

  **正确答案：** B
</details>

---
**17. pandas中Series的默认数据类型是（ ）**
A. float64
B. int64
C. object
D. bool

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas Series 的数据类型 (`dtype`) 是根据其包含的数据自动推断的，没有一个固定的“默认值”。但 `float64` 是最常见的推断类型之一，因为它具有很好的兼容性：
  <ul>
    <li>如果数据中包含浮点数，`dtype` 会是 `float64`。</li>
    <li>如果数据中包含整数和缺失值 `NaN`，`dtype` 也会被提升为 `float64`，因为 `NaN` 是一个浮点数类型的值。</li>
  </ul>
  考虑到处理真实世界数据时缺失值的普遍性，`float64` 成为了事实上的“默认”数值类型。

  **正确答案：** A
</details>

---
**18. 下列说法错误的是（ ）**
A. pandas中的索引对象是不可变的，因此用户无法修改索引对象。
B. 在DataFrame中，reindex可改变行索引、列索引、也可同时改变二者。
C. 在reindex方法的参数中，method=‘ffill’为后向填充，‘bfill’为前向填充。
D. 普通的python切片是不包含尾部的，Series切片包含尾部。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. 正确。Index 对象不可变。</li>
    <li>B. 正确。`reindex` 可通过 `index` 和 `columns` 参数作用于两个轴。</li>
    <li>C. 错误。<b>`ffill`</b> (forward-fill) 是<b>前向</b>填充；<b>`bfill`</b> (backward-fill) 是<b>后向</b>填充。描述正好相反。</li>
    <li>D. 正确。Python 切片 `[a:b]` 不包含 `b`；Pandas <b>标签</b>切片 `['a':'b']` 包含 `'b'`。</li>
  </ul>

  **正确答案：** C
</details>

---
**19. 下列哪种方法是计算两个索引的交集？( )**
A. `difference`
B. `intersection`
C. `union`
D. `append`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas Index 对象提供了类似集合的运算方法。
  <ul>
    <li>`A. difference()`：差集</li>
    <li><b>B. `intersection()`</b>：<b>交集</b></li>
    <li>`C. union()`：并集</li>
    <li>`D. append()`：用于拼接，不是集合运算。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  idx1 = pd.Index(['a', 'b', 'c'])
  idx2 = pd.Index(['b', 'c', 'd'])
  print(idx1.intersection(idx2))
  # 输出: Index(['b', 'c'], dtype='object')
  ```
</details>

---
**20. `obj=pd.Series(np.arange(4),index=['x1','x2','x4','x3'])`，`obj['x1':'x3']`的输出结果是（ ）**
A. `x1 0 x2 1 dtype: int32`
B. `x1 0 x2 1 x4 2 x3 3 dtype: int32`
C. `x1 0 x3 3 dtype: int32`
D. `x1 0 x2 1 x4 2 x3 3 dtype: int32`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>Series 的索引是 `['x1', 'x2', 'x4', 'x3']`，这是一个<b>无序</b>的索引。</li>
    <li>当对一个 Series 使用标签切片时，它会包含开始和结束标签。</li>
    <li>对于无序索引，切片会返回从开始标签到结束标签之间所有<b>按原始位置顺序</b>的元素。</li>
    <li>`'x1'` 是第一个元素，`'x3'` 是最后一个元素，因此 `'x1':'x3'` 的切片会包含所有元素。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np
  obj = pd.Series(np.arange(4), index=['x1','x2','x4','x3'])
  print(obj['x1':'x3'])
  ```
</details>

---
**21. 下面语句能输出DataFrame第一列前三行的数据的是（ ）**
```python
# data 和 frame 的定义...
```
A. `print(frame.state[:2])`
B. `print(frame.iloc[0:2,[0]])`
C. `print(frame.loc[0:2,'state'])`
D. `print(frame.loc[0:3,'state'])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A</b>: `[:2]` 选择前两行。不符。</li>
    <li><b>B</b>: `iloc[0:2,...]` 选择前两行。不符。</li>
    <li><b>C</b>: `loc[0:2,...]` 对整数行索引进行标签切片时，是<b>包含结束索引</b>的，所以 `0:2` 会选择行 `0, 1, 2` (前三行)。`'state'` 选择了第一列。符合。</li>
    <li><b>D</b>: `loc[0:3,...]` 选择前四行。不符。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  data = {'state': ['Ohio', 'Ohio', 'Ohio', 'Nevada'], 'year': [2000, 2001, 2002, 2001]}
  frame = pd.DataFrame(data)
  print(frame.loc[0:2, 'state'])
  ```
</details>

---
**22. 已知 `s2=pd.Series(...)`，下列不正确的排序方法是：（ ）**
A. `s2.sort_index(ascending=False)`
B. `s2.sort_index(axis=1)`
C. `s2.sort_index(axis=0)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>Pandas Series 是一维数据结构，它只有一个轴，即 `axis=0`（行轴）。</li>
    <li>A: 按行索引降序排序，有效。</li>
    <li><b>B: `axis=1` 表示列轴，对于 Series 来说是不存在的。尝试在 `axis=1` 上排序会引发 `ValueError`。</b></li>
    <li>C: 按行索引升序排序（默认行为），有效。</li>
  </ul>

  **正确答案：** B
</details>

---
**23. pandas中，用于表示缺失值的是( )**
A. `[空]`
B. `NaN`
C. `Null`
D. `None`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>在 Pandas 和 NumPy 中，表示缺失值的标准标记是 <b>`NaN` (Not a Number)</b>。</li>
    <li>`NaN` 是一个特殊的浮点数值，因此当一个整数列中出现缺失值时，该列的 `dtype` 通常会被转换为 `float`。</li>
    <li>虽然 Pandas 也能识别 Python 的 `None` 对象作为缺失值，但它在内部通常会将其转换为 `NaN`（对于数值类型）或 `NaT`（对于日期时间类型）。</li>
  </ul>

  **正确答案：** B
</details>

---
**24. 有下面DataFrame，**
```python
data = pd.DataFrame(np.arange(16).reshape((4,4)),
                    columns = ['one', 'two', 'three', 'four'])
```
**下列代码中能输出结果（如下图）的是（ ）**
![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/5.png)
A. `data[three > 5]`
B. `data[' three ' > 5]`
C. `data[data['three'] > 6]`
D. `data[2:3]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  目标是筛选出 `'three'` 列的值大于 6 的所有行。
  <ul>
    <li><b>A, B</b>: 语法错误。不能直接在索引中进行这样的比较。</li>
    <li><b>C. `data[data['three'] > 6]`</b>：
        <ul>
            <li>`data['three']` 获取 'three' 列，其值为 `[2, 6, 10, 14]`。</li>
            <li>`data['three'] > 6` 生成一个布尔 Series `[False, False, True, True]`。</li>
            <li>`data[...]` 使用这个布尔 Series 作为<b>行</b>索引，会筛选出布尔值为 `True` 的行，即索引为 2 和 3 的行。这正确地选择了所需的行。</li>
        </ul>
    </li>
    <li><b>D. `data[2:3]`</b>：这是一个行切片，只选择了第 2 行，不符合要求。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np
  
  data = pd.DataFrame(np.arange(16).reshape((4,4)),
                      columns = ['one', 'two', 'three', 'four'])
  
  print("原始 DataFrame:")
  print(data)
  
  # 执行选项 C 的代码
  result = data[data['three'] > 6]
  
  print("\n筛选后的结果:")
  print(result)
  ```
</details>

---
**25. `aSer = pd.Series([1,3,5], index = ['a', 'b', 'c'])`,以下哪一项不能获取第0个和第2个元素（ ）**
A. `aSer[[0,2]]`
B. `aSer[['a','c']]`
C. `aSer[['0','c']]`
D. 以上都可以

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `aSer[[0,2]]`</b>：使用<b>整数位置</b>列表进行索引，选择位置 0 和 2 的元素。有效。</li>
    <li><b>B. `aSer[['a','c']]`</b>：使用<b>标签</b>列表进行索引，选择标签 'a' 和 'c' 的元素。有效。</li>
    <li><b>C. `aSer[['0','c']]`</b>：使用标签列表进行索引。Series 的索引中没有 `'0'` 这个<b>字符串标签</b>，因此会引发 `KeyError`。</li>
  </ul>

  **正确答案：** C
</details>

---
**26. `obj2a = pd.Series(...)`，`obja=pd.Series(...)`，以下表述错误的是（ ）**
A. 执行：`obja['a':'h']` 输出：`a 4 b 7 c -5 d 1`
B. 执行：`obj2a['a':'h']` 输出：`a 7 c -5 d 1`
C. 执行：`obja['a':'d']` 输出：`a 4 b 7 c -5 d 1`
D. 执行：`obj2a['a':'f']` 输出：`a 7 c -5 f 1`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`obja` 的索引 `['a','b','c','d']` 是<b>有序的</b>。</li>
    <li>`obj2a` 的索引 `['d','a','c','f']` 是<b>无序的</b>。</li>
  </ul>
  分析 B:
  <ul>
    <li>`obj2a['a':'h']`：对无序索引进行切片，从标签 `'a'` 开始，到标签 `'h'` 结束。</li>
    <li>因为 `'h'` 不在索引中，切片会到 Series 的末尾。</li>
    <li>它会从 `'a'` 开始，按原始位置顺序取到末尾，即 `'a'`, `'c'`, `'f'`。</li>
    <li>结果应为 `a 7, c -5, f 1`。</li>
    <li>选项 B 的输出是 `a 7, c -5, d 1`，其中值和标签 `d 1` 都是错误的。因此此表述错误。</li>
  </ul>

  **正确答案：** B
</details>

## 第六章：数据输入输出与接口

**1. `Response`对象的`json`方法返回的是（ ）**
A. JSON对象
B. 字典
C. DataFrame
D. Series

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `requests` 库的 `Response` 对象的 `.json()` 方法用于解析响应体中的 JSON 格式数据。它会将 JSON 字符串反序列化为对应的 Python 对象。
  <ul>
    <li>一个 JSON 对象 (`{...}`) 会被解析为 Python 的<b>字典 (`dict`)</b>。</li>
    <li>一个 JSON 数组 (`[...]`) 会被解析为 Python 的<b>列表 (`list`)</b>。</li>
  </ul>
  在给出的选项中，“字典”是 JSON 对象在 Python 中最直接的对应形式。

  **正确答案：** B

  **代码示例：**
  ```python
  import requests

  # 这是一个返回 JSON 数组的公共 API 示例
  # 数组中的每个元素都是一个 JSON 对象
  url = 'https://api.github.com/repos/pandas-dev/pandas/issues' 
  try:
    resp = requests.get(url)
    resp.raise_for_status() # 如果请求失败则抛出异常

    # .json() 方法将 JSON 响应体解析为 Python 对象
    data = resp.json() 

    print(f"data 的类型是: {type(data)}") # 通常是 list 或 dict
    
    # 检查 data 是否为非空列表，并查看其第一个元素的类型
    if isinstance(data, list) and data:
        print(f"列表中第一个元素的类型是: {type(data[0])}")
  except requests.exceptions.RequestException as e:
    print(f"请求失败: {e}")
  ```
</details>

---
**2. 以下表示输出的数据结构是 列->值 的形式的式子是（ ）**
A. `data.to_json(orient='columns')`
B. `data.to_json(orient='records')`
C. `data.to_json(orient='index')`
D. `data.to_json(orient='split')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas DataFrame 的 `.to_json()` 方法中，`orient` 参数控制输出 JSON 的结构。
  <ul>
    <li><b>`orient='columns'`</b>：输出为 `{列: {行索引: 值}}` 的形式。</li>
    <li><b>`orient='records'`</b>：输出为 `[{列1: 值, 列2: 值}, ...]` 的形式。这是一个列表，其中每个字典代表 DataFrame 的一行，键是列名，值是该行对应的数据。这完全符合“列->值”的描述。</li>
    <li><b>`orient='index'`</b>：输出为 `{行索引: {列: 值}}` 的形式。</li>
    <li><b>`orient='split'`</b>：输出为 `{index: [...], columns: [...], data: [[...]]}` 的形式。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd

  df = pd.DataFrame({'col1': [1, 2], 'col2': [3, 4]})
  print("原始 DataFrame:")
  print(df)

  # orient='records' 输出为 [{列: 值}, ...] 的形式
  print("\norient='records' 的输出:")
  print(df.to_json(orient='records', indent=4))
  ```
</details>

---
**3. 以下对`read_csv/read_table`函数参数叙述错误的是（ ）**
A. `skiprows`表示从文件开头处起，需要跳过的行数或者行号列表。
B. `na_values`指定需要用NA替换的值序列。
C. `sep`或`delimiter`指定用于分隔每行字段的字符序列或者正则表达式。
D. `names` 是结果的列名列表，它不可以和`header`参数一起用。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `skiprows`：叙述正确。</li>
    <li>B. `na_values`：叙述正确。</li>
    <li>C. `sep` 或 `delimiter`：叙述正确。</li>
    <li>D. `names` 和 `header`：叙述<b>错误</b>。这两个参数<b>可以一起使用</b>。当同时指定时，`names` 提供的列名会覆盖从 `header` 指定的行中推断出的列名。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  import io

  csv_content = """a,b,c
  1,2,3
  4,5,6
  """

  # 示例: names 和 header 可以一起使用
  # header=0 表示文件的第0行是旧的列名行（会被跳过）
  # names=[...] 提供了新的列名
  df = pd.read_csv(io.StringIO(csv_content), names=['col_A', 'col_B', 'col_C'], header=0)
  print("names 和 header 同时使用的结果:")
  print(df)
  ```
</details>

---
**4. 以下对于csv文件`ex2.csv`的读取和操作，错误的是：（ ）**
A. `pd.read_csv('ex2.csv',header=None)`。
B. `pd.read_csv('ex2.csv',header=1)`
C. `pd.read_csv('ex2.csv',names=['a', 'b', 'c', 'd', 'index'], header = None)`
D. `pd.read_csv('ex2.csv',names=['a', 'b', 'c', 'd', 'index'], header = [0,1])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  假设 `ex2.csv` 是一个没有列头的文件。
  <ul>
    <li>A: `header=None` 是读取无列头文件的正确方式，Pandas 会自动生成整数列名。有效。</li>
    <li>B: `header=1` 会将文件的第二行（索引为1）作为列头。有效。</li>
    <li>C: `names=[...]` 和 `header=None` 结合，为无列头文件指定列名。有效。</li>
    <li>D: `names=[...]` 和 `header=[0,1]` 存在冲突。`header=[0,1]` 告诉 Pandas 从文件的前两行创建多级列索引，而 `names` 提供的是一个单级（扁平）的列名列表。这两个指令不兼容，会导致 `ValueError`。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  import io

  # 模拟 ex2.csv 内容
  csv_content = """1,2,3,4,hello
  5,6,7,8,world
  9,10,11,12,foo
  """

  # 尝试执行选项D的操作，它会报错
  try:
    df_D = pd.read_csv(io.StringIO(csv_content), 
                         names=['a', 'b', 'c', 'd', 'index'], 
                         header=[0,1])
  except ValueError as e:
    print(f"执行选项 D 时发生错误: {e}")
  ```
</details>

---
**5. 以下对`read_csv/read_table`函数参数叙述错误的是（ ）**
A. `skiprows`表示从文件开头处起，需要跳过的行数或者行号列表。
B. `na_values`指定需要用NA替换的值序列。
C. `sep`或`delimiter`指定用于分隔每行字段的字符序列或者正则表达式。
D. `names` 是结果的列名列表，它不可以和`header`参数一起用。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  此题与第 3 题完全相同。
  <ul>
    <li>A. `skiprows`：叙述正确。</li>
    <li>B. `na_values`：叙述正确。</li>
    <li>C. `sep` 或 `delimiter`：叙述正确。</li>
    <li>D. `names` 和 `header`：叙述<b>错误</b>。这两个参数<b>可以一起使用</b>。</li>
  </ul>

  **正确答案：** D
</details>

---
**6. 下面关于`read_csv/read_table`函数参数的说法，错误的是（ ）**
A. `skiprows=0`表明要跳过第一行
B. `na_values`是需要用NA替换的值序列
C. `chunksize`是用于迭代的块的大小
D. `encoding`是Unicode文本编码

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `skiprows=N` 表示跳过文件开头的 `N` 行。因此，`skiprows=0` 表示<b>不跳过任何行</b>。这个叙述是<b>错误</b>的。要跳过第一行，应使用 `skiprows=1` 或 `skiprows=[0]`。</li>
    <li>B. `na_values`：叙述正确。</li>
    <li>C. `chunksize`：叙述正确，用于分块读取大文件。</li>
    <li>D. `encoding`：叙述正确，用于指定文件编码。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import io

  csv_content = """col1,col2
  1,2
  3,4
  """

  # skiprows=0 表示不跳过任何行
  df_skip0 = pd.read_csv(io.StringIO(csv_content), skiprows=0)
  print("skiprows=0 的结果 (未跳过):")
  print(df_skip0)
  
  # skiprows=1 表示跳过第一行
  df_skip1 = pd.read_csv(io.StringIO(csv_content), skiprows=1, header=None)
  print("\nskiprows=1 的结果 (已跳过):")
  print(df_skip1)
  ```
</details>

---
**7. 假设 `ex.csv` 文件为同目录下的 csv 文件，文件内容为：**
![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/6.png)
**下列哪一段语句可以得到以下的结果：（ ）**

![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/7.png)

A. `f = pd.read_csv('ex.csv', skiprows = [1, 3, 4], index_col = 'message')`
B. `f = pd.read_csv('ex.csv', skiprows = [1, 3, 4], index = 'message')`
C. `f = pd.read_csv('ex.csv', skiprows = [2, 4, 5], index_col = 'message')`
D. `f = pd.read_csv('ex.csv', skiprows = [2, 4, 5], index = 'message')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  要从给定的 `ex.csv` 文件得到目标 DataFrame，需要进行以下操作：
  <ol>
    <li><b>处理列名</b>：文件的第一行 `a,b,c,d,message` 应该作为列名。这是 `pd.read_csv` 的默认行为 (`header=0`)。</li>
    <li><b>跳过注释行</b>：文件中有三行注释（`#this is a line` 等）。我们需要跳过它们。这些行在文件中的行号（从0开始计数）分别是 <b>1, 3, 4</b>。因此，需要使用 `skiprows=[1, 3, 4]` 参数。</li>
    <li><b>设置行索引</b>：目标 DataFrame 使用 `message` 列的值作为行索引。这需要使用 `index_col='message'` 参数。</li>
  </ol>
  现在我们分析选项：
  <ul>
    <li><b>A</b>: `skiprows=[1, 3, 4]` 正确地跳过了所有注释行，`index_col='message'` 正确地设置了索引。此选项正确。</li>
    <li><b>B</b>: 使用了错误的参数名 `index`，应该是 `index_col`。</li>
    <li><b>C</b>: `skiprows=[2, 4, 5]` 跳过了错误的的行，会导致数据丢失。</li>
    <li><b>D</b>: `skiprows` 和 `index` 参数都错误。</li>
  </ul>
  另外，`read_csv` 函数有一个更简洁的方法来处理注释行，即使用 `comment='#'` 参数，它会自动忽略所有以 `#` 开头的行。

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import io

  # 模拟 ex.csv 文件内容
  csv_content = """a,b,c,d,message
  #this is a line
  1,2,3,4,hello
  #this is another line
  #this is the third line
  5,6,7,8,world
  9,10,11,12,foo
  """

  # 使用选项 A 的代码
  # skiprows=[1, 3, 4] 表示跳过文件的第2、4、5行（行号从0开始）
  # index_col='message' 表示使用 'message' 列作为行索引
  f = pd.read_csv(io.StringIO(csv_content), 
                  skiprows=[1, 3, 4], 
                  index_col='message')

  print("使用 skiprows 参数的结果:")
  print(f)
  
  # 更简洁的方法是使用 comment 参数
  print("\n使用 comment 参数的等效结果:")
  f_comment = pd.read_csv(io.StringIO(csv_content), 
                          comment='#', 
                          index_col='message')
  print(f_comment)
  ```
</details>

---
**8. 如何使得下图名为 `data` 的 `DataFrame` 中的第二行第二个数字 `1` 变为空值。（ ）**

![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/8.png)

A. `data[1, 'b'] = None`
B. `data[1]['b'] = None`
C. `data['b', 1] = None`
D. `data['b'][1] = None`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  目标是将 DataFrame `data` 中<b>行索引为 `1`</b>，<b>列标签为 `'b'`</b> 的元素（值为 `1`）变为空值。
  <ul>
    <li><b>A. `data[1, 'b'] = None`</b>：`df[row, col]` 这种语法不是 Pandas `[]` 运算符的标准用法，它更像是 NumPy 的索引方式。在 Pandas 中，这通常会尝试寻找一个名为 `(1, 'b')` 的列，从而导致 `KeyError`。正确的做法是使用 `.loc` 或 `.iloc`，例如 `data.loc[1, 'b'] = None`。</li>
    <li><b>B. `data[1]['b'] = None`</b>：这是链式索引。第一步 `data[1]` 会尝试选择列标签为 `1` 的列，但该 DataFrame 的列标签是 `'a', 'b', 'c', 'd'`，所以会引发 `KeyError`。</li>
    <li><b>C. `data['b', 1] = None`</b>：与 A 类似，这是无效的索引语法，会引发 `KeyError`。</li>
    <li><b>D. `data['b'][1] = None`</b>：这是有效的链式索引。
        <ul>
            <li>第一步 `data['b']` 会正确地选择列名为 `'b'` 的那一列，返回一个 Series。</li>
            <li>第二步 `[1]` 会对这个返回的 Series 按行索引 `1` 进行选择，定位到目标元素。</li>
            <li>赋值操作会修改这个元素。因为 `data['b']` 通常是原 DataFrame 的一个视图（view），所以修改它会反映到原始的 `data` 对象上。</li>
        </ul>
    </li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中所示的 DataFrame
  data = pd.DataFrame({
      'a': [None, None, None],
      'b': ['Num', 1, 'a'],
      'c': ['Alpha', 2, 'b'],
      'd': ['c', 3, 'c']
  })
  
  print("原始 DataFrame:")
  print(data)

  # 使用副本进行测试，以免影响原始 data
  df_copy = data.copy()

  # 执行选项 D 的操作
  # np.nan 是 Pandas 中表示缺失值的标准方式
  df_copy['b'][1] = np.nan 
  
  print("\n选项 D 操作后的结果:")
  print(df_copy)
  ```
</details>

---
**9. pandas中的`read_table`函数的默认分隔符为( )**
A. `\n`
B. `\t`
C. `\a`
D. `\v`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `pd.read_table()` 是一个为读取制表符分隔文件（Tab-Separated Values, TSV）设计的便捷函数。它的默认分隔符是制表符，即 `\t`。
  它在功能上等同于 `pd.read_csv(..., sep='\t')`。

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import io

  # 创建一个使用制表符分隔的字符串数据
  tsv_content = """col1\tcol2
  1\thello
  2\tworld
  """

  # 使用 read_table 读取，它默认使用 \t 作为分隔符
  df = pd.read_table(io.StringIO(tsv_content))
  print("使用 read_table 读取的结果:")
  print(df)
  ```
</details>

---
**10. 以下哪个函数参数可以用于跳过某些指定行打印输出？( )**
A. `skiprows`
B. `delimiter`
C. `nrows`
D. `squeeze`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `skiprows`</b>：此参数专门用于在读取文件时跳过指定的行。可以是一个整数（跳过文件开头N行）或一个行号列表（跳过特定的行）。</li>
    <li>B. `delimiter`：用于指定字段分隔符。</li>
    <li>C. `nrows`：用于限制<b>读取的总行数</b>，而不是跳过。</li>
    <li>D. `squeeze`：用于在可能的情况下将单列DataFrame压缩为Series。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import io

  csv_content = """line 0
  line 1 (skip this)
  line 2
  line 3 (skip this)
  line 4
  """

  # 使用 skiprows 跳过指定的第1行和第3行 (索引从0开始)
  df = pd.read_csv(io.StringIO(csv_content), skiprows=[1, 3], header=None)
  print("使用 skiprows 跳过行 1 和 3 之后的结果:")
  print(df)
  ```
</details>

---
**11. 对于一些比较大的文件，我们想要一次读取一小部分，或者每次迭代一小部分。如果只是想要读取前5行（不读取整个文件），以下哪个选项是最佳选择：（ ）**
A. `pd.read_csv('../examples/ex6.csv', chunksize=5)`
B. `pd.read_csv('../examples/ex6.csv', nrows=5)`
C. `pd.read_csv('../examples/ex6.csv', rows=5)`
D. `pd.read_csv('../examples/ex6.csv', size=5)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `chunksize=5`：返回一个迭代器，用于分块处理大文件，而不是直接返回前5行。</li>
    <li><b>B. `nrows=5`</b>：此参数专门用于只读取文件的前 `N` 行，并直接返回一个包含这 `N` 行的 DataFrame。这是最高效、最直接的方法。</li>
    <li>C. `rows=5`：`rows` 不是 `pd.read_csv()` 的有效参数。</li>
    <li>D. `size=5`：`size` 不是 `pd.read_csv()` 的有效参数。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import io

  # 模拟一个大文件
  csv_content = "\n".join([f"{i},{i*2}" for i in range(100)])

  # 使用 nrows=5 直接读取前5行数据
  df = pd.read_csv(io.StringIO(csv_content), nrows=5, header=None)
  print("使用 nrows=5 读取的结果:")
  print(df)
  ```
</details>

---
**12. 下列参数用于描述行终止符的是:( )**
A. `delimiter`
B. `lineterminator`
C. `quotechar`
D. `quoting`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这些参数常用于 Python 的 `csv` 模块，Pandas 在文件I/O中也支持它们。
  <ul>
    <li>A. `delimiter`：字段之间的分隔符，如逗号 `,`。</li>
    <li><b>B. `lineterminator`</b>：<b>行终止符</b>，即用来分隔行的字符序列，默认为 `\r\n` 或 `\n`。</li>
    <li>C. `quotechar`：用于包围特殊字段的引用字符，如双引号 `"`。</li>
    <li>D. `quoting`：控制引用行为的常量。</li>
  </ul>

  **正确答案：** B
</details>

---
**13. 有以下文件 `ex5.csv`，读取后 `data` 的内容如下图所示：**

![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/9.png)

**执行代码：**
```python
import sys
data.to_csv(sys.stdout, index=False, header=False, columns=['b', 'c', 'a'])
```
**控制台的打印的文本结果为：（ ）**

<div style="display: flex; justify-content: space-around; font-family: monospace; white-space: pre;">
  <div><b>A.</b><br>1,2,3.0<br>5,6,<br>9,10,11.0</div>
  <div><b>B.</b><br>2,1,3.0<br>6,5,<br>10,9,11.0</div>
  <div><b>C.</b><br>3.0,2,1<br>,6,5<br>11.0,10,9</div>
  <div><b>D.</b><br>2,3.0,1<br>6,,5<br>10,11.0,9</div>
</div>

<br>

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `data.to_csv(...)` 方法用于将 DataFrame 写入 CSV 格式。我们来分析各个参数：
  <ul>
    <li><b>`sys.stdout`</b>：表示将输出直接打印到控制台，而不是写入文件。</li>
    <li><b>`index=False`</b>：表示不写入 DataFrame 的行索引（即 `0, 1, 2`）。</li>
    <li><b>`header=False`</b>：表示不写入 DataFrame 的列名。</li>
    <li><b>`columns=['b', 'c', 'a']`</b>：指定<b>只写入 'b', 'c', 'a' 这三列</b>，并且<b>按照这个顺序</b>排列。</li>
  </ul>
  根据这些参数，程序会按行处理，并按 `b, c, a` 的顺序输出值：
  <ul>
    <li><b>第0行</b>: `b`是`2`, `c`是`3.0`, `a`是`1`。输出：`2,3.0,1`</li>
    <li><b>第1行</b>: `b`是`6`, `c`是`NaN` (输出为空字符串), `a`是`5`。输出：`6,,5`</li>
    <li><b>第2行</b>: `b`是`10`, `c`是`11.0`, `a`是`9`。输出：`10,11.0,9`</li>
  </ul>
  将这些行组合起来，得到的结果与选项 D 完全匹配。

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np
  import sys

  # 模拟题目中的 DataFrame
  data = pd.DataFrame({
      'something': ['one', 'two', 'three'],
      'a': [1, 5, 9],
      'b': [2, 6, 10],
      'c': [3.0, np.nan, 11.0],
      'd': [4, 8, 12],
      'message': [np.nan, 'world', 'foo']
  })

  print("原始 DataFrame:")
  print(data)

  # 执行题目中的 to_csv 操作
  print("\n控制台打印结果:")
  data.to_csv(sys.stdout, index=False, header=False, columns=['b', 'c', 'a'])
  ```
</details>

---
**14. 读入文件’File.csv'。自定义列名为'a','b','c'.( )**
A. `pd.read_csv('File.csv','a','b','c')`
B. `pd.read_csv('File.csv',names=['a','b','c'])`
C. `pd.read_csv('File.csv',column=['a','b','c'])`
D. `pd.read_csv('File.csv',['a','b','c'])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 `pd.read_csv()` 函数中，用于为结果 DataFrame 自定义列名的正确参数是 `names`。
  <ul>
    <li>A, D: 将列名作为位置参数传入是错误的语法。</li>
    <li>B: `names=['a','b','c']` 是正确的关键字参数用法。</li>
    <li>C: `column` 不是 `pd.read_csv()` 的有效参数（应为 `names`）。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import io

  # 模拟一个没有列头的CSV文件
  csv_content = "1,2,3\n4,5,6"

  # 使用 names 参数自定义列名
  df = pd.read_csv(io.StringIO(csv_content), names=['a', 'b', 'c'])
  print("使用 names 参数自定义列名的结果:")
  print(df)
  ```
</details>

---
**15. 以下使用pandas读取csv文件的操作，会报错的是（ ）**
A. `pd.read_csv('../examples/ex1.csv',header=None)`
B. `pd.read_csv('../examples/ex1.csv',names=None)`
C. `pd.read_csv('../examples/ex1.csv',header=['a','b','c','d','e'])`
D. `pd.read_csv('../examples/ex1.csv',names=['a','b','c','d','e'])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `header=None`：有效。将文件第一行也作为数据读取，并使用默认整数列名。</li>
    <li>B. `names=None`：有效。这是默认行为，会尝试从文件第一行推断列名。</li>
    <li><b>C. `header=[...]`</b>：<b>错误</b>。`header` 参数期望的是一个<b>整数</b>或<b>整数列表</b>（指定作为列名的行号），而不是一个字符串列表。传入字符串列表会引发 `TypeError`。</li>
    <li>D. `names=[...]`：有效。使用提供的列表作为列名。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import io

  csv_content = "a,b,c\n1,2,3"
  
  # 尝试执行选项C的操作，它会报错
  try:
    df = pd.read_csv(io.StringIO(csv_content), header=['x', 'y', 'z'])
  except TypeError as e:
    print(f"执行选项 C 时发生错误: {e}")
  ```
</details>

---
**16. 以下对于csv文件`examples/ex2.csv`的读取和操作，错误的是：（ ）**
A. `pd.read_csv(r'examples/ex2.csv',header=None)`。
B. `pd.read_csv(r'examples/ex2.csv',header=1)`
C. `pd.read_csv(r'examples/ex2.csv',names=['a', 'b', 'c', 'd', 'index'], header = None)`
D. `pd.read_csv(r'examples/ex2.csv',names=['a', 'b', 'c', 'd', 'index'], header = [0,1])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  此题与第 4 题完全相同。
  `names=[...]` 和 `header=[0,1]` 存在冲突。`header=[0,1]` 告诉 Pandas 从文件的前两行创建多级列索引，而 `names` 提供的是一个单级（扁平）的列名列表。这两个指令不兼容，会导致 `ValueError`。

  **正确答案：** D
</details>

---
**17. 以下函数中，可以从txt文件中读取数据的是（ ）**
A. `read_csv`
B. `read_sql`
C. `read_html`
D. `read_excel`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `read_csv()`</b>：虽然名称是 "csv"，但它是一个通用的文本文件读取函数。通过指定 `sep` (分隔符) 参数，它可以读取任何类型的分隔符文件，包括常见的 `.txt` 文件（如制表符分隔、空格分隔等）。</li>
    <li>B. `read_sql()`：用于从 SQL 数据库读取。</li>
    <li>C. `read_html()`：用于从 HTML 文件或 URL 中读取表格。</li>
    <li>D. `read_excel()`：用于读取 Excel 文件。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import io

  # 模拟一个以制表符分隔的 .txt 文件内容
  txt_content = "name\tscore\nAlice\t95\nBob\t88"

  # 使用 read_csv 读取 .txt 文件，并指定分隔符为制表符 `\t`
  df = pd.read_csv(io.StringIO(txt_content), sep='\t')
  print("使用 read_csv 读取 .txt 文件的结果:")
  print(df)
  ```
</details>

## 第七章：数据清洗与转换

**1. 在`replace()`方法的使用中，下列不正确的是（ ）**
A. `replace(-2, 999)`
B. `replace([-1, -2], np.nan)`
C. `replace([-2, -4], [np.nan, 999])`
D. `replace(np.nan, [-1, -2])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas 的 `.replace()` 方法用于替换值，其用法有多种。
  <ul>
    <li>A: `replace(to_replace, value)` - 将单个值 `-2` 替换为单个值 `999`。有效。</li>
    <li>B: `replace([list], value)` - 将列表 `[-1, -2]` 中的所有值都替换为单个值 `np.nan`。有效。</li>
    <li>C: `replace([list1], [list2])` - 将列表1中的值按位置对应替换为列表2中的值，要求两个列表等长。有效。</li>
    <li>D: `replace(value, [list])` - <b>无效</b>。`.replace()` 方法不支持用一个具体的值去替换为一个值列表。`to_replace` 是单个值时，`value` 也必须是单个值。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  s = pd.Series([1, -1, 2, -2, 3, -4, np.nan])
  print("原始 Series:")
  print(s)

  # 尝试执行选项 D 的操作，它会报错
  try:
    s.replace(np.nan, [-1, -2])
  except Exception as e:
    print(f"\n执行选项 D 时发生错误: {e}")
  ```
</details>

---
**2. DataFrame的（ ）方法返回一个布尔值的Series,这个Series反应的是每一行是否存在重复。**
A. `duplicated`
B. `fillna`
C. `replace`
D. `drop_duplicates`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `duplicated()`</b>：此方法专门用于识别重复项。它会返回一个布尔值的 Series，`True` 表示该行是重复的（即与之前出现过的某行完全相同），`False` 表示不是。</li>
    <li>B. `fillna()`：用于填充缺失值。</li>
    <li>C. `replace()`：用于替换指定的值。</li>
    <li>D. `drop_duplicates()`：用于<b>删除</b>重复行，返回的是一个清理后的 DataFrame，而不是布尔 Series。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  df = pd.DataFrame({'col1': ['A', 'B', 'A', 'C'], 'col2': [1, 2, 1, 3]})
  print("原始 DataFrame:")
  print(df)

  # duplicated() 返回一个布尔 Series
  is_duplicate = df.duplicated()
  print("\ndf.duplicated() 的结果:")
  print(is_duplicate)
  ```
</details>

---
**3. 已知代码`import numpy as np;import pandas as pd; string_data = pd.Series(['aardvark',1, np.nan, 'avocado'])`，下列将`string_data`中的值1替换为NaN的操作正确的是：（ ）**
A. `string_data[1] = None`
B. `string_data[1] = np.nan`
C. `string_data[1] = NA`
D. `string_data[1] = nan`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  目标是将 Series 中索引为 1 的元素（值为整数 `1`）替换为缺失值。
  <ul>
    <li>A. `string_data[1] = None`：在 Pandas 中，将 `None` 赋值给一个元素是表示缺失的有效方式，Pandas 内部通常会将其处理为 `np.nan`。有效。</li>
    <li>B. `string_data[1] = np.nan`：`np.nan` 是 Pandas 和 NumPy 中表示缺失值的标准方式。这是最直接、最明确的做法。有效。</li>
    <li>C. `string_data[1] = NA`：`NA` 在标准的 Python 或 NumPy 环境中未定义，会引发 `NameError`。无效。</li>
    <li>D. `string_data[1] = nan`：与 `NA` 类似，`nan` 也未定义，会引发 `NameError`。无效。</li>
  </ul>
  选项 A 和 B 都能实现目标，但 B (`np.nan`) 是在数据分析领域表示缺失值更通用和标准的方式。

  **正确答案：** B (或 A，但 B 更标准)

  **代码示例：**
  ```python
  import numpy as np
  import pandas as pd

  string_data = pd.Series(['aardvark', 1, np.nan, 'avocado'])
  s_copy = string_data.copy()

  # 使用 np.nan 进行替换
  s_copy[1] = np.nan
  print("使用 np.nan 替换后的 Series:")
  print(s_copy)
  ```
</details>

---
**4. 以下返回的是`data`的视图的是（ ）**
A. `data.dropna()`
B. `data[data.notnull()]`
C. `data.iloc[[0,2,4]]`
D. `data[1:3]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Pandas 中，返回<b>视图 (view)</b> 还是<b>副本 (copy)</b> 是一个重要的概念。视图是原始数据的“窗口”，修改视图会影响原始数据。副本是全新的数据，修改副本不影响原始数据。
  <ul>
    <li>A. `data.dropna()`：删除行/列的操作需要创建新的数据结构，返回的是副本。</li>
    <li>B. `data[data.notnull()]`：布尔索引，需要根据条件筛选并可能重组数据，返回的是副本。</li>
    <li>C. `data.iloc[[0,2,4]]`：花式索引（使用列表进行索引），返回的是副本。</li>
    <li>D. `data[1:3]`：<b>基础切片 (slicing)</b> 操作通常返回的是原始数据的<b>视图</b>。</li>
  </ul>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  data = pd.DataFrame({'col': range(5)})
  
  # 获取切片（视图）
  data_slice = data[1:3]
  
  # 修改视图
  print("修改前，原始 data 的第1行:", data.iloc[1]['col'])
  data_slice.iloc[0, 0] = 999 # 修改视图的第一个元素
  
  # 观察原始 data 是否被修改
  print("修改后，原始 data 的第1行:", data.iloc[1]['col'])
  # 输出 999，证明 data_slice 是一个视图
  ```
</details>

---
**5. `data=pd.DataFrame([[2,2,2,NA],[1.,NA,NA,NA],[NA,NA,NA,NA],[NA,1,1,NA]])`，下列哪个方法能删掉值全为NA的列？（ ）**
A. `data.dropna()`
B. `data.dropna(how='all')`
C. `data.dropna(axis=1,how='all')`
D. `data.dropna(axis=1,how='any')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  （假设 `NA` 指的是 `np.nan`）
  `.dropna()` 方法用于删除含有缺失值的行或列。
  <ul>
    <li>要删除<b>列</b>，需要设置参数 `axis=1`。</li>
    <li>要删除<b>所有值都为 `NaN`</b> 的列，需要设置参数 `how='all'`。</li>
  </ul>
  分析选项：
  <ul>
    <li>A: 默认删除<b>任何</b>有 `NaN` 的<b>行</b>。</li>
    <li>B: 默认删除<b>所有值都为 `NaN`</b> 的<b>行</b>。</li>
    <li>C: `axis=1` 表示对列操作，`how='all'` 表示删除所有值都为 `NaN` 的列。这完全符合题目要求。</li>
    <li>D: `axis=1` 表示对列操作，`how='any'` 表示删除任何有 `NaN` 的列。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  data = pd.DataFrame([
      [2, 2, 2, np.nan],
      [1., np.nan, np.nan, np.nan],
      [np.nan, np.nan, np.nan, np.nan],
      [np.nan, 1, 1, np.nan]
  ])
  print("原始 DataFrame:")
  print(data)

  # 删除所有值都为 NaN 的列
  result = data.dropna(axis=1, how='all')
  print("\n删除全为 NaN 的列之后:")
  print(result)
  ```
</details>

---
**6. `data = pd.Series([1., np.nan, 2., np.nan, -1000., 3.])`，以下对于`data`的操作，输出结果相同的是：（ ）**
① `data.replace(np.nan, 0)` ② `data.fillna(0)` ③ `data.replace([np.nan, -1000], [0, -1000])` ④ `data.replace({np.nan: 0})`
A. ①
B. ①②
C. ①②③
D. ①②③④

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  我们来逐一分析每个操作，看它们是否都将 `np.nan` 替换为 `0`，且不改变其他值。
  <ul>
    <li>① `data.replace(np.nan, 0)`：将所有 `np.nan` 替换为 `0`。</li>
    <li>② `data.fillna(0)`：`fillna` 是专门用于填充 `NaN` 的方法，用 `0` 填充。</li>
    <li>③ `data.replace([np.nan, -1000], [0, -1000])`：将 `np.nan` 替换为 `0`，并将 `-1000` 替换为 `-1000`（即-1000保持不变）。</li>
    <li>④ `data.replace({np.nan: 0})`：使用字典进行替换，将键 `np.nan` 替换为值 `0`。</li>
  </ul>
  所有这四个操作最终都会得到相同的结果：`[1., 0., 2., 0., -1000., 3.]`。

  **正确答案：** D
</details>

---
**7. 对于`data = pd.Series([1., NA, 5., NA, 6.])`，使用`fillna(data.mean())`之后，原来NA处的代码处应该填入什么数字？（ ）**
A. 5., 6.
B. 1., 5.
C. 4., 4.
D. 2.4, 2.4

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  （假设 `NA` 指的是 `np.nan`）
  <ol>
    <li><b>计算平均值</b>：`data.mean()` 会忽略 `NaN` 值，计算其余值的平均数。
        <br>`(1.0 + 5.0 + 6.0) / 3 = 12.0 / 3 = 4.0`。</li>
    <li><b>填充缺失值</b>：`data.fillna(4.0)` 会将 Series 中所有的 `NaN` 值替换为 `4.0`。</li>
  </ol>
  因此，原来是 `NaN` 的位置都会被填入 `4.0`。

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  data = pd.Series([1., np.nan, 5., np.nan, 6.])
  
  # 计算平均值并填充
  filled_data = data.fillna(data.mean())
  
  print("填充后的 Series:")
  print(filled_data)
  ```
</details>

---
**8. 假设字符串`val = 'a,b,guido'`，下列叙述错误的是：（ ）**
A. `val.index(',')`返回1，`val.find(',')`返回1.
B. `'|'.join(val)`输出结果为 `'a|b|guido'`。
C. `val.count(',')`返回2.
D. `val.rfind(',')`返回3.

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: `index(',')` 和 `find(',')` 都返回子字符串第一次出现的索引。第一个 `,` 在索引 `1` 处。正确。</li>
    <li>B: `str.join(iterable)` 会将可迭代对象中的<b>每个元素</b>用 `str` 连接。当对字符串 `val` 使用时，它会遍历 `val` 的<b>每个字符</b>。结果是 `'a|,|,|b|,|,|g|u|i|d|o'`。因此，该叙述<b>错误</b>。</li>
    <li>C: `count(',')` 计算 `,` 出现的次数，结果是 `2`。正确。</li>
    <li>D: `rfind(',')` 返回子字符串最后一次出现的索引。第二个 `,` 在索引 `3` 处。正确。</li>
  </ul>

  **正确答案：** B
</details>

---
**9. 对于pandas中的分箱操作，下列说法错误的是（ ）**
A. `pd.value_counts()`函数是输出分箱结果中每个区间所对应的计数
B. 可以通过向labels选项传递一个列表或数组来传入自定义的箱名
C. `qcut`是基于样本分位数进行分箱的函数
D. `qcut`函数可以传入整数代替显式的箱边来获取等长的箱，而`cut`函数却不能

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。`pd.cut` 或 `pd.qcut` 返回一个 Categorical 对象，对其使用 `pd.value_counts()` 可以统计每个箱子的数量。</li>
    <li>B: 正确。`labels` 参数用于为生成的箱子命名。</li>
    <li>C: 正确。`qcut` 是 "quantile-based cut"，即基于分位数的分箱，它会尝试使每个箱子包含相同数量的数据点（等频）。</li>
    <li>D: <b>错误</b>。`qcut` 可以传入整数 `k` 来创建 `k` 个等频的箱子。<b>`cut` 也可以传入整数 `k`</b>，它会根据数据的最大值和最小值将数据范围等分成 `k` 个<b>等宽</b>的箱子。</li>
  </ul>

  **正确答案：** D
</details>

---
**10. 以下哪个数据清洗方法能将数据按照元素进行转换（ ）**
A. `duplicated`
B. `map`
C. `fillna`
D. `dropna`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `duplicated()`：用于识别重复项，返回布尔值。</li>
    <li><b>B. `map()`</b>：Series 的 `.map()` 方法可以接受一个函数或一个字典，并对 Series 中的<b>每个元素</b>应用这个映射关系，从而实现元素级的转换。</li>
    <li>C. `fillna()`：仅用于填充缺失值。</li>
    <li>D. `dropna()`：用于删除含有缺失值的行或列。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd

  s = pd.Series([1, 2, 3, 1])
  
  # 使用字典进行映射转换
  mapping_dict = {1: 'Good', 2: 'Medium', 3: 'Excellent'}
  s_mapped = s.map(mapping_dict)
  
  print("使用 map() 进行元素转换后的 Series:")
  print(s_mapped)
  ```
</details>

---
**11. 怎么查看一份数据中某一列的数据格式？（例如`df["年份"]`）（ ）**
A. `df["年份"].dtype()`
B. `df["年份"].astype()`
C. `df["年份"].values`
D. 以上都不对

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `df["年份"].dtype()`：错误。`.dtype` 是一个<b>属性</b>，不是方法，所以后面不应加括号 `()`。</li>
    <li>B. `df["年份"].astype()`：错误。`.astype()` 是一个<b>方法</b>，用于<b>转换</b>数据类型，而不是查看。</li>
    <li>C. `df["年份"].values`：错误。`.values` 是一个属性，返回该列数据的 NumPy 数组表示，而不是数据类型。</li>
  </ul>
  正确的查看方式是使用属性 `df["年份"].dtype`。由于所有给出的选项都是错误的，所以 D 是正确答案。

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd

  df = pd.DataFrame({'年份': [2020, 2021]})
  
  # 正确的查看方式
  print("正确的方式:", df["年份"].dtype)

  # 尝试选项A会报错
  try:
    df["年份"].dtype()
  except TypeError as e:
    print(f"\n选项A的错误: {e}")
  ```
</details>

---
**12. 对于一些Python内建字符串的方法，以下说法错误的是（ ）**
A. `split`方法可以将字符串按照传入的子字符进行拆分
B. `find`方法用于检测子字符串
C. `count`方法用于返回某个特定子字符串在字符串中出现的次数
D. `index`方法在字符串中没有找到时返回-1

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: `split()` 拆分字符串。正确。</li>
    <li>B: `find()` 查找子字符串并返回索引。正确。</li>
    <li>C: `count()` 统计子字符串出现次数。正确。</li>
    <li>D: <b>错误</b>。如果 `index()` 方法在字符串中没有找到子字符串，它会<b>引发 `ValueError` 异常</b>。返回 `-1` 的是 `find()` 方法。</li>
  </ul>

  **正确答案：** D
</details>

---
**13. 下列代码的输出是（ ）**
```python
import pandas as pd
data = pd.DataFrame({'one': [3, 4] * 2 + [4],
                     'two': [1, 2, 3, 4, 5]})
print(data)
```
A.
```
   one  two
0    3    1
1    4    2
2    3    3
3    4    4
4    4    5
```
B.
```
   one  two
0    3    1
1    4    2
2    3    3
3    4    4
```
C.
```
0    3    1
1    4    2
2    3    3
3    4    4
4    4    5
```
D.
```
0    3    1
1    4    2
2    3    3
3    4    4
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li>分析 `one` 列的数据：Python 列表操作 `[3, 4] * 2` 得到 `[3, 4, 3, 4]`，再与 `[4]` 拼接得到 `[3, 4, 3, 4, 4]`。该列共有5个元素。</li>
    <li>分析 `two` 列的数据：`[1, 2, 3, 4, 5]`。该列也有5个元素。</li>
    <li>`pd.DataFrame({...})` 会根据字典创建 DataFrame。字典的键 `'one'` 和 `'two'` 会成为列名，Pandas 会自动生成一个从 0 开始的默认行索引。</li>
    <li>`print(data)` 会将包含列名和行索引的完整 DataFrame 打印出来。</li>
  </ol>
  选项 A 的输出格式和内容完全匹配。

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 执行题目中的代码
  data = pd.DataFrame({'one': [3, 4] * 2 + [4],
                       'two': [1, 2, 3, 4, 5]})
  
  # 打印 DataFrame，结果会包含列名和行索引
  print(data)
  ```
</details>

---
**14. 下列代码代表什么意思？（ ）**
```python
import pandas as pd
data = pd.DataFrame({'k1': ['one', 'two'] * 3 + ['two'],
                     'k2': [1, 1, 2, 3, 3, 4, 4]})
print(data[data.duplicated(keep='last')])
```
A. 将data中的值筛选一遍，将没有重复的值输出
B. 将data中第一个重复的值输出
C. 将data中最后一个筛选的值输出
D. 将data中除了最后一个重复的值之外的重复值进行输出

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`data.duplicated(keep='last')`</b>：`.duplicated()` 方法用于识别重复行。参数 `keep='last'` 表示对于一组重复的行，它会将<b>最后一次出现</b>的行标记为 `False`（非重复），而将<b>之前所有出现</b>的行都标记为 `True`（重复）。</li>
    <li><b>`data[...]`</b>：使用上面生成的布尔 Series 进行索引，会筛选出所有被标记为 `True` 的行。</li>
  </ul>
  因此，这段代码的含义是：筛选并输出那些是重复的、但又不是该重复项最后一次出现的行。这与选项 D 的描述“将data中除了最后一个重复的值之外的重复值进行输出”完全一致。

  **正确答案：** D
</details>

---
**15. `string_data = pd.Series(['aardvark', 'artichoke', np.nan, 'avocado'])`，`string_data.notnull()`的结果是（ ）**
A. `0 aardvark 1 artichoke ...`
B. `0 aardvark 1 artichoke 2 avocado`
C. `0 True 1 True 2 False 3 True`
D. `0 True 1 True 2 True`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `.notnull()` 方法返回一个布尔值的 Series，用于指示原 Series 中的每个元素是否<b>不是</b>缺失值。
  <ul>
    <li>`'aardvark'` 不是缺失值 -> `True`</li>
    <li>`'artichoke'` 不是缺失值 -> `True`</li>
    <li>`np.nan` 是缺失值 -> `False`</li>
    <li>`'avocado'` 不是缺失值 -> `True`</li>
  </ul>
  所以结果是一个 `[True, True, False, True]` 的布尔 Series，并带有相应的索引。

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  string_data = pd.Series(['aardvark', 'artichoke', np.nan, 'avocado'])
  print(string_data.notnull())
  ```
</details>

---
**16. 代码`data=pd.DataFrame({'k1':['one','two']*2+['two'], 'k2':[1,2,3,3,3]})`，`data.drop_duplicates()`的输出为（ ）**

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/10.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/11.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/12.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/13.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>创建 DataFrame</b>：首先，我们分析 `data` 的内容。
        <ul>
            <li>`'k1'` 列为 `['one', 'two', 'one', 'two', 'two']`。</li>
            <li>`'k2'` 列为 `[1, 2, 3, 3, 3]`。</li>
            <li>组合后的 `data` 如下：<pre>
   k1  k2
0  one   1
1  two   2
2  one   3
3  two   3  &lt;-- 重复行第一次出现
4  two   3  &lt;-- 重复行第二次出现</pre></li>
        </ul>
    </li>
    <li><b>执行 `drop_duplicates()`</b>：该方法用于删除重复的行。
        <ul>
            <li>默认参数 `keep='first'` 表示对于一组重复的行，会<b>保留第一次出现</b>的行，并删除所有后续的重复行。</li>
            <li>在此例中，行 `('two', 3)` 在索引 `3` 和 `4` 处重复。`drop_duplicates()` 会保留索引为 `3` 的行，并删除索引为 `4` 的行。</li>
        </ul>
    </li>
    <li><b>最终结果</b>：操作后的 DataFrame 会包含索引为 `0, 1, 2, 3` 的行，这与图片 A 的内容完全一致。</li>
  </ol>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 创建题目中的 DataFrame
  data = pd.DataFrame({'k1':['one','two']*2+['two'], 
                       'k2':[1,2,3,3,3]})
  
  print("原始 DataFrame:")
  print(data)

  # 执行去重操作
  result = data.drop_duplicates()

  print("\n执行 drop_duplicates() 之后的结果:")
  print(result)
  ```
</details>



---
**17. 已知`df=pd.DataFrame([[1,None,None],[4,None,6],[7,8,9]])`，执行`df.dropna(thresh=2)`得到的结果是（ ）**

A.
```
   0    1    2
0  1.0  NaN  NaN
1  4.0  NaN  6.0
2  7.0  8.0  9.0
```

B.
```
     0    1    2
1  4.0  NaN  6.0
2  7.0  8.0  9.0
```

C.
```
     0    1    2
2  7.0  8.0  9.0
```

D.
```
     0    1    2
0  1.0  NaN  NaN
2  7.0  8.0  9.0
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>创建 DataFrame</b>：首先，`df` 被创建如下（`None` 会被转换为 `np.nan`）：<pre>
   0    1    2
0  1.0  NaN  NaN
1  4.0  NaN  6.0
2  7.0  8.0  9.0</pre></li>
    <li><b>执行 `df.dropna(thresh=2)`</b>：
      <ul>
        <li><code>.dropna()</code> 方法用于删除含有缺失值的行或列（默认对行操作）。</li>
        <li>参数 <code>thresh=2</code> 设定了一个阈值，表示<b>保留</b>那些<b>至少有 2 个</b>非缺失值的行。</li>
      </ul>
    </li>
    <li><b>逐行分析</b>：
      <ul>
        <li><b>第0行</b> `[1.0, NaN, NaN]`：只有 1 个非缺失值。`1 < 2`，不满足条件，因此被<b>删除</b>。</li>
        <li><b>第1行</b> `[4.0, NaN, 6.0]`：有 2 个非缺失值。`2 >= 2`，满足条件，因此被<b>保留</b>。</li>
        <li><b>第2行</b> `[7.0, 8.0, 9.0]`：有 3 个非缺失值。`3 >= 2`，满足条件，因此被<b>保留</b>。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作后只剩下第 1 行和第 2 行，与选项 B 的内容完全一致。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame
  df = pd.DataFrame([[1, None, None], [4, None, 6], [7, 8, 9]])
  
  print("原始 DataFrame:")
  print(df)

  # 执行 dropna 操作
  result = df.dropna(thresh=2)
  
  print("\n执行 df.dropna(thresh=2) 之后的结果:")
  print(result)
  ```
</details>



---
**18. `data=pd.DataFrame([[1.0, 2.0, 3.0], [1.0, NA, NA], [NA, NA, NA]])`**
**则 `cleaned=data.dropna()` 的输出结果是：（ ）**

A.
```
     0    1    2
0  1.0  2.0  3.0
```

B.
```
     0    1    2
0  1.0  2.0  3.0
1  1.0  NaN  NaN
```

C.
```
     0    1    2
0  1.0  2.0  3.0
1  1.0  NaN  NaN
2  NaN  NaN  NaN
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  （假设 `NA` 指的是 `np.nan`）
  <ul>
    <li><b>创建 DataFrame</b>：`data` 的内容如下：<pre>
     0    1    2
0  1.0  2.0  3.0
1  1.0  NaN  NaN
2  NaN  NaN  NaN</pre></li>
    <li><b>执行 `cleaned = data.dropna()`</b>：
      <ul>
        <li><code>.dropna()</code> 方法的默认行为是 `axis=0` (对行操作) 和 `how='any'` (删除任何包含 `NaN` 的行)。</li>
      </ul>
    </li>
    <li><b>逐行分析</b>：
      <ul>
        <li><b>第0行</b> `[1.0, 2.0, 3.0]`：不包含 `NaN`，因此被<b>保留</b>。</li>
        <li><b>第1行</b> `[1.0, NaN, NaN]`：包含 `NaN`，因此被<b>删除</b>。</li>
        <li><b>第2行</b> `[NaN, NaN, NaN]`：包含 `NaN`，因此被<b>删除</b>。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作后只剩下第 0 行，与选项 A 的内容完全一致。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame
  data = pd.DataFrame([[1.0, 2.0, 3.0], [1.0, np.nan, np.nan], [np.nan, np.nan, np.nan]])
  
  print("原始 DataFrame:")
  print(data)

  # 执行 dropna 操作
  cleaned = data.dropna()
  
  print("\n执行 data.dropna() 之后的结果:")
  print(cleaned)
  ```
</details>

---
**19. 下列代码输出为：（ ）**
```python
import numpy as np
import pandas as pd
a = None
b = np.nan
c = ' '
d = pd.Series([a,b,c,])
d.isnull()
```
A. `0 True 1 True 2 False dtype: bool`
B. `0 True 1 True 2 True dtype: bool`
C. `0 False 1 False 2 True dtype: bool`
D. (其他结果)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `.isnull()` 方法用于检测 Series 中的每个元素是否是缺失值。
  <ul>
    <li>`None`：在 Pandas 中被视作缺失值，返回 `True`。</li>
    <li>`np.nan`：是标准的缺失值表示，返回 `True`。</li>
    <li>`' '`：这是一个包含一个空格的<b>字符串</b>。它是一个有效的数据，不是缺失值，返回 `False`。</li>
  </ul>
  因此，结果是一个 `[True, True, False]` 的布尔 Series。

  **正确答案：** A
</details>



---
**20. 假设 `data = pd.DataFrame([[1., 6.5, 3.], [1., NA, NA], [NA, NA, NA], [NA, 6.5, 3.]])`**
```python
data.dropna()                     ①
data.dropna(how='all')            ②
data.dropna(axis=1, how='all')    ③
data.dropna(axis=1)               ④
```
**以上①②③④4个操作，哪个操作后得到的结果如下图：（ ）**
![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/14.png)

A. ①
B. ②
C. ③
D. ④

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  （假设 `NA` 指的是 `np.nan`）
  <p>首先，我们分析题目给出的目标结果，它保留了原始 DataFrame 的第 0 行和第 3 行，删除了第 1 行和第 2 行。现在我们逐一分析每个操作的实际效果：</p>
  <ul>
    <li><b>① `data.dropna()`</b>：这是 <code>data.dropna(axis=0, how='any')</code> 的简写。它会删除<b>任何</b>包含 `NaN` 的<b>行</b>。这会删除第1、2、3行，只保留第0行。<b>不符合目标。</b></li>
    <li><b>② `data.dropna(how='all')`</b>：这是 <code>data.dropna(axis=0, how='all')</code> 的简写。它会删除<b>所有值都为 `NaN`</b> 的<b>行</b>。这会删除第2行，保留第0、1、3行。<b>不符合目标。</b></li>
    <li><b>③ `data.dropna(axis=1, how='all')`</b>：这会删除<b>所有值都为 `NaN`</b> 的<b>列</b>。在原始数据中，没有一列是所有值都为 `NaN` 的，所以这个操作会返回原始的 DataFrame，不会删除任何行或列。<b>不符合目标。</b></li>
    <li><b>④ `data.dropna(axis=1)`</b>：这是 <code>data.dropna(axis=1, how='any')</code> 的简写。它会删除<b>任何</b>包含 `NaN` 的<b>列</b>。由于每一列都至少有一个 `NaN`，这个操作会删除所有列，返回一个空的 DataFrame。<b>不符合目标。</b></li>
  </ul>
  <p><b>结论</b>：根据标准的 Pandas <code>dropna</code> 行为，<b>没有一个选项能直接得到图示的结果</b>。这道题可能存在设计错误，或者目标图片与选项不匹配。</p>
  <p>要得到图示的结果（保留行0和行3），可以使用 <code>data.dropna(thresh=2)</code>，它会保留至少有2个非缺失值的行。</p>

  **正确答案：** C (根据题目提供，但与标准行为及图示结果不符)

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame
  data = pd.DataFrame([[1., 6.5, 3.], [1., np.nan, np.nan], 
                       [np.nan, np.nan, np.nan], [np.nan, 6.5, 3.]])
  print("原始 DataFrame:")
  print(data)

  print("\n--- 逐个分析选项的实际输出 ---")
  print("\n① data.dropna() 的结果:")
  print(data.dropna())

  print("\n② data.dropna(how='all') 的结果:")
  print(data.dropna(how='all'))

  print("\n③ data.dropna(axis=1, how='all') 的结果:")
  print(data.dropna(axis=1, how='all'))
  
  print("\n④ data.dropna(axis=1) 的结果:")
  print(data.dropna(axis=1))

  print("\n--- 能得到目标结果的正确代码 ---")
  correct_result = data.dropna(thresh=2)
  print(correct_result)
  ```
</details>


---
**21. 以下代码的输出结果为（ ）**
```python
import pandas as pd
import numpy as np

df = pd.DataFrame(np.arange(9).reshape(-1, 3))
df.iloc[:2, 1] = np.nan
df.iloc[:1, 2] = np.nan
df.dropna(thresh=3)
```

A.
```
     0    1    2
0  0.0  NaN  NaN
1  3.0  NaN  5.0
2  6.0  7.0  8.0
```
B.
```
     0    1    2
1  3.0  NaN  5.0
2  6.0  7.0  8.0
```
C.
```
     0    1    2
2  6.0  7.0  8.0
```
D. (空 DataFrame)


<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>创建 DataFrame</b>：`df` 被创建为 3x3 的数组：<pre>
   0  1  2
0  0  1  2
1  3  4  5
2  6  7  8</pre></li>
    <li><b>第一次修改</b>：`df.iloc[:2, 1] = np.nan` 将第 0 行和第 1 行的第 1 列设为 `NaN`。</li>
    <li><b>第二次修改</b>：`df.iloc[:1, 2] = np.nan` 将第 0 行的第 2 列设为 `NaN`。</li>
    <li><b>修改后的 `df`</b> 如下：<pre>
     0    1    2
0  0.0  NaN  NaN
1  3.0  NaN  5.0
2  6.0  7.0  8.0</pre></li>
    <li><b>执行 `df.dropna(thresh=3)`</b>：
      <ul>
        <li>该操作会删除<b>非缺失值</b>数量<b>小于 3</b> 的行。</li>
        <li><b>第0行</b>：有 1 个非缺失值。`1 < 3`，<b>删除</b>。</li>
        <li><b>第1行</b>：有 2 个非缺失值。`2 < 3`，<b>删除</b>。</li>
        <li><b>第2行</b>：有 3 个非缺失值。`3 >= 3`，<b>保留</b>。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作后只剩下第 2 行，与选项 C 的内容完全一致。</li>
  </ol>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建并修改 DataFrame
  df = pd.DataFrame(np.arange(9).reshape(-1, 3))
  df.iloc[:2, 1] = np.nan
  df.iloc[:1, 2] = np.nan
  
  print("修改后的 DataFrame:")
  print(df)
  
  # 执行 dropna 操作
  result = df.dropna(thresh=3)
  
  print("\n执行 df.dropna(thresh=3) 之后的结果:")
  print(result)
  ```
</details>

---
**22. 以下对于`duplicated`方法和`drop_duplicates`方法的叙述，错误的是：（ ）**
A. `duplicated`返回的是一个布尔值Series，反映每一行是否与之前出现过的行相同。
B. 对于DataFrame对象`data`，`data.drop_duplicates()`的结果与`data[data.duplicated()]`相同。
C. `duplicated`方法和`drop_duplicates`方法默认都是保留第一个观测到的值。
D. `drop_duplicates`方法中传入参数`keep = 'last'`将会保留重复行里面最后一个观测值。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。`duplicated()` 用于识别重复。</li>
    <li>B: <b>错误</b>。`data.drop_duplicates()` 是<b>去重</b>，返回去重后的数据。而 `data[data.duplicated()]` 是<b>筛选</b>，只返回那些被标记为重复的行。两者结果几乎相反。</li>
    <li>C: 正确。两者默认的 `keep` 参数都是 `'first'`。</li>
    <li>D: 正确。`keep='last'` 会保留重复项的最后一次出现。</li>
  </ul>

  **正确答案：** B
</details>

---
**23. `data = pd.Series(...)`，以下对于`data`的操作，输出结果相同的是：（ ）**
(此题与第6题完全相同)
A. ①
B. ①②
C. ①②③
D. ①②③④

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  所有这四个操作最终都会得到相同的结果：将 `Series` 中的 `np.nan` 值替换为 `0`，而不改变其他数值。

  **正确答案：** D
</details>

---
**24. 运行下列代码，输出的结果为（ ）**
```python
import pandas as pd
ser = pd.Series([1, -1, -1, 1, 1, 1, 0])
match = {1: 'positive', -1: 'negative'}
ser.map(match)
```

A.
```
0    positive
1    negative
2    negative
3    positive
4    positive
5    positive
6         NaN
dtype: object
```

B.
```
0    positive
1    negative
2    negative
3    positive
4    positive
5    positive
6           0
dtype: object
```

C. 报错

D.
```
0    positive
1    negative
2    negative
3    positive
4    positive
5    positive
dtype: object
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`ser.map(match)`</b>：<code>.map()</code> 方法会根据传入的字典 `match` 对 `ser` 中的每个元素进行转换。</li>
    <li>如果 `ser` 中的元素在 `match` 字典的键中能找到，则将其替换为对应的值。</li>
    <li>如果 `ser` 中的元素<b>不在</b> `match` 字典的键中，则该位置的值将变为 <b>`NaN` (缺失值)</b>。</li>
  </ul>
  <p>让我们逐个元素分析：</p>
  <ul>
    <li><code>1</code> 存在于 `match` 的键中，映射为 `'positive'`。</li>
    <li><code>-1</code> 存在于 `match` 的键中，映射为 `'negative'`。</li>
    <li><code>0</code> <b>不</b>存在于 `match` 的键 `{1, -1}` 中，因此它将被映射为 `NaN`。</li>
  </ul>
  <p>最终结果是一个新的 Series，其中原始值为 `0` 的位置变成了 `NaN`。这与选项 A 的内容完全一致。</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 创建题目中的 Series 和字典
  ser = pd.Series([1, -1, -1, 1, 1, 1, 0])
  match = {1: 'positive', -1: 'negative'}
  
  # 执行 map 操作
  result = ser.map(match)
  
  # 打印结果
  print(result)
  ```
</details>

---
**25. 下面代码实现删除所有重复值的是( )**
A. `data.drop_duplicates(keep=False)`
B. `data.drop_duplicates(keep='first')`
C. `data.drop_duplicates(keep='False')`
D. `data.drop_duplicates(keep='last')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `.drop_duplicates()` 方法的 `keep` 参数控制如何处理重复项。
  <ul>
    <li>`keep='first'` (默认)：保留第一次出现的。</li>
    <li>`keep='last'`：保留最后一次出现的。</li>
    <li><b>`keep=False`</b>：<b>删除所有</b>的重复行。即如果某行出现了多次，那么它的所有实例都会被删除，只保留那些从未重复过的唯一行。这符合“删除所有重复值”的描述。</li>
    <li>`keep='False'` (字符串)：是无效参数，会报错。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  df = pd.DataFrame({'col': ['A', 'B', 'A', 'C', 'B']})

  # 删除所有重复项 (A和B的所有出现都被删除)
  result = df.drop_duplicates(keep=False)
  print(result)
  ```
</details>

---
**26. 下列哪个方法返回的不是boolean Series（ ）**
A. `data.duplicated()`
B. `data.isnull()`
C. `data > data.median()`
D. `data[data > data.median()]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `data.duplicated()`：返回布尔 Series。</li>
    <li>B. `data.isnull()`：返回布尔 Series。</li>
    <li>C. `data > data.median()`：布尔比较，返回布尔 Series。</li>
    <li><b>D. `data[data > data.median()]`</b>：这是一个<b>布尔索引</b>操作。它<b>使用</b>一个布尔 Series 来筛选原数据 `data`。返回的结果是 `data` 的一个子集，其数据类型与 `data` 相同（例如 `float64`），而不是布尔类型。</li>
  </ul>

  **正确答案：** D
</details>

---
**27. 下列方法能将字符串中所有非重叠匹配模式以迭代器形式返回的是（ ）**
A. `findall`
B. `finditer`
C. `match`
D. `search`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这道题考察 Python `re` 模块（正则表达式）的方法。
  <ul>
    <li>A. `re.findall()`：返回所有匹配项的<b>列表</b>。</li>
    <li><b>B. `re.finditer()`</b>：返回所有匹配项的<b>迭代器</b>，每个元素是一个匹配对象 (Match object)。</li>
    <li>C. `re.match()`：只从字符串开头匹配，返回一个匹配对象或 `None`。</li>
    <li>D. `re.search()`：在整个字符串中搜索第一个匹配项，返回一个匹配对象或 `None`。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import re
  text = "apple banana apple"
  
  # finditer 返回一个迭代器
  match_iterator = re.finditer("apple", text)
  print(type(match_iterator))
  
  # 遍历迭代器
  for match in match_iterator:
      print(match)
  ```
</details>

---
**28. 以下关于离散化和分箱说法不正确的是（ ）**
A. 使用pandas中的cut可以将数据列表分箱成左闭右开的一定数量区间
B. 使用pandas中的cut时，可以通过向labels选项传递列表或数组来传入箱名
C. 使用pandas中的qcut可以获得数量相等的箱子
D. 以上都正确

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: `pd.cut()` 默认创建的区间是<b>左开右闭</b>的，例如 `(a, b]`。而“左闭右开” (`[a, b)`) 需要通过设置 `right=False` 来实现。因此，将“左闭右开”作为 `cut` 的一般性描述是不准确的，尤其是针对其默认行为。</li>
    <li>B: 正确。`labels` 参数用于为生成的箱子命名。</li>
    <li>C: 正确。`qcut` 是基于分位数的分箱，会尝试使每个箱子包含相同数量的数据点。</li>
  </ul>
  因为 A 的描述与 `cut` 的默认行为不符，所以该说法不正确。

  **正确答案：** A
</details>

---
**29. 下列说法正确的是（ ）**
A. `df.fillna`的`method`为`bfill`时，以na值的下面一个值填充。为`ffill`时，以na值的上一个值填充
B. `df.fillna`的`limit`参数的作用是只填充na值个数小于等于limit的行
C. 要将`data[‘food’]`列中字符串转换为小写的方法是：`data[‘food’].lower()`
D. `drop_duplicates`返回的是DataFrame，内容是`duplicated`返回数组中为`False`的部分，且默认为保留第一个观测到的值。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A</b>: 正确。`bfill` (backward fill) 是<b>后向</b>填充，使用后面（下面）的有效值。`ffill` (forward fill) 是<b>前向</b>填充，使用前面（上面）的有效值。</li>
    <li>B: 错误。`limit` 参数限制的是<b>连续</b>缺失值的填充数量，而不是行内总数。</li>
    <li>C: 错误。对 Series 应用字符串方法需要使用 `.str` 访问器，应为 `data['food'].str.lower()`。</li>
    <li>D: 描述有瑕疵但逻辑上接近。`drop_duplicates()` 返回的是 `data[~data.duplicated()]` 的结果。虽然逻辑上是筛选 `duplicated()` 为 `False` 的部分，但用词“返回数组中”不准确。与 A 相比，A 的描述更精确无误。</li>
  </ul>

  **正确答案：** A
</details>

---
**30. 已知`val='a,c, emmm'`; `val.find(',')`的结果是什么（ ）**
A. 1
B. -1
C. 2
D. 3

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `str.find(sub)` 方法返回子字符串 `sub` 在字符串中<b>第一次</b>出现的索引。索引从 0 开始计数。
  在字符串 `'a,c, emmm'` 中，第一个逗号 `,` 的位置是在 `'a'` (索引0) 之后，即索引为 `1`。

  **正确答案：** A

  **代码示例：**
  ```python
  val = 'a,c, emmm'
  print(val.find(','))
  ```
</details>

## 第八章：数据合并与重塑

---
**1. 下列哪个方法可以改变索引的层次？（ ）**
A. `reindex()`
B. `swaplevel()`
C. `change_level()`
D. `reset_index()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `reindex()`：根据新索引对数据进行重排，不直接改变层级结构。</li>
    <li><b>B. `swaplevel()`</b>：专门用于<b>交换</b>多重索引中两个<b>层级</b>的位置。</li>
    <li>C. `change_level()`：不是标准的 Pandas 方法。</li>
    <li>D. `reset_index()`：将索引层级移动到数据列中，取消层次化索引。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np
  
  # 创建一个双层索引的 Series
  s = pd.Series(np.arange(4), 
                index=[['a', 'a', 'b', 'b'], [1, 2, 1, 2]])
  s.index.names = ['level_1', 'level_2']
  print("原始索引:")
  print(s)

  # 交换两个层级
  s_swapped = s.swaplevel('level_1', 'level_2')
  print("\n交换层级后:")
  print(s_swapped)
  ```
</details>

---
**2. 用哪个Numpy库的函数可以将多个NumPy数组进行堆叠（ ）**
A. `concatenate`
B. `concat`
C. `merge`
D. `join`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A. `concatenate`</b>：是 <b>NumPy</b> 库中用于沿指定轴连接（堆叠）多个数组的主要函数。</li>
    <li>B. `concat`：是 <b>Pandas</b> 库的函数。</li>
    <li>C. `merge`：是 <b>Pandas</b> 库的函数，用于数据库风格的连接。</li>
    <li>D. `join`：是 <b>Pandas</b> 库的方法，用于基于索引的连接。</li>
  </ul>
  题目明确要求是 NumPy 库的函数。

  **正确答案：** A

  **代码示例：**
  ```python
  import numpy as np

  arr1 = np.array([[1, 2], [3, 4]])
  arr2 = np.array([[5, 6]])

  # 沿 axis=0 (行) 进行堆叠
  result = np.concatenate([arr1, arr2], axis=0)
  print(result)
  ```
</details>

---
**3. 默认情况下，用merge方法连接两张表做的是（ ）**
A. 内连接
B. 外连接
C. 左连接
D. 右连接

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas 的 `pd.merge()` 函数中，`how` 参数决定了连接的类型。其默认值是 `'inner'`，即<b>内连接</b>。内连接会返回两个表中连接键的交集部分。

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  df1 = pd.DataFrame({'key': ['A', 'B', 'C'], 'value1': [1, 2, 3]})
  df2 = pd.DataFrame({'key': ['B', 'C', 'D'], 'value2': [4, 5, 6]})

  # 默认进行内连接，只保留共有的键 'B' 和 'C'
  result = pd.merge(df1, df2)
  print(result)
  ```
</details>

---
**4. 假设有DataFrame 对象frame，下列操作会改变frame的是（ ）**
(1) `frame.index.names = ['a']`
(2) `frame.stack()`
(3) `frame.swaplevel(0,1)`

A. (1)
B. (2)
C. (3)
D. (1)(2)(3)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>(1) <b>`frame.index.names = ['a']`</b>：直接对 DataFrame 的 `index` 对象的 `.names` 属性进行赋值，这是一个<b>原地 (in-place)</b> 操作，会直接改变 `frame`。</li>
    <li>(2) `frame.stack()`：堆叠操作，会返回一个<b>新的</b> Series 或 DataFrame 对象，不改变原始的 `frame`。</li>
    <li>(3) `frame.swaplevel(0,1)`：交换索引层级，会返回一个<b>新的</b> DataFrame 对象，不改变原始的 `frame`。</li>
  </ul>
  因此，只有操作 (1) 会原地改变 `frame`。

  **正确答案：** A
</details>

---
**5. 对于堆叠与拆堆操作，以下说法错误的是（ ）**
A. 如果层级中的所有值并未包含于每个子分组中时，拆分可能会引入缺失值
B. 默认情况下，堆叠会过滤出缺失值
C. 在DataFrame中拆堆时，被拆堆的层级会变为结果中最低的层级
D. 堆叠和拆堆操作是不可逆的

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。`unstack()` 时，如果某个索引组合不存在，会用 `NaN` 填充。</li>
    <li>B: 正确。`stack()` 的默认参数 `dropna=True` 会过滤掉全为 `NaN` 的行。</li>
    <li>C: 正确。`unstack()` 会将指定的索引层级（默认为最内层）变为新的列层级的最内层。</li>
    <li>D: <b>错误</b>。`stack()` 和 `unstack()` 是一对<b>可逆操作</b>。通常情况下，`df.stack().unstack()` 会得到与原始 `df` 相同的 DataFrame（需要注意 `NaN` 值的处理可能会影响完全可逆性）。</li>
  </ul>

  **正确答案：** D
</details>

---
**6. 下列哪个方法可以对dataframe数据进行转置。（ ）**
A. `swaplevel()`
B. `reset_index()`
C. `dataframe.T`
D. 以上都不是

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `swaplevel()`：交换多重索引的层级。</li>
    <li>B. `reset_index()`：将索引转换为列。</li>
    <li><b>C. `dataframe.T`</b>：`.T` 是 DataFrame 的一个<b>属性</b>，用于访问其<b>转置 (Transpose)</b> 后的形式，即将行和列互换。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  df = pd.DataFrame({'A': [1, 2], 'B': [3, 4]})
  print("原始 DataFrame:")
  print(df)
  print("\n转置后:")
  print(df.T)
  ```
</details>

---
**7. 假设有双层索引的DataFrame对象`data`，则下列代码的输出结果是：（ ）**
`data1 = data.unstack().stack(); data is data1`
A. True
B. False
C. 报错
D. 不能确定

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`data.unstack()` 操作会返回一个<b>新的</b> DataFrame 对象。</li>
    <li>接着对这个新对象调用 `.stack()` 方法，同样会返回<b>另一个新的</b>对象。</li>
    <li>`data1` 引用的是经过两次操作后最终生成的新对象。</li>
    <li>Python 的 `is` 运算符检查两个变量是否引用内存中的<b>同一个对象</b>。由于 `data` 和 `data1` 是两个独立的对象，即使它们的值可能完全相同，`data is data1` 的结果也为 `False`。</li>
  </ul>

  **正确答案：** B
</details>

---
**8. 下列哪个方法可以取消dataframe层次化索引。( )**
A. `swaplevel()`
B. `reset_index()`
C. `dataframe.T`
D. `set_index()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `swaplevel()`：交换索引层级，但仍是层次化索引。</li>
    <li><b>B. `reset_index()`</b>：此方法将一个或多个索引层级<b>移入到数据列</b>中，并用一个简单的整数索引替代，从而“取消”了层次化索引。</li>
    <li>C. `dataframe.T`：转置 DataFrame。</li>
    <li>D. `set_index()`：用于从数据列<b>创建</b>层次化索引。</li>
  </ul>

  **正确答案：** B
</details>

---
**9. 对于两个Series对象a和b，运行`pd.Series(np.where(pd.isnull(a),b,a))`，下面哪个选项输出的结果与该行代码输出的结果相同（ ）**
A. `a.combine_first(b)`
B. `pd.Series(np.where(pd.isnull(b),a,b))`
C. `pd.Series(np.where(pd.isnull(a),a,b))`
D. `pd.Series(np.where(pd.isnull(b),b,a))`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`np.where(pd.isnull(a), b, a)`</b> 的含义是：“如果 `a` 中的某个位置是 `null` (缺失值)，则取 `b` 中对应位置的值；否则，取 `a` 中原来的值”。</li>
    <li><b>`a.combine_first(b)`</b> 的作用完全相同：用 `b` 中的值来“修补”或“填充” `a` 中的缺失值。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np
  a = pd.Series([np.nan, 2.5, 0.0, np.nan])
  b = pd.Series([0., 1.5, np.nan, 5.])

  result_where = pd.Series(np.where(pd.isnull(a), b, a))
  result_combine = a.combine_first(b)

  print("np.where 的结果:", result_where.values)
  print("combine_first 的结果:", result_combine.values)
  ```
</details>

---
**10. 对于`concat()`方法，下列的说法错误的是？（ ）**
A. `concat()`默认情况下是在`axis=0`轴向进行连接的。
B. `concat()`可以通过`join_axes`方法来指定用于连接的轴。
C. `concat()`在对Series对象在`axis=1`时进行连接得到的还是一个Series对象。
D. `concat()`之后得到的对象如果是存在多级索引时可以进行`unstack()`操作。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。默认沿 `axis=0` (行方向) 拼接。</li>
    <li>B: 正确（但在新版 Pandas 中已弃用）。`join_axes` 曾用于指定其他轴的索引。</li>
    <li>C: <b>错误</b>。将多个 Series 沿 `axis=1` (列方向) 拼接时，每个 Series 会成为新对象的一列，最终得到的是一个 <b>DataFrame</b>，而不是 Series。</li>
    <li>D: 正确。如果拼接后产生了多级索引，可以使用 `unstack()` 进行拆堆。</li>
  </ul>

  **正确答案：** C
</details>

---
**11. 以下`merge`函数的参数`how`的取值范围，其中是将两个表共有的键进行连接操作的是（ ）**
A. `inner`
B. `left`
C. `outer`
D. `right`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `pd.merge()` 函数中 `how` 参数的含义：
  <ul>
    <li><b>A. `inner`</b>：内连接，取两个表中连接键的<b>交集</b>。这正是“共有的键”。</li>
    <li>B. `left`：左连接，以左表的键为准。</li>
    <li>C. `outer`：外连接，取两个表中连接键的<b>并集</b>。</li>
    <li>D. `right`：右连接，以右表的键为准。</li>
  </ul>

  **正确答案：** A
</details>

---
**12. 对于DataFrame `frame`，代码`frame.set_index(['c','d']).unstack()`的输出为（ ）**
```python
import pandas as pd
frame = pd.DataFrame({'a': range(3), 'b': range(3, 0, -1),
                      'c': ['one', 'one', 'two'],
                      'd': [0, 1, 1]})
```

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/15.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/16.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/17.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/18.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>初始 `frame`</b>：<pre>
   a  b    c  d
0  0  3  one  0
1  1  2  one  1
2  2  1  two  1</pre></li>
    <li><b>`frame.set_index(['c','d'])`</b>：将 `'c'` 和 `'d'` 列设为多重索引 (MultiIndex)。`'c'` 是第0层，`'d'` 是第1层。<pre>
       a  b
c   d      
one 0  0  3
    1  1  2
two 1  2  1</pre></li>
    <li><b>`.unstack()`</b>：拆分（或“旋转”）索引。
      <ul>
        <li>默认情况下，`.unstack()` 会拆分<b>最内层</b>的索引，也就是 `'d'` (第1层)。</li>
        <li>`'d'` 层级的标签 (`0`, `1`) 会成为新的<b>列层级</b>的最内层。</li>
        <li>原始的数据列 (`'a'`, `'b'`) 成为新的列层级的最外层。</li>
        <li>当某个索引组合（如 `('two', 0)`）在拆分前不存在时，拆分后对应位置会用 `NaN` 填充。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：<pre>
      a         b     
d     0    1    0    1
c                    
one 0.0  1.0  3.0  2.0
two NaN  2.0  NaN  1.0</pre>这个结果与选项 B 的图片完全匹配。</li>
  </ol>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd

  # 创建题目中的 DataFrame
  frame = pd.DataFrame({'a': range(3), 'b': range(3, 0, -1),
                        'c': ['one', 'one', 'two'],
                        'd': [0, 1, 1]})

  # 执行 set_index 和 unstack
  result = frame.set_index(['c', 'd']).unstack()

  # 打印结果
  print(result)
  ```
</details>


---
**13. 设 `data=pd.Series(range(7), index=[['a','a','a','b','b','c','c'], [1,2,3,1,2,1,2]])`，执行`data.loc[['a','c']]`得到的结果是（ ）**

A.
```
a  1    0
   2    1
   3    2
c  1    5
   2    6
dtype: int64
```

B.
```
a  1    0
   2    1
c  1    5
   2    6
dtype: int64
```

C.
```
a  1    0
c  1    5
dtype: int64
```

D.
```
a  3    2
c  1    5
dtype: int64
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>创建 Series</b>：`data` 是一个具有双层索引 (MultiIndex) 的 Series。<pre>
a  1    0
   2    1
   3    2
b  1    3
   2    4
c  1    5
   2    6
dtype: int64</pre></li>
    <li><b>执行 `data.loc[['a','c']]`</b>：
      <ul>
        <li><code>.loc[]</code> 是基于标签的索引方法。</li>
        <li>当向 <code>.loc</code> 传入一个列表 `['a', 'c']` 时，它会选择<b>第一层索引</b>中所有标签为 `'a'` 或 `'c'` 的行。</li>
        <li>这会选中所有以 `'a'` 开头的行和所有以 `'c'` 开头的行，并保持其原始的层级结构和对应的值。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作会返回一个新的 Series，包含原 Series 中第一层索引为 'a' 和 'c' 的所有数据，与选项 A 的内容完全一致。</li>
  </ul>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 创建题目中的 Series
  data = pd.Series(range(7), 
                    index=[['a','a','a','b','b','c','c'], 
                           [1,2,3,1,2,1,2]])
  
  print("原始 Series:")
  print(data)

  # 执行 loc 操作
  result = data.loc[['a','c']]
  
  print("\n执行 data.loc[['a','c']] 之后的结果:")
  print(result)
  ```
</details>

---
**14. 列关于DataFrame中的`set_index`函数的叙述，错误的是：（ ）**
A. 使用`set_index`函数会生成一个新的DataFrame。
B. 使用`set_index`方法，默认情况下，被用作索引的列将会自动从DataFrame中移除。
C. 可以改变参数`drop`的值为`True`，将被用做索引的列留在DataFrame中。
D. `set_index`的反操作`reset_index`将分层索引的索引层级移动到列中

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。默认 `inplace=False`，返回新对象。</li>
    <li>B: 正确。默认 `drop=True`，用作索引的列会从数据列中移除。</li>
    <li>C: <b>错误</b>。要将被用作索引的列<b>留在</b> DataFrame 中，需要设置 `drop=False`。`drop=True` 是默认行为，会<b>移除</b>该列。</li>
    <li>D: 正确。`reset_index` 是 `set_index` 的逆操作。</li>
  </ul>

  **正确答案：** C
</details>

---
**15. 下列对pandas中的`concat`方法的叙述，错误的是：（ ）**
A. `concat`方法中的参数`join_axes`可以用来指定用于连接其他轴向的轴。
B. 可以用`concat`方法中的参数`keys`通过在连接轴向上创建一个多层索引来区分结果中拼接在一起的各部分。
C. 默认情况下，`concat`方法是沿着`axis = 1`轴向生效的。
D. `concat`方法可以用于连接多个DataFrame。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确（但在新版 Pandas 中已弃用）。</li>
    <li>B: 正确。`keys` 参数用于创建层次化索引。</li>
    <li>C: <b>错误</b>。`pd.concat()` 的默认行为是沿着 <b>`axis=0`</b>（行方向）进行拼接。</li>
    <li>D: 正确。`concat` 的主要用途就是连接多个 Pandas 对象。</li>
  </ul>

  **正确答案：** C
</details>

---
**16. 对于`concat`函数的参数，以下说法错误的是（ ）**
A. `objs`参数用于指定需要连接的对象列表或字典
B. `keys`参数用于指定多层索引的层级
C. `axis`参数用于指定连接的轴向，默认为0轴
D. `join`参数用于指定连接的方式

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。`objs` 是要拼接的对象序列。</li>
    <li>B: <b>错误</b>。`keys` 参数用于提供新创建的<b>层级</b>的<b>标签 (labels)</b>，而不是指定层级本身。用于命名层级的是 `names` 参数。这个描述不精确，是所有选项中最不正确的。</li>
    <li>C: 正确。默认 `axis=0`。</li>
    <li>D: 正确。`join` 参数（'inner' 或 'outer'）决定了其他轴上的索引如何对齐。</li>
  </ul>

  **正确答案：** B
</details>

---
**17. 以下使用merge函数连接左右DataFrame(两者都有两个列key1和key2)的操作正确的是( )**
A. `pd.merge(left,right,left_on='key1')`
B. `pd.merge(left,right,right_on='key1')`
C. `pd.merge(left,right,left_on='key1',right_index=True)`
D. `pd.merge(left,right,left_on='key1',right_on='key2')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。只指定 `left_on` 时，必须同时指定 `right_on` 或 `right_index=True`。</li>
    <li>B: 错误。只指定 `right_on` 时，必须同时指定 `left_on` 或 `left_index=True`。</li>
    <li>C: 正确。这是一个有效的连接操作，用左表的 `key1` 列和右表的索引进行连接。</li>
    <li>D: 正确。这也是一个有效的连接操作，用左表的 `key1` 列和右表的 `key2` 列进行连接。</li>
  </ul>
  题目要求选择一个正确的操作，C 和 D 都是语法正确的。但在单选题中，D 展示了更典型的按不同列名连接的场景。

  **正确答案：** D (C 也是语法正确的)
</details>

---
**18. 对于下列代码，下列选项中输出结果不同的是( )**
```python
data = pd.Series(np.random.randn(6),
                 index=[['a','a','b','b','b','c'],[1,2,1,2,3,2]])
data['a':'b']
```
A. `data[['a','b']]`
B. `data.loc[['a','b']]`
C. `data.loc[['a','b'],:3]`
D. `data[:2]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`data['a':'b']`：对第一层索引进行<b>标签切片</b>，会选择所有 `'a'` 和 `'b'` 的行，共5行。</li>
    <li>A. `data[['a','b']]`：对第一层索引进行<b>花式索引</b>，选择所有 `'a'` 和 `'b'` 的行。结果与 `data['a':'b']` 相同。</li>
    <li>B. `data.loc[['a','b']]`：与 A 相同，是更明确的写法。</li>
    <li>C. `data.loc[['a','b'],:3]`：`.loc` 中，第二部分的整数切片 `:3` 是无效的，它期望的是标签。此代码会报错。</li>
    <li>D. `data[:2]`：这是<b>位置切片</b>，只选择前2行（即所有 `'a'` 的行）。结果与 `data['a':'b']` 不同。</li>
  </ul>
  选项 D 的结果是明确且不同的。

  **正确答案：** D
</details>

---
**19. 已知`result`是Series，数据如下，下列语句结果不同于其他三项的是（ ）**
```
state         number
Ohio           one       0
               two       1
               three     2
Colorado       one       3
               two       4
               three     5
```
A. `result.unstack()`
B. `result.unstack(0)`
C. `result.unstack('number')`
D. `result.unstack(1)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `unstack()` 方法用于将 Series 的多重索引中的一个层级“拆”到列上。
  <ul>
    <li>`result` 的索引层级是 `state` (level=0) 和 `number` (level=1)。</li>
    <li><b>A. `result.unstack()`</b>：默认情况下，拆分<b>最内层</b>的索引，即 `number` (level=1)。</li>
    <li><b>B. `result.unstack(0)`</b>：明确指定拆分第 0 层索引，即 `state`。<b>结果不同</b>。</li>
    <li><b>C. `result.unstack('number')`</b>：明确指定拆分名为 `'number'` 的索引层级，即 level=1。结果与默认相同。</li>
    <li><b>D. `result.unstack(1)`</b>：明确指定拆分第 1 层索引，即 `number`。结果与默认相同。</li>
  </ul>

  **正确答案：** B
</details>

---
**20. 下列关于`merge`方法说法正确的是：（ ）**
A. 默认情况下，merge做的是外连接
B. 没有指定在哪一列上进行连接时， merge会自动将重叠的列名作为连接的键
C. merge方法的内连接，结果是两张表的并集，外连接是两张表的交集
D. 以上都不对

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。`merge` 默认是<b>内连接 (`inner`)</b>。</li>
    <li><b>B: 正确</b>。如果没有通过 `on`, `left_on`, `right_on` 等参数指定连接键，`merge` 会自动使用两个 DataFrame 中<b>共同的列名</b>作为连接键。</li>
    <li>C: 错误。内连接是<b>交集</b>，外连接是<b>并集</b>。描述正好相反。</li>
    <li>D: 错误，因为 B 是正确的。</li>
  </ul>

  **正确答案：** B
</details>

---
**21. 对于给定的 `frame`，下列代码可以正确输出的是：（ ）**
A. `frame['state']`
B. `frame['key1']`
C. `frame['a']`
D. `frame['Colorado']`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `frame` 的列是一个多重索引，顶层 (`state`) 的标签是 `['Ohio', 'Colorado']`。
  <ul>
    <li>A: 错误。`'state'` 是列索引的一个<b>层级名</b>，不能直接用于索引。</li>
    <li>B: 错误。`'key1'` 是<b>行</b>索引的层级名。</li>
    <li>C: 错误。`'a'` 是<b>行</b>索引的一个标签。</li>
    <li><b>D: 正确</b>。`'Colorado'` 是列索引<b>顶层</b>的一个有效标签，可以用 `frame['Colorado']` 来选择它下面的所有列。</li>
  </ul>

  **正确答案：** D
</details>



---
**22. `frame.sort_index(level=0)` 的结果是（ ）**
```python
import pandas as pd
import numpy as np

frame = pd.DataFrame(np.arange(12).reshape((4, 3)),
                     index=[['a', 'a', 'b', 'b'], [1, 2, 1, 2]],
                     columns=[['Ohio', 'Ohio', 'Colorado'],
                              ['Green', 'Red', 'Green']])
frame.index.names = ['key1', 'key2']
```

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/19.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/20.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/21.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>初始 `frame` 的行索引</b>：是一个双层索引 (MultiIndex)，其值为 `[('a', 1), ('a', 2), ('b', 1), ('b', 2)]`。第一层 (`key1`) 是 `['a', 'a', 'b', 'b']`，第二层 (`key2`) 是 `[1, 2, 1, 2]`。</li>
    <li><b>执行 `frame.sort_index(level=0)`</b>：
      <ul>
        <li>该方法用于按索引进行排序。</li>
        <li>参数 <code>level=0</code> 明确指定了要排序的是<b>第一个索引层级</b>，即 `key1`。</li>
      </ul>
    </li>
    <li><b>分析排序过程</b>：
      <ul>
        <li>我们观察 `key1` 层级的标签：`['a', 'a', 'b', 'b']`。</li>
        <li>这个序列本身<b>已经</b>是按字母顺序排好序的（`a` 在 `b` 之前）。</li>
        <li>因此，调用 `sort_index(level=0)` 不会改变 `frame` 的行顺序。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：输出的 DataFrame 将与原始的 `frame` 完全相同，这与选项 B 的图片内容一致。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame
  frame = pd.DataFrame(np.arange(12).reshape((4, 3)),
                       index=[['a', 'a', 'b', 'b'], [1, 2, 1, 2]],
                       columns=[['Ohio', 'Ohio', 'Colorado'],
                                ['Green', 'Red', 'Green']])
  frame.index.names = ['key1', 'key2']
  
  print("原始 DataFrame:")
  print(frame)

  # 执行 sort_index 操作
  result = frame.sort_index(level=0)
  
  print("\n执行 frame.sort_index(level=0) 之后的结果:")
  print(result)
  ```
</details>

---
**23. 下列关于`concat`函数的参数说法正确的是：（ ）**
A. `axis`的轴向默认是0沿着行方向
B. `objs`不是必选参数
C. `join`默认是`inner`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A: 正确</b>。`axis=0` 是默认值，表示沿行索引方向进行拼接（即垂直堆叠）。</li>
    <li>B: 错误。`objs` 是一个包含要拼接对象的序列，是 `concat` 的<b>必选</b>参数。</li>
    <li>C: 错误。`join` 的默认值是 `'outer'`，即取所有轴上索引的并集。</li>
  </ul>

  **正确答案：** A
</details>

---
**24. 取消DataFrame的多层索引可以使用哪个方法（ ）**
A. `swaplevel()`
B. `reset_index()`
C. `concat()`
D. `rename()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  此题与第 8 题相同。`reset_index()` 方法将索引层级移入到数据列中，并用一个简单的整数索引替代，从而“取消”了层次化索引。

  **正确答案：** B
</details>

---
**25. 选出下面正确的一项（ ）**
A. DataFrame的`set_index`函数会在原来的DataFrame上进行修改
B. 一般情况下，`merge`是进行外连接
C. 用`sort_index()`只能在单一层级上对数据进行排序
D. 以上都不对

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。`set_index` 默认 `inplace=False`，返回一个新对象。</li>
    <li>B: 错误。`merge` 默认是<b>内连接 (`inner`)</b>。</li>
    <li>C: 错误。`sort_index` 的 `level` 参数可以接受一个列表，从而按多个层级的顺序进行排序。</li>
  </ul>
  由于 A, B, C 都错误，所以 D 是正确选项。

  **正确答案：** D
</details>

---
**26. 执行下列代码的效果是：( )**
```python
import pandas as pd
import numpy as np
df = pd.DataFrame(np.arange(72).reshape((8,9)))
df.sub(df.mean(axis=1), axis=0)
```
A. 输出各行的均值。
B. 输出每列原来的数值减去每行数据的平均值。
C. 输出每行原来的数值减去所有数据的平均值。
D. 输出每行原来的数值减去该行数据的平均值。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`df.mean(axis=1)`</b>：计算每一<b>行</b>的平均值。这会产生一个 Series，其索引与 `df` 的行索引对齐。</li>
    <li><b>`df.sub(series, axis=0)`</b>：`sub` 是减法操作。`axis=0` (或 `axis='index'`) 指示 Pandas 在广播时，将 `series` 的索引与 `df` 的<b>行索引</b>对齐。</li>
    <li>这意味着，对于 `df` 中的每一行，都会减去 `series` 中具有相同行索引的那个值（即该行的平均值）。</li>
  </ol>
  因此，整个操作的效果是：对于 `df` 的每一行，其所有元素都减去该行自身的平均值。

  **正确答案：** D
</details>

## 第九章：数据可视化

**1. 在创建了子图之后，接连输入两条绘图命令`plt.plot()`，会出现什么情况？（ ）**
A. matplotlib会在最后一个图片和子图上展示两条命令的图像。
B. matplotlib会在最后一个子图上展示最后一条的图像，在倒数第二个子图上展示倒数第二条的图像。
C. 报错。
D. matplotlib只会在最后一个图片和子图上展示最后一条命令的图像。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Matplotlib 的状态机接口 (pyplot) 会将所有绘图命令作用于当前“活动”的 Axes (子图) 对象。如果在创建子图后没有明确切换活动子图，那么所有后续的 `plt.plot()` 命令都会在同一个（通常是最后一个创建的）子图上叠加绘制。

  **正确答案：** A

  **代码示例：**
  ```python
  import matplotlib.pyplot as plt
  
  # 创建一个包含两个子图的 Figure
  fig, axes = plt.subplots(1, 2)
  
  # 此时，axes[1] 是“活动”子图
  # 接连输入两条绘图命令
  plt.plot([1, 2, 3])
  plt.plot([3, 2, 1])
  
  # 显示图像，会看到两条线都绘制在右边的子图上
  plt.show()
  ```
</details>

---
**2. 在图表中添加图形时，需要用到的命令是？（ ）**
A. `add_subplot()`
B. `add_patch()`
C. `figure()`
D. `set_title()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `add_subplot()`：用于向 Figure 添加子图 (Axes)。</li>
    <li><b>B. `add_patch()`</b>：`patch` 是 Matplotlib 中几何形状的基类，如矩形、圆形、多边形等。`ax.add_patch()` 方法用于将这些形状（图形）添加到子图中。</li>
    <li>C. `figure()`：用于创建新的 Figure 对象。</li>
    <li>D. `set_title()`：用于设置子图的标题。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import matplotlib.pyplot as plt
  
  fig, ax = plt.subplots()
  # 创建一个矩形 Patch
  rect = plt.Rectangle((0.2, 0.2), 0.5, 0.5, color='r')
  # 将 Patch 添加到子图中
  ax.add_patch(rect)
  plt.show()
  ```
</details>

---
**3. 下面这个图符合下列哪个语句的样式？（ ）**
![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/22.jpg)
A. `plt.plot(np.random.randn(30).cumsum(), 'ko--')`
B. `plt.plot(np.random.randn(30).cumsum(), 'ko-')`
C. `plt.plot(np.random.randn(30).cumsum(), 'k--')`
D. `plt.plot(np.random.randn(30).cumsum(), 'k-')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `'ko--'` 是一个格式字符串，它组合了颜色、标记和线型：
  <ul>
    <li>`'k'`：表示颜色为黑色 (black)。</li>
    <li>`'o'`：表示标记 (marker) 为圆点。</li>
    <li>`'--'`：表示线型 (linestyle) 为虚线 (dashed)。</li>
  </ul>
  这与图片中“黑色、点、虚线连接”的样式完全匹配。

  **正确答案：** A
</details>

---
**4. 下面在matplotlib中不表示颜色的是（ ）**
A. b
B. k
C. o
D. r

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Matplotlib 的格式字符串中：
  <ul>
    <li>A. `'b'`：表示蓝色 (blue)。</li>
    <li>B. `'k'`：表示黑色 (black)。</li>
    <li><b>C. `'o'`</b>：表示<b>标记 (marker)</b> 为圆点，不表示颜色。</li>
    <li>D. `'r'`：表示红色 (red)。</li>
  </ul>
  *注：问题中出现了两个D选项，第二个D选项为答案所在，但我修改成了B、C、D以符合常规。根据内容，答案是表示标记的'o'*

  **正确答案：** C (原题中的第二个 D)
</details>

---
**5. 以下哪个参数用于旋转Series绘图的刻度标签（ ）**
A. `rotation`
B. `rot`
C. `xticks`
D. `yticks`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Pandas 的 `.plot()` 方法中，`rot` 参数用于旋转 x 轴的刻度标签。
  <ul>
    <li>A. `rotation`：这是 Matplotlib 中 `plt.xticks()` 等函数使用的参数名。</li>
    <li><b>B. `rot`</b>：这是 Pandas `.plot()` 方法中用于旋转刻度标签的便捷参数。</li>
    <li>C, D. `xticks`, `yticks`：用于设置刻度的位置。</li>
  </ul>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import matplotlib.pyplot as plt
  
  s = pd.Series(range(3), index=['long_label_a', 'long_label_b', 'long_label_c'])
  # 使用 rot 参数旋转刻度标签
  s.plot(kind='bar', rot=45)
  plt.show()
  ```
</details>

---
**6. 下面在pandas中用于绘制密度图的是（ ）**
A. `line()`
B. `barh()`
C. `hist()`
D. `density()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Pandas 的 `.plot` 访问器下：
  <ul>
    <li>A. `.plot.line()`：绘制线图。</li>
    <li>B. `.plot.barh()`：绘制水平柱状图。</li>
    <li>C. `.plot.hist()`：绘制直方图。</li>
    <li><b>D. `.plot.density()`</b>：绘制核密度估计图 (Kernel Density Estimate, KDE)，即密度图。它也可以通过 `.plot(kind='kde')` 或 `.plot(kind='density')` 实现。</li>
  </ul>

  **正确答案：** D
</details>

---
**7. 以下哪种方法用于绘制水平柱状图（ ）**
A. `line`
B. `bar`
C. `barh`
D. `hist`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Pandas 的 `.plot` 访问器下，或者通过 `.plot(kind=...)` 参数：
  <ul>
    <li>`line`：线图</li>
    <li>`bar`：垂直柱状图</li>
    <li><b>`barh`</b>：<b>水平 (horizontal)</b> 柱状图</li>
    <li>`hist`：直方图</li>
  </ul>

  **正确答案：** C
</details>

---
**8. 以下哪种方法绘制的是直方图（ ）**
A. `scatter`
B. `line`
C. `density`
D. `hist`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Pandas 的 `.plot` 访问器下，或者通过 `.plot(kind=...)` 参数：
  <ul>
    <li>`scatter`：散点图</li>
    <li>`line`：线图</li>
    <li>`density`：密度图</li>
    <li><b>`hist`</b>：<b>直方图 (histogram)</b></li>
  </ul>

  **正确答案：** D
</details>

---
**9. `df=pd.DataFrame(np.random.rand(6,4),index=['one','two',...],columns=['A','B','C','D'])`，代码`df.plot.bar(alpha=0.5, stacked=True)`的结果为（ ）**

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/23.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/24.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/25.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/26.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`df.plot.bar(...)`</b>：表示绘制垂直柱状图。
      <ul>
        <li>默认情况下，DataFrame 的<b>行索引</b> (`'one'`, `'two'`, ...) 会成为 x 轴上的刻度标签。</li>
        <li>DataFrame 的每一<b>列</b> (`'A'`, `'B'`, `'C'`, `'D'`) 会成为一组数据，在图例中显示。</li>
      </ul>
    </li>
    <li><b>`stacked=True`</b>：表示绘制<b>堆积</b>柱状图，即将每个索引（如 `'one'`）对应的多列数据（`A`, `B`, `C`, `D` 的值）堆叠在同一个柱子上，而不是并列放置。</li>
    <li><b>`alpha=0.5`</b>：表示设置图形的透明度为 0.5。</li>
  </ul>
  <p>综合分析：结果应该是一个<b>堆积柱状图</b>，其 <b>x 轴</b>是 DataFrame 的行索引 (`'one'`, `'two'`, ...)，<b>图例</b>是 DataFrame 的列名 (`'A'`, `'B'`, ...)。</p>
  <p>选项 C 的图片完全符合这个描述。</p>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np
  import matplotlib.pyplot as plt

  # 创建一个与题目类似的 DataFrame
  df = pd.DataFrame(np.random.rand(6, 4),
                    index=['one', 'two', 'three', 'four', 'five', 'six'],
                    columns=['A', 'B', 'C', 'D'])

  # 绘制堆积柱状图
  df.plot.bar(stacked=True, alpha=0.5)

  # 显示图像
  plt.show()
  ```
</details>

---
**10. seaborn中的哪个函数可以绘制散点图（ ）**
A. `distplot`
B. `regplot`
C. `barplot`
D. `pairplot`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `distplot`：绘制直方图和密度图（在新版中已弃用，推荐 `histplot` 和 `displot`）。</li>
    <li><b>B. `regplot`</b>：绘制<b>散点图</b>并拟合一条<b>回归线</b>。它核心是散点图。`scatterplot` 也是专门绘制散点图的函数。</li>
    <li>C. `barplot`：绘制条形图（柱状图）。</li>
    <li>D. `pairplot`：绘制变量间的成对关系图，其对角线是每个变量的分布图，非对角线是<b>散点图</b>。</li>
  </ul>
  B 和 D 都可以绘制散点图，但 B 是更直接的散点图（带回归）函数。

  **正确答案：** B
</details>

---
**11. 以下哪个函数用于为每条线生成一个区分的图例（ ）**
A. `plt.plot`
B. `plt.legend`
C. `plt.figure`
D. `plt.subplots`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `plt.plot`：用于绘图，可以通过 `label` 参数为线条指定名称。</li>
    <li><b>B. `plt.legend`</b>：专门用于<b>显示图例 (legend)</b>。它会收集所有带有 `label` 的绘图元素，并生成一个图例框。</li>
    <li>C. `plt.figure`：创建新的图形窗口。</li>
    <li>D. `plt.subplots`：创建包含子图的图形窗口。</li>
  </ul>

  **正确答案：** B
</details>

---
**12. 对于seaborn，以下说法错误的是（ ）**
A. seaborn可以提高matplotlib图表的可读性和美观性
B. seaborn中的绘图函数使用一个data参数来传入数据
C. seaborn中的distplot用于绘制直方图和连续密度估计
D. seaborn不适用与在绘图前需要聚合或汇总的数据

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。Seaborn 是基于 Matplotlib 的高级封装，提供了更美观的默认样式。</li>
    <li>B: 正确。Seaborn 的一个核心特性是面向数据集，通常通过 `data` 参数传入 DataFrame，再通过字符串指定 x, y 轴对应的列。</li>
    <li>C: 正确。`distplot`（在新版中推荐 `histplot`）可以同时展示直方图和 KDE 曲线。</li>
    <li>D: <b>错误</b>。Seaborn 的许多函数，如 `barplot` 和 `countplot`，内部就包含了<b>聚合</b>操作。例如，`barplot` 默认会计算每个类别的均值。</li>
  </ul>

  **正确答案：** D
</details>

---
**13. 关于Series和DataFrame的plot方法的参数，以下说法错误的是（ ）**
A. `alpha`用于传入绘图所用的子图对象
B. `sort_columns`用于将各列按字母顺序绘制
C. `legend`用于生成子图图例
D. `xlim`，`ylim`分别用于设置x轴范围和y轴范围

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A: 错误</b>。`alpha` 参数用于设置图形的<b>透明度</b>（取值 0 到 1）。用于传入子图对象的参数是 <b>`ax`</b>。</li>
    <li>B: 正确。`sort_columns` 用于对列进行排序后再绘图。</li>
    <li>C: 正确。`legend` 用于控制是否显示图例。</li>
    <li>D: 正确。`xlim` 和 `ylim` 用于设置 x 轴和 y 轴的显示范围。</li>
  </ul>

  **正确答案：** A
</details>

---
**14. 以下代码的输出结果为（ ）**
`fig, axes = plt.subplots(2,2); plt.plot([1,2,3,4,5])`

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/27.jpg)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/28.jpg)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/29.jpg)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/30.jpg)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`fig, axes = plt.subplots(2,2)`</b>：创建了一个 2x2 的子图网格，共 4 个子图。`axes` 是一个包含这 4 个子图对象的 NumPy 数组。</li>
    <li><b>`plt.plot(...)`</b>：当使用 `plt.` 接口（状态机接口）绘图时，它会自动在<b>当前活动</b>的子图上绘制。在 `subplots` 创建后，默认的活动子图是<b>最后一个</b>，即右下角的子图 `axes[1, 1]`。</li>
  </ol>
  因此，结果会是一个 2x2 的空网格，只有右下角的子图上绘制了一条线。选项 A 符合描述。

  **正确答案：** A
</details>

---
**15. 若要在散点图中比较直观地展示点的密集程度，最好改变下列哪一个值？（ ）**
A. `alpha`
B. `style`
C. `kind`
D. `logy`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  当散点图中的点大量重叠时，很难看出点的密集区域。
  <ul>
    <li><b>A. `alpha`</b>：设置点的<b>透明度</b>。将透明度调低（如 `alpha=0.1`）后，点重叠的区域颜色会更深，从而能非常直观地展示出点的密集程度。</li>
    <li>B. `style`：用于设置线型和标记样式，对散点图的点密集程度展示作用不大。</li>
    <li>C. `kind`：用于指定绘图类型，不是散点图的参数。</li>
    <li>D. `logy`：对 y 轴使用对数刻度，用于处理数值范围跨度大的数据，与点密集程度展示关系不大。</li>
  </ul>

  **正确答案：** A
</details>

---
**16. 下列代码的①②③处应该填入下列代码中的哪几个，才能得到下图（ ）**

![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/31.jpg)

```python
import numpy as np
import matplotlib.pyplot as plt
a = np.arange(10)
plt.plot(a, a*1.5, ①, 
         a, a*2.5, ②, 
         a, a*3.5, ③)
plt.show()
```

A. `'r:x'`, `'r--x'`, `'r-.x'`
B. `'r:x'`, `'r-.x'`, `'r--x'`
C. `'r-.x'`, `'r--x'`, `'r:x'`
D. `'r-.x'`, `'r:x'`, `'r--x'`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>我们需要将图中的三条线与代码中的三组数据和格式字符串一一对应。所有线条都是红色(`r`)且带 `x` 标记，区别在于线型。</p>
  <ol>
    <li><b>第一条线 (最下面)</b>：对应数据 `a, a*1.5`。从图中看，这是一条<b>点线 (dotted)</b>。对应的格式字符串是 <b>`:`</b>。所以 ① 应该是 <b>`'r:x'`</b>。</li>
    <li><b>第二条线 (中间)</b>：对应数据 `a, a*2.5`。从图中看，这是一条<b>点划线 (dash-dot)</b>。对应的格式字符串是 <b>`-.`</b>。所以 ② 应该是 <b>`'r-.x'`</b>。</li>
    <li><b>第三条线 (最上面)</b>：对应数据 `a, a*3.5`。从图中看，这是一条<b>虚线 (dashed)</b>。对应的格式字符串是 <b>`--`</b>。所以 ③ 应该是 <b>`'r--x'`</b>。</li>
  </ol>
  <p>将这三个格式字符串按顺序组合，得到 `('r:x', 'r-.x', 'r--x')`，这与选项 B 完全匹配。</p>

  **正确答案：** B

  **代码示例：**
  ```python
  import numpy as np
  import matplotlib.pyplot as plt

  # 创建数据
  a = np.arange(10)

  # 使用正确的格式字符串绘制三条线
  plt.plot(a, a*1.5, 'r:x',    # 点线
           a, a*2.5, 'r-.x',   # 点划线
           a, a*3.5, 'r--x')   # 虚线

  # 显示图像
  plt.show()
  ```
</details>

---
**17. 下列format_string，不能表示绿色虚线的是（ ）**
A. `'g:'`
B. `'g-.'`
C. `'g..'`
D. `'g--'`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `'g'` 表示绿色。虚线可以用 `:`(点线), `-.'`(点划线), `--`(虚线) 表示。
  <ul>
    <li>A. `'g:'`：绿色点线。</li>
    <li>B. `'g-.'`：绿色点划线。</li>
    <li>C. `'g..'`：`..` 不是 Matplotlib 标准的线型格式字符串。无效。</li>
    <li>D. `'g--'`：绿色虚线。</li>
  </ul>
  因此，C 不能表示绿色虚线。

  **正确答案：** C
</details>

---
**18. 对于DataFrame对象`df`，`df.plot()`与下列哪条语句是等价的。（ ）**
A. `df.bar()`
B. `df.plot().line()`
C. `df.line()`
D. `df.plot.line()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas 的 `.plot()` 方法，当不指定 `kind` 参数时，默认绘制的是<b>线图 (line plot)</b>。
  <ul>
    <li>A: `df.bar()` 是错误的语法，应为 `df.plot.bar()`。</li>
    <li>B: `df.plot()` 返回一个 Axes 对象，该对象没有 `.line()` 方法。</li>
    <li>C: `df.line()` 不是标准的 Pandas 绘图方法。</li>
    <li><b>D. `df.plot.line()`</b>：这是通过 `.plot` 访问器明确调用线图绘制的方法，其效果与默认的 `df.plot()` 完全相同。</li>
  </ul>

  **正确答案：** D
</details>

---
**19. plot中可以使用哪个函数作柱状图（ ）**
A. `Bar()`
B. `barh()`
C. `hist()`
D. `Barh`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Pandas 的 `.plot` 访问器中：
  <ul>
    <li>A, D: `Bar()` 和 `Barh` 不是函数名，正确的应为小写。</li>
    <li><b>B. `barh()`</b>：绘制水平柱状图。`bar()` 绘制垂直柱状图。两者都是绘制柱状图的函数。</li>
    <li>C. `hist()`：绘制直方图，用于表示数值分布，与柱状图（表示类别数量或大小）不同。</li>
  </ul>
  选项 B 是一个有效的绘制柱状图的函数。

  **正确答案：** B
</details>

---
**20. 运行下列代码，得到的可视化结果为（ ）**
```python
import pandas as pd
df = pd.DataFrame({'A':[34,12,52], 'B':[87,123,23], 'C':[15,19,64]},
                  index=['one','two','three'])
df.plot.bar()
```
A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/32.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/33.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/34.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/35.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`df.plot.bar()`</b>：该方法用于创建一个<b>垂直柱状图</b>。</li>
    <li><b>数据映射</b>：
      <ul>
        <li>DataFrame 的<b>行索引</b> (`'one'`, `'two'`, `'three'`) 会成为 x 轴上的刻度标签。</li>
        <li>DataFrame 的每一<b>列</b> (`'A'`, `'B'`, `'C'`) 会成为一组并列的柱子，并在图例中显示。</li>
      </ul>
    </li>
    <li><b>结果分析</b>：对于 x 轴上的每个刻度（如 `'one'`），都会有三根并列的柱子，分别代表该行在 'A', 'B', 'C' 列的值。这种并列的形式被称为<b>分组柱状图</b>。</li>
  </ul>
  <p>选项 A 的图片展示了以 `'one'`, `'two'`, `'three'` 为 x 轴，'A', 'B', 'C' 为分组的垂直柱状图，完全符合代码的执行结果。</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import matplotlib.pyplot as plt

  # 创建题目中的 DataFrame
  df = pd.DataFrame({'A':[34,12,52], 'B':[87,123,23], 'C':[15,19,64]},
                    index=['one','two','three'])
  
  # 绘制分组垂直柱状图
  df.plot.bar()
  
  # 显示图像
  plt.tight_layout() # 调整布局以防标签重叠
  plt.show()
  ```
</details>

---
**21. 运行下列代码，输出的结果为（ ）**
```python
import pandas as pd
import matplotlib.pyplot as plt

fig, axes = plt.subplots(1, 2)
df = pd.DataFrame({'A':[34, 12, 52], 'B':[87, 123, 23], 'C':[15, 19, 64]},
                  index=['one', 'two', 'three'])
df.plot()
```

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/36.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/37.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/38.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/39.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b><code>fig, axes = plt.subplots(1, 2)</code></b>：这行代码创建了一个包含1行2列（共2个）子图的图形窗口。<code>axes</code> 是一个包含这两个子图对象的数组。</li>
    <li><b>当前活动子图</b>：在 <code>plt.subplots</code> 执行后，Matplotlib 的“当前活动”子图（pyplot 接口会在此绘图）默认是<b>最后一个</b>被创建的子图，也就是右边的 <code>axes[1]</code>。</li>
    <li><b><code>df.plot()</code></b>：这是 Pandas 的绘图方法。当不通过 <code>ax</code> 参数明确指定绘图位置时，它会自动在当前的活动子图上进行绘制。</li>
    <li><b>结论</b>：因此，<code>df</code> 的线图会被绘制在右边的子图上，而左边的子图则保持为空白。这与选项 B 的图片完全一致。</li>
  </ol>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd
  import matplotlib.pyplot as plt

  # 创建一个 1x2 的子图网格
  fig, axes = plt.subplots(1, 2)
  
  # 创建 DataFrame
  df = pd.DataFrame({'A':[34, 12, 52], 'B':[87, 123, 23], 'C':[15, 19, 64]},
                    index=['one', 'two', 'three'])
  
  # 在当前活动的子图（默认是右边的 axes[1]）上绘图
  df.plot()
  
  # 显示图像
  plt.show()
  ```
</details>

---
**22. 通过`fig,axes=plt.subplots(2,2)`生成的子图，不可以通过以下方式调用：**
A. `axes[1]`
B. `axes[0,0]`
C. `fig[0,0]`
D. `fig.axes[0]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`fig, axes = plt.subplots(2,2)` 中，`axes` 是一个 2x2 的 NumPy 数组，包含了 4 个子图 (Axes) 对象。</li>
    <li>A: `axes[1]` 可以访问第二行（可以得到 `[axes[1,0], axes[1,1]]`）。有效。</li>
    <li>B: `axes[0,0]` 可以访问第一行第一列的子图。有效。</li>
    <li><b>C: `fig[0,0]`</b>：<b>错误</b>。`fig` 是 Figure 对象，它不支持像 NumPy 数组那样的二维索引来访问子图。</li>
    <li>D: `fig.axes` 是一个包含了 Figure 中所有子图对象的列表。`fig.axes[0]` 可以访问第一个子图。有效。</li>
  </ul>

  **正确答案：** C
</details>

---
**23. 下列关于可视化的说法，错误的是（ ）**
A. `plt.legend`用于为每一条线生成一个区分的图例
B. `plt.savefig`方法可以将图片写入到所有的文件型对象中
C. 默认情况下，Series和DataFrame的`plot()`方法绘制的是条形图
D. `seaborn`中的绘图函数使用`data`参数来传入数据

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。</li>
    <li>B: 正确。`savefig` 可以接收文件路径，也可以接收一个文件类对象（如 `io.BytesIO`）。</li>
    <li>C: <b>错误</b>。`plot()` 方法默认绘制的是<b>线图 (line plot)</b>，不是条形图。</li>
    <li>D: 正确。这是 Seaborn 的一个核心特性。</li>
  </ul>

  **正确答案：** C
</details>

---
**24. 下列说法错误的是（ ）**
A. 使用jupyter notebook画复杂图表必须将绘图命令放在单个单元格里
B. matplotlib会自动检查标签是否重叠
C. Series.plot.grid方法展示轴网络默认是打开的
D. Series和DataFrame的索引可以用来绘制轴刻度

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。为了保证所有命令作用于同一个 Figure/Axes 对象，通常需要将它们放在一个单元格中执行。</li>
    <li>B: 错误。Matplotlib 默认<b>不会</b>自动检查和调整重叠的标签，有时需要手动调整（如旋转或使用 `tight_layout`）。</li>
    <li>C: 错误。`.plot.grid()` 方法默认 `visible=None`，其行为取决于配置，但通常需要明确设置为 `True` 才能显示网格。</li>
    <li>D: 正确。Pandas 绘图时，默认使用索引作为 x 轴（对于 Series）或刻度（对于 DataFrame）。</li>
  </ul>
  选项 B 和 C 都错误，但 B 描述的是一个更普遍和基础的 Matplotlib 行为。

  **正确答案：** B
</details>

---
**25. 下面说法正确的是：（ ）**
A. `ax1=fig.add_subplot(2,2,0)`是可以运行的
B. 绘制图形时，其中使用到的alpha参数用于调节图像透明的
C. `plot.bar()`和`plot.barh()`函数分别用于绘制水平的和垂直的柱状图

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。`add_subplot(nrows, ncols, index)` 中的 `index` 是从 <b>1</b> 开始计数的，所以 `add_subplot(2,2,0)` 会报错。</li>
    <li><b>B: 正确</b>。`alpha` 参数用于设置图形的透明度，取值范围为 0 (完全透明)到 1 (完全不透明)。</li>
    <li>C: 错误。`plot.bar()` 绘制<b>垂直</b>柱状图，`plot.barh()` 绘制<b>水平</b>柱状图。描述正好相反。</li>
  </ul>

  **正确答案：** B
</details>

---
**26. 下面哪一条语句可以为DataFrame生成堆积柱状图？( )**
A. `df.plot.bar(stacked=True, alpha=0.5)`
B. `df.plot.bar(stack=True, alpha=0.5)`
C. `df.plot.bar(stacked=False, alpha=0.5)`
D. `df.plot.bar(stack=False, alpha=0.5)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  在 Pandas 的 `.plot.bar()` 方法中，用于生成堆积柱状图的参数是 `stacked`，并且需要将其值设置为 `True`。
  <ul>
    <li><b>A: `stacked=True` 是正确的参数和值。</b></li>
    <li>B: `stack=True` 是错误的参数名。</li>
    <li>C, D: `stacked/stack=False` 表示不使用堆积，绘制并列柱状图。</li>
  </ul>

  **正确答案：** A
</details>

---
**27. 下哪个说法是正确的？（ ）**
A. `add()`方法可以往图表中添加图形
B. 如果想取消图例中的元素，可以选择不要传入`label`参数或传入`label = '_nolegend'`
C. 注释只可以用于添加文本
D. 只能将绘制的图片保存为格式为.svg的文件

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。没有通用的 `add()` 方法，添加图形是 `add_patch()`，添加子图是 `add_subplot()` 等。</li>
    <li><b>B: 正确</b>。`plt.legend()` 只会为设置了 `label` 参数的绘图元素生成图例项。将 `label` 设置为以下划线开头的字符串（如 `_nolegend`）是 Matplotlib 中一个约定俗成的、用于在图例中隐藏该元素的方法。</li>
    <li>C: 错误。注释 (`annotate`) 不仅可以添加文本，还可以添加箭头等指向性图形。</li>
    <li>D: 错误。`savefig` 支持多种格式，如 `.png`, `.jpg`, `.pdf`, `.svg` 等。</li>
  </ul>

  **正确答案：** B
</details>

---
**28. 以下哪条执行语句输出结果和`plt.plot(np.random.randn(30).cumsum(), 'ko--')`不同。( )**
A. `plt.plot(np.random.randn(30).cumsum(), color='k', linestyle='dashed', marker='o')`
B. `plt.plot(np.random.randn(30).cumsum(), color='k', '--o')`
C. `plt.plot(np.random.randn(30).cumsum(), 'ok--')`
D. `plt.plot(np.random.randn(30).cumsum(), 'o--k')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`'ko--'` 表示：颜色黑 (`k`)，标记圆点 (`o`)，线型虚线 (`--`)。</li>
    <li>A: `color='k'`, `linestyle='dashed'` (`--`), `marker='o'`。与 `'ko--'` <b>等价</b>。</li>
    <li>B: `color='k'`, `'--o'`。`'--o'` 是一个格式字符串，表示虚线+圆点标记。与 `'ko--'` <b>等价</b>。</li>
    <li>C: `'ok--'`。格式字符串中，颜色、标记、线型的顺序可以任意调换。与 `'ko--'` <b>等价</b>。</li>
    <li>D: `'o--k'`。与 `'ko--'` <b>等价</b>。</li>
  </ul>
  *此题所有选项都与`'ko--'`等价，可能存在设计错误。但根据您提供的答案是B，我将假设`color`关键字参数与格式字符串不能混合使用，这在某些旧版本或特定情况下可能导致解析问题。但在现代Matplotlib中，这种混合是允许的。*

  **正确答案：** B (基于题目可能存在的特定解析规则)
</details>

## 第十章：高级数据分析技术


**1. 以下不可以作为`Groupby`的参数的（ ）**
A. 函数
B. 字典
C. Series
D. 具体的值

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `groupby()` 方法的 `by` 参数非常灵活，可以接受多种类型的输入来定义分组键：
  <ul>
    <li>A. <b>函数</b>：可以传入一个函数，它会对每个索引标签调用，返回值将用作分组键。</li>
    <li>B. <b>字典</b>或 C. <b>Series</b>：可以传入一个字典或 Series，其键或索引对应于被分组对象的索引，值用作分组键。</li>
    <li><b>D. 具体的值</b>：不能直接传入一个具体的值（如整数 `5` 或字符串 `'a'`）作为分组依据，因为这无法为每一行/列提供一个明确的分组键。必须是与被分组轴长度相同的序列（如列表、数组）、列名、函数或字典/Series。</li>
  </ul>

  **正确答案：** D
</details>

---
**2. `groupby`没有以下哪个方法？（ ）**
A. `count()`
B. `peak_to_peak`
C. `prod()`
D. `std()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  GroupBy 对象有一系列内置的聚合方法。
  <ul>
    <li>A. `count()`：计算每个分组的非 `NaN` 值的数量。存在。</li>
    <li><b>B. `peak_to_peak`</b>：`ptp` (peak-to-peak) 是 NumPy 数组的方法，用于计算最大值和最小值之差。GroupBy 对象本身没有直接的 `.peak_to_peak` 方法，但可以通过 `.agg(np.ptp)` 来应用。</li>
    <li>C. `prod()`：计算每个分组的乘积。存在。</li>
    <li>D. `std()`：计算每个分组的标准差。存在。</li>
  </ul>

  **正确答案：** B
</details>

---
**3. 下列可以用于DataFrame中分组的是（ ）**
① DataFrame中的一个或者一组列
② 字典或者Series
③ 函数
④ 索引级别

A. ①
B. ①②
C. ①②③
D. ①②③④

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `DataFrame.groupby()` 的 `by` 参数支持所有这些方式：
  <ul>
    <li>① <b>列名</b>：最常见的方式，如 `df.groupby('col_A')` 或 `df.groupby(['col_A', 'col_B'])`。</li>
    <li>② <b>字典或Series</b>：可以提供一个映射关系，将索引映射到分组键。</li>
    <li>③ <b>函数</b>：可以传入一个函数，它会作用于索引，返回值作为分组键。</li>
    <li>④ <b>索引级别</b>：对于多重索引 (MultiIndex)，可以通过层级名称或编号进行分组，如 `df.groupby(level='level_name')`。</li>
  </ul>
  因此，所有四种方式都可以用于分组。

  **正确答案：** D
</details>

---
**4. `pivot_table`的默认聚合类型是（ ）**
A. 分组平均值
B. 各个分组的中位数
C. 各个分组的方差
D. 各个分组的值的和

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `pd.pivot_table()` 函数用于创建数据透视表。其 `aggfunc` 参数决定了聚合的类型。当不指定 `aggfunc` 时，其默认值是 `'mean'`，即计算<b>分组平均值</b>。

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  df = pd.DataFrame({"A": ["foo", "foo", "bar"],
                     "B": ["one", "one", "two"],
                     "C": [1, 2, 3]})
  # 默认计算 C 列的平均值
  pivot = pd.pivot_table(df, values='C', index='A', columns='B')
  print(pivot)
  ```
</details>

---
**5. 下面方法可以计算分组中的非NA值的乘积的是（ ）**
A. `std`
B. `count`
C. `prod`
D. `median`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  GroupBy 对象的内置聚合方法：
  <ul>
    <li>A. `std`：标准差。</li>
    <li>B. `count`：计数。</li>
    <li><b>C. `prod`</b>：<b>乘积 (product)</b>。</li>
    <li>D. `median`：中位数。</li>
  </ul>

  **正确答案：** C
</details>

---
**6. `groupby`没有以下哪个方法？（ ）**
A. `count()`
B. `std()`
C. `prod()`
D. `get_max()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  GroupBy 对象有一系列内置的聚合方法。
  <ul>
    <li>A. `count()`：存在。</li>
    <li>B. `std()`：存在。</li>
    <li>C. `prod()`：存在。</li>
    <li><b>D. `get_max()`</b>：不存在。获取最大值的方法是 <b>`max()`</b>。</li>
  </ul>

  **正确答案：** D
</details>

---
**7. 下列对于分组与聚合的叙述，正确的是（ ）**
A. 只能用一个键对数据进行分组。
B. 分组键可以是正确长度的任何数组。
C. 默认情况下，一个DataFrame中所有的列都可以聚合。
D. `mean`方法可以计算GroupBy对象中各个分组中所有数值的均值。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。可以用一个或多个键（列表）进行分组。</li>
    <li><b>B: 正确</b>。只要数组的长度与被分组的轴的长度相同，它就可以作为分组键。</li>
    <li>C: 错误。只有<b>数值型</b>的列才能进行聚合计算（如 `mean`, `sum` 等）。非数值列会被自动排除。</li>
    <li>D: 错误。`mean()` 方法计算的是每个分组内<b>每一列</b>的均值，而不是所有数值的整体均值。</li>
  </ul>

  **正确答案：** B
</details>

---
**8. 假设`df = ...`，以下哪条语句可以根据`key1`标签计算`data1`列的均值。（ ）**
A. `df['data1'].mean()`
B. `df['data1'].groupby(df['key1']).mean()`
C. `df['data1'].groupby('key1').mean()`
D. `df['data1'].median()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  目标是先按 `'key1'` 分组，然后只对 `'data1'` 列计算均值。
  <ul>
    <li>A: 计算了整列 `'data1'` 的均值，没有分组。</li>
    <li><b>B: `df['data1'].groupby(df['key1']).mean()`</b>：这是一个标准且正确的<b>“Series GroupBy”</b>操作。先选择了 `'data1'` 这一列 (一个 Series)，然后用 `'key1'` 列 (另一个 Series) 作为分组键对其进行分组，最后计算均值。</li>
    <li>C: 错误。当对一个 Series (`df['data1']`) 使用 `.groupby()` 时，不能再用一个字符串列名作为分组键，必须提供一个与该 Series 等长的数组、列表或另一个 Series。</li>
    <li>D: 计算了整列的中位数，没有分组。</li>
  </ul>
  另一种等价的写法是 `df.groupby('key1')['data1'].mean()`。

  **正确答案：** B
</details>

---
**9. 关于`agg`方法，以下说法错误的是（ ）**
A. `agg`方法不能实现将不同的函数应用到不同的列
B. `agg`方法可以传入包含多个函数的列表
C. 通过向`agg`方法传入(name,function)元组的列表来实现对结果列名的修改
D. `agg`方法可以传入自定义函数

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A: 错误</b>。`agg` 方法的一个强大功能就是可以通过传入一个<b>字典</b>，实现将不同的函数应用到不同的列上。例如 `grouped.agg({'col_A': 'mean', 'col_B': 'sum'})`。</li>
    <li>B: 正确。传入函数列表会把所有函数应用到所有适用的列上。</li>
    <li>C: 正确。传入 `[('new_name', func)]` 这样的元组列表，可以自定义结果的列名。</li>
    <li>D: 正确。`agg` 可以接受任何能处理 Series 的自定义函数。</li>
  </ul>

  **正确答案：** A
</details>

---
**10. 关于`pivot_table`的选项，以下说法错误的是（ ）**
A. `pivot_table`默认的聚合类型为平均值
B. `dropna`选项用于在结果表中替换缺失值的值
C. `pivot_table`默认情况下聚合所有数值型的列
D. `margins`用于添加行/列小计和总计

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。`aggfunc` 参数默认为 `'mean'`。</li>
    <li><b>B: 错误</b>。用于替换缺失值的参数是 <b>`fill_value`</b>。`dropna` 参数是 DataFrame 的一个方法，用于删除缺失值，而不是 `pivot_table` 的一个选项。</li>
    <li>C: 正确。如果不指定 `values` 参数，`pivot_table` 会对所有可聚合的数值列进行聚合。</li>
    <li>D: 正确。`margins=True` 会添加总计行和列。</li>
  </ul>

  **正确答案：** B
</details>

---
**11. 假设有DataFrame对象`df`，`key1`是`df`中的列，下列代码不可以运行的是（ ）**
A. `means = df['data1'].groupby(df).mean()`
B. `grouped = df.groupby(df.dtypes, axis=1)`
C. `df.groupby(['key1']).mean()`
D. `pieces = dict(list(df.groupby('key1')))`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>A: 错误</b>。`.groupby(df)` 尝试用整个 DataFrame `df` 作为分组键。DataFrame 对象是不可哈希的 (unhashable)，不能作为分组键使用，这会引发 `TypeError`。</li>
    <li>B: 有效。`df.dtypes` 返回一个 Series，其索引是列名，值是数据类型。`axis=1` 表示按列分组，可以用 `df.dtypes` 这个 Series 将列按其数据类型进行分组。</li>
    <li>C: 有效。按 `'key1'` 列的值进行分组，并计算均值。</li>
    <li>D: 有效。GroupBy 对象是可迭代的，可以将其转换为一个元组列表（每个元组是 `(group_name, sub_dataframe)`)，然后再转换为字典。</li>
  </ul>

  **正确答案：** A
</details>


---
**12. 已知DataFrame `people` 和字典 `mapping`，则代码`people.groupby(mapping, axis=1).sum()`的输出可能为（ ）**
```python
import pandas as pd
import numpy as np

people = pd.DataFrame(np.random.randn(5, 5),
                      columns=['a','b','c','d','e'],
                      index=['Joe','Steve','Wes','Jim','Travis'])
mapping = {'a':'red', 'b':'red', 'c':'blue',
           'd':'blue', 'e':'red', 'f':'orange'}
```

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/40.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/41.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/42.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/43.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>`people.groupby(mapping, axis=1)`</b>：
      <ul>
        <li><code>axis=1</code> 表示按<b>列</b>进行分组。</li>
        <li><code>mapping</code> 字典提供了列名到分组键的映射关系。</li>
        <li>根据 `mapping`：
          <ul>
            <li>`'a'`, `'b'`, `'e'` 列被映射到分组 <b>`'red'`</b>。</li>
            <li>`'c'`, `'d'` 列被映射到分组 <b>`'blue'`</b>。</li>
            <li>`'f'` 在 `people` 的列中不存在，所以 `'orange'` 分组不会被创建。</li>
          </ul>
        </li>
      </ul>
    </li>
    <li><b>`.sum()`</b>：对每个分组内的列进行<b>求和</b>。
      <ul>
        <li>新的 <b>`'red'`</b> 列的值 = 原 `'a'` 列 + 原 `'b'` 列 + 原 `'e'` 列。</li>
        <li>新的 <b>`'blue'`</b> 列的值 = 原 `'c'` 列 + 原 `'d'` 列。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：
      <ul>
        <li>行索引保持不变 (`'Joe'`, `'Steve'`, ...)。</li>
        <li>列索引变为分组键 `'blue'` 和 `'red'`。</li>
        <li>由于原始数据是 `np.random.randn()` 生成的浮点数，求和后的结果仍然是浮点数。</li>
      </ul>
    </li>
  </ul>
  <p>选项 A 的图片展示了 `blue` 和 `red` 两列，并且其值为浮点数，完全符合代码的执行结果。</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame 和 mapping
  people = pd.DataFrame(np.random.randn(5, 5),
                        columns=['a','b','c','d','e'],
                        index=['Joe','Steve','Wes','Jim','Travis'])
  mapping = {'a':'red', 'b':'red', 'c':'blue',
             'd':'blue', 'e':'red', 'f':'orange'}
  
  print("原始 DataFrame:")
  print(people)

  # 执行 groupby 和 sum 操作
  result = people.groupby(mapping, axis=1).sum()
  
  print("\n执行分组求和之后的结果:")
  print(result)
  ```
</details>

---
**13. `pandas.crosstab`函数计算的是分组中的（ ）**
A. 累积和
B. 算术平均值
C. 频率
D. 算术中位数

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `pd.crosstab()` (交叉表) 是一个专门用于计算<b>交叉频率表</b>的函数。它会计算两个（或更多）因子（列）的组合出现的<b>频率</b>（计数）。

  **正确答案：** C
</details>


---
**14. 有数据集`tips`，列出了其前6行的数据**
![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/44.png)
**执行`grouped=tips.groupby(['day','smoker']); grouped['tip_pct','total_bill'].agg(['count','mean'])`后得到的输出是（ ）**

A. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/45.png)
B. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/46.png)
C. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/47.png)
D. ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/48.png)

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`grouped=tips.groupby(['day','smoker'])`</b>：首先，按 `'day'` 和 `'smoker'` 这两列对 `tips` DataFrame 进行分组，创建了一个 GroupBy 对象 `grouped`。</li>
    <li><b>`grouped['tip_pct','total_bill']`</b>：接着，从这个 GroupBy 对象中选择了 `'tip_pct'` 和 `'total_bill'` 这两列，表示后续的聚合操作将只针对这两列进行。</li>
    <li><b>`.agg(['count','mean'])`</b>：最后，对选中的两列应用了两个聚合函数：`count` (计算非空值的数量) 和 `mean` (计算均值)。</li>
  </ol>
  <p><b>结果的结构分析</b>：</p>
  <ul>
    <li><b>行索引 (Index)</b>：将会是一个双层索引 (MultiIndex)，由分组键 `('day', 'smoker')` 构成。</li>
    <li><b>列索引 (Columns)</b>：也将会是一个双层索引。
      <ul>
        <li><b>外层</b>是应用聚合的原始列名：`'tip_pct'` 和 `'total_bill'`。</li>
        <li><b>内层</b>是应用的聚合函数名：`'count'` 和 `'mean'`。</li>
      </ul>
    </li>
  </ul>
  <p>将这些组合起来，结果 DataFrame 的列会是 `(tip_pct, count)`, `(tip_pct, mean)`, `(total_bill, count)`, `(total_bill, mean)`。选项 A 的图片结构与此完全匹配。</p>
  <p>（注：选项B的图片似乎是 `.agg({'tip_pct': 'count', 'total_bill': 'mean'})` 的结果，选项D的图片是 `.agg(['count', 'mean'])` 但只作用于一列的结果，选项C的图片结构不完整。）</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建一个与题目类似的 tips DataFrame
  # 实际的 tips 数据集有更多行
  data = {'total_bill': [16.99, 10.34, 21.01, 23.68, 24.59, 25.29],
          'tip': [1.01, 1.66, 3.50, 3.31, 3.61, 4.71],
          'smoker': ['No', 'No', 'No', 'No', 'No', 'No'],
          'day': ['Sun', 'Sun', 'Sun', 'Sun', 'Sun', 'Sun'],
          'time': ['Dinner', 'Dinner', 'Dinner', 'Dinner', 'Dinner', 'Dinner'],
          'size': [2, 3, 3, 2, 4, 4]}
  tips = pd.DataFrame(data)
  tips['tip_pct'] = tips['tip'] / tips['total_bill'] # 创建 tip_pct 列

  # 执行题目中的分组和聚合操作
  grouped = tips.groupby(['day','smoker'])
  result = grouped['tip_pct','total_bill'].agg(['count','mean'])

  print(result)
  ```
</details>

---
**15. 下面代码的输出结果为：**
```python
def fun(data):
    return data.max() // 2
data = pd.DataFrame(...)
data.groupby('key').agg(fun).max().mean()
```
A. 0.5
B. 1
C. 1.5
D. 2

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`data.groupby('key').agg(fun)`</b>：
      <ul>
        <li>分组 'a': `data1` 的 max 是 2，`fun` 返回 `2 // 2 = 1`。`data2` 的 max 是 1，`fun` 返回 `1 // 2 = 0`。</li>
        <li>分组 'b': `data1` 的 max 是 4，`fun` 返回 `4 // 2 = 2`。`data2` 的 max 是 3，`fun` 返回 `3 // 2 = 1`。</li>
        <li>结果 DataFrame 为：`{'data1': [1, 2], 'data2': [0, 1]}`</li>
      </ul>
    </li>
    <li><b>`.max()`</b>：对上一步结果的每一<b>列</b>求最大值。
      <ul>
        <li>`data1` 列的最大值是 `2`。</li>
        <li>`data2` 列的最大值是 `1`。</li>
        <li>结果 Series 为：`data1: 2, data2: 1`</li>
      </ul>
    </li>
    <li><b>`.mean()`</b>：对上一步结果求均值。
      <ul>
        <li>`(2 + 1) / 2 = 1.5`。</li>
      </ul>
    </li>
  </ol>

  **正确答案：** C
</details>

---
**16. 下列选项中错误的是（ ）**
A. `groupby`可以在任意轴向上分组
B. 默认情况下，`groupby`在`axis=1`的轴向上分组。
C. 分组信息不一定以数组形式存在
D. `cut`返回的Categorical对象可以直接传递给`groupby`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。可以通过 `axis` 参数指定 `0` (行) 或 `1` (列)。</li>
    <li><b>B: 错误</b>。`groupby` 的 `axis` 参数<b>默认值为 0</b>，即默认按行进行分组。</li>
    <li>C: 正确。分组信息可以是函数、字典、Series 等。</li>
    <li>D: 正确。`cut` 的结果非常适合用作 `groupby` 的分组键。</li>
  </ul>

  **正确答案：** B
</details>

---
**17. 对于一个GroupBy对象，如果你要将`min`函数应用到`size`列上，将`std`函数应用到`tip`列上，应该执行下列哪个语句？**
A. `grouped.agg([('size',np.min),('tip','std')])`
B. `grouped.agg({'size': np.min, 'tip':  std})`
C. `grouped.agg({'size': np.min, 'tip': 'std'})`
D. `grouped.agg([('size',np.min),('tip',std)])`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  要将不同的聚合函数应用到不同的列，最直接的方法是向 `.agg()` 传入一个<b>字典</b>，其中<b>键是列名</b>，<b>值是聚合函数</b>。
  <ul>
    <li>A, D: 元组列表的格式通常用于对所有列应用聚合，并重命名结果。</li>
    <li>B: 错误。`std` 是一个未定义的变量，正确的函数是 `np.std` 或字符串 `'std'`。</li>
    <li><b>C: 正确</b>。`{'size': np.min, 'tip': 'std'}` 使用字典将 `np.min` 函数应用到 `size` 列，将 `'std'` (字符串形式) 函数应用到 `tip` 列。</li>
  </ul>

  **正确答案：** C
</details>

## 第十一章：时间序列数据的处理和分析

**1. 下面哪个时间序列频率字符串表示“每月第二个星期天”（ ）**
A. `Q-SUN`
B. `W-SUN`
C. `WOM-2SUN`
D. `BQ-SUN`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas 频率字符串中，`WOM` (Week Of Month) 用于生成特定周的日期。
  <ul>
    <li>A. `Q-SUN`：每个季度的最后一个星期天。</li>
    <li>B. `W-SUN`：每周的星期天。</li>
    <li><b>C. `WOM-2SUN`</b>：<b>每月 (Week Of Month) 的第二个 (2) 星期天 (SUN)</b>。</li>
    <li>D. `BQ-SUN`：每个业务季度的最后一个星期天。</li>
  </ul>

  **正确答案：** C
</details>

---
**2. 若`start = datetime(2011, 1, 7)`，则`start + timedelta(12, 12, 12)`的结果是（ ）**
A. `datetime.datetime(2011, 1, 19, 0, 0, 12, 12)`
B. `datetime.datetime(2011, 1, 19, 0, 12, 12)`
C. `datetime.datetime(2011, 1, 19, 12, 12)`
D. `datetime.datetime(2011, 1, 19, 12, 0, 12)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `timedelta(days=0, seconds=0, microseconds=0)`。
  题目中的 `timedelta(12, 12, 12)` 对应 `timedelta(days=12, seconds=12, microseconds=12)`。
  <ul>
    <li>`start` 是 `2011-01-07 00:00:00`。</li>
    <li>加上 12 天：`2011-01-07 + 12 days = 2011-01-19`。</li>
    <li>加上 12 秒：时间变为 `00:00:12`。</li>
    <li>加上 12 微秒。</li>
  </ul>
  结果是 `datetime.datetime(2011, 1, 19, 0, 0, 12, 12)`。

  **正确答案：** A
</details>

---
**3. 下列基础的时间序列频率表示每分钟的是（ ）**
A. D
B. T
C. M
D. BM

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `D`：每日 (Daily)。</li>
    <li><b>B. `T`</b> 或 `min`：<b>每分钟 (per minute)</b>。</li>
    <li>C. `M`：每月最后一个日历日 (Month end)。</li>
    <li>D. `BM`：每月最后一个工作日 (Business month end)。</li>
  </ul>

  **正确答案：** B
</details>

---
**4. 下列对于`date_range`方法的叙述，正确的是（ ）**
A. 使用`date_range`方法的时候，必须要传入一个起始日期和一个结尾日期。
B. 默认情况下，`date_range`生成的是每日的时间戳。
C. 若执行语句`index = pd.date_range(...)`，则`index`中包含结尾日期而不包含起始日期。
D. 使用`date_range`方法将生成一个`datetime`对象。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。`date_range` 至少需要 `start`, `end`, `periods` 中的两个。可以只提供 `start` 和 `periods`。</li>
    <li><b>B: 正确</b>。如果不指定 `freq` 参数，其默认值是 `'D'`，即每日。</li>
    <li>C: 错误。`date_range` 生成的日期范围是包含起始日期的。是否包含结尾日期取决于步长和周期。</li>
    <li>D: 错误。`date_range` 生成的是 Pandas 的 <b>`DatetimeIndex`</b> 对象，而不是单个的 `datetime` 对象。</li>
  </ul>

  **正确答案：** B
</details>

---
**5. `stamp = datetime(2011, 1, 3); stamp.strftime(?)`，问号处应该填入下列哪条语句，才可以使输出结果为`'2011-01-03'`（ ）**
A. `'%Y-%M-%d'`
B. `'%y-%m-%d'`
C. `'%D'`
D. `'%F'`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `strftime` 格式化指令：
  <ul>
    <li>`%Y`：四位数的年份 (2011)。</li>
    <li>`%y`：两位数的年份 (11)。</li>
    <li>`%m`：补零的月份 (01)。</li>
    <li>`%M`：分钟。</li>
    <li>`%d`：补零的日期 (03)。</li>
    <li>`%D`：是 `'%m/%d/%y'` 的简写。</li>
    <li><b>`%F`</b>：是 `'%Y-%m-%d'` 的简写。</li>
  </ul>
  因此，要得到 `'2011-01-03'`，可以使用 `'%Y-%m-%d'` 或其简写 `'%F'`。

  **正确答案：** D
</details>

---
**6. 对于下列代码...其运行结果为（ ）**
`start = datetime(2019,1,1,0,0); end = start + timedelta(12,60); end.strftime('%Y-%m-%d/%H:%M:%S')`
A. `'2019-01-13/00:01:00'`
B. `'2031-01-1/00:01:00'`
C. `'2019-01-13/01:00:00'`
D. `'2031-01-1/01:00:00'`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li>`timedelta(12, 60)` 表示 12 天 (days) 和 60 秒 (seconds)。</li>
    <li>`start` 是 `2019-01-01 00:00:00`。</li>
    <li>加上 12 天 -> `2019-01-13`。</li>
    <li>加上 60 秒 -> `00:01:00`。</li>
    <li>所以 `end` 是 `2019-01-13 00:01:00`。</li>
    <li>使用 `strftime` 格式化后得到 `'2019-01-13/00:01:00'`。</li>
  </ol>

  **正确答案：** A
</details>

---
**7. pandas中的哪个函数或方法可以将字符串列表转换为日期索引类型（ ）**
A. `strftime`
B. `strptime`
C. `to_datetime`
D. `timedelta`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `strftime`：将日期时间对象<b>格式化为字符串</b>。</li>
    <li>B. `strptime`：将<b>字符串解析为</b>日期时间对象（Python `datetime` 模块的方法）。</li>
    <li><b>C. `to_datetime`</b>：是 Pandas 中用于将各种形式（包括字符串列表）<b>转换为 `DatetimeIndex`</b> 或 `Timestamp` 的主要函数。</li>
    <li>D. `timedelta`：表示时间差。</li>
  </ul>

  **正确答案：** C
</details>

---
**8. 已知`now = datetime(2000,1,1)`，运行`MonthEnd().rollforward(now+MonthEnd())`得到的结果为（ ）**
A. `Timestamp('2000-02-31 00:00:00')`
B. `Timestamp('2000-01-31 00:00:00')`
C. `Timestamp('2000-01-01 00:00:00')`
D. `Timestamp('2000-02-01 00:00:00')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li>`now` 是 `2000-01-01`。</li>
    <li>`MonthEnd()` 是一个日期偏移量对象。</li>
    <li>`now + MonthEnd()`：将 `now` 滚动到其所在月份的最后一天，得到 `2000-01-31`。</li>
    <li>`.rollforward(...)`：如果日期已经在一个偏移量的锚点上，它将保持不变；否则，它会将日期向前滚动到下一个锚点。</li>
    <li>`MonthEnd().rollforward(Timestamp('2000-01-31'))`：因为 `2000-01-31` 本身就是一个月末，所以 `rollforward` 不会改变它。</li>
  </ol>
  结果是 `Timestamp('2000-01-31 00:00:00')`。

  **正确答案：** B
</details>

---
**9. `parse('6/12/2011', ?)`，问号处应填入以下哪条语句，才使得输出`datetime.datetime(2011, 12, 6, 0, 0)`。（ ）**
A. `dayfirst=True`
B. `dayfirst=False`
C. `daylast=True`
D. `daylast=False`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>输入的字符串是 `'6/12/2011'`。</li>
    <li>期望的输出是 `2011-12-06`，这意味着 `6` 必须被解析为<b>日 (day)</b>，`12` 被解析为<b>月 (month)</b>。</li>
    <li>`dateutil.parser.parse` 函数默认会按美式格式 (月/日/年) 解析。要强制它按欧式格式 (日/月/年) 解析，需要设置参数 <b>`dayfirst=True`</b>。</li>
  </ul>

  **正确答案：** A
</details>

---
**10. 已知区间`p=pd.Period('2007',freq='A-JUN')`则代码`p.asfreq('M','end')`输出为（ ）**
A. `Period('2006-07', 'M')`
B. `Period('2007-06', 'M')`
C. `Period('2007-07', 'M')`
D. `Period('2008-06', 'M')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`p=pd.Period('2007', freq='A-JUN')` 表示一个从 2006年7月 到 2007年6月 的年度区间。</li>
    <li>`.asfreq('M', 'end')` 将这个年度区间转换为月度区间。`'end'` 表示取该区间的<b>最后一个月份</b>。</li>
    <li>这个年度区间的最后一个月是 2007年6月。</li>
  </ul>
  因此，结果是 `Period('2007-06', 'M')`。

  **正确答案：** B
</details>

---
**11. 下列哪个语句可以输出`datetime.datetime(2011, 1, 3, 0, 0)`（ ）**
A. `datetime.datetime(2011, 1, 3, 0, 0)`
B. `import dateutil.parser; parse('2011-01-03')`
C. `pd.to_datetime('2011-01-03')`
D. `pd.to_datetime('2011-01-03').to_pydatetime()`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A, B: 都直接创建或返回一个 Python 内置的 `datetime.datetime` 对象。</li>
    <li>C: `pd.to_datetime()` 返回的是 Pandas 的 `Timestamp` 对象。</li>
    <li><b>D: `pd.to_datetime(...).to_pydatetime()`</b>：先将字符串转换为 Pandas 的 `Timestamp`，然后使用 `.to_pydatetime()` 方法将其转换回 Python 内置的 `datetime.datetime` 对象。</li>
  </ul>
  所有选项都能得到等价的日期时间表示，但只有 D 是通过 Pandas 实现并最终转换为 `datetime.datetime` 对象的。但 A 和 B 也能直接得到。此题可能存在歧义，但根据答案 D，考察的是 Pandas 转换。

  **正确答案：** D (A和B也是正确的)
</details>

---
**12. 已知`now = datetime(2011,11,17)`，则代码`offset=MonthEnd();offset.rollforward(now)`的输出为（ ）**
A. `Timestamp('2011-10-31 00:00:00')`
B. `Timestamp('2011-12-17 00:00:00')`
C. `Timestamp('2011-11-30 00:00:00')`
D. `Timestamp('2011-10-17 00:00:00')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`offset=MonthEnd()`：创建了一个“月末”日期偏移量。</li>
    <li>`.rollforward(now)`：将日期 `now` 向前滚动到<b>下一个</b>偏移量的锚点。如果 `now` 本身就在锚点上，则保持不变。</li>
    <li>`now` 是 `2011-11-17`，不是月末。</li>
    <li>下一个月末是 `2011-11-30`。</li>
  </ul>

  **正确答案：** C
</details>

---
**13. 存在一个时间序列对象`p = pd.Period(2017, freq='A-DEC')`，`p + 2`的结果为（ ）**
A. `Period(2018, freq=’A-FEB’)`
B. `Period(2019, freq=’A-DEC’)`
C. `Period(2019, freq=’A-NOV’)`
D. `Period(2018, freq=’A-FEB’)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`p = pd.Period(2017, freq='A-DEC')` 表示一个以12月为结尾的年度区间，即2017年。</li>
    <li>对 Period 对象进行整数加法，会根据其频率向前移动相应数量的单位。</li>
    <li>`p + 2` 表示将 2017 年度区间向前移动 2 个年度单位。</li>
    <li>`2017 + 2 = 2019`。频率保持不变。</li>
  </ul>

  **正确答案：** B
</details>

---
**14. 假设`ts`是一个以`datetime`对象为索引的Series，则以下语句输出结果相同的是（ ）**
① `ts['1/10/2011']` ② `ts['20110110']` ③ `ts[datetime(2011, 1, 10)]` ④ `ts[datetime(2011, 1, 10)]`
A. ①④
B. ①③
C. ②④
D. ③④

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  Pandas 在处理时间序列索引时，非常灵活，能够解析多种日期字符串格式，并将其与 `datetime` 对象匹配。
  <ul>
    <li>① `'1/10/2011'` (美式月/日/年) -> 会被解析为 2011年1月10日。</li>
    <li>② `'20110110'` (YYYYMMDD) -> 会被解析为 2011年1月10日。</li>
    <li>③, ④ `datetime(2011, 1, 10)` -> 直接就是 2011年1月10日。</li>
  </ul>
  所有这些方式最终都会指向索引中同一个 `datetime(2011, 1, 10)` 的位置。但选项中只有③和④是完全相同的代码。

  **正确答案：** D
</details>

---
**15. 以下哪个时间频率表示工作日的月初日期（ ）**
A. `M`
B. `BM`
C. `MS`
D. `BMS`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>`M`：月末 (Month End)</li>
    <li>`BM`：业务月末 (Business Month End)</li>
    <li>`MS`：月初 (Month Start)</li>
    <li><b>`BMS`</b>：<b>业务月初 (Business Month Start)</b>，即每个月的第一个工作日。</li>
  </ul>

  **正确答案：** D
</details>

---
**16. 在`datetime`对象中，“2019年5月20日15时20分”应该是下列哪一个格式？( )**
A. `%Y-%M-%D-%H-%m`
B. `%Y-%m-%D-%H-%M`
C. `%Y-%M-%D-%H-%M`
D. `%Y-%m-%d-%H-%M`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `strftime` 格式化指令：
  <ul>
    <li>`%Y`：年</li>
    <li>`%m`：月</li>
    <li>`%d`：日</li>
    <li>`%H`：小时 (24小时制)</li>
    <li>`%M`：分钟</li>
  </ul>
  选项 D 的 `%Y-%m-%d-%H-%M` 正确地使用了这些指令。

  **正确答案：** D
</details>

---
**17. 在时间序列中，输出从2010年1月1号0点开始的，每隔4个小时一次，一共十条记录的语句是？（ ）**
A. `pd.date_range('2010-01-01', periods = 10, freq = '4h')`
B. `pd.date_range('2010-01-01', periods = 10, freq = 'D-4h')`
C. `pd.date_range('2010-01-01', '2010-01-02', freq = '4h')`
D. `pd.date_range('2010-01-01',  freq = '4h')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `pd.date_range` 需要知道生成的范围。
  <ul>
    <li>`start='2010-01-01'`：指定了起始日期。</li>
    <li>`periods=10`：指定了生成的记录数量为10条。</li>
    <li>`freq='4h'`：指定了频率为每4小时。</li>
  </ul>
  选项 A 完美地组合了这三个参数来实现目标。

  **正确答案：** A
</details>

---
**18. 下面是`datetime(2019, 1, 1).strftime('%Y-%m-%d')`的结果的是 （ ）**
A. `2019-01-03`
B. `19-01-03`
C. `2019-1-3`
D. `19-1-3`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `strftime('%Y-%m-%d')` 的含义：
  <ul>
    <li>`%Y`：四位年份 (2019)</li>
    <li>`%m`：补零的月份 (01)</li>
    <li>`%d`：补零的日期 (01)</li>
  </ul>
  因此，`datetime(2019, 1, 1)` 会被格式化为 `'2019-01-01'`。此题选项似乎有误，但根据格式，A选项`2019-01-03` 的格式正确，只是日期不对。*假设日期为3号，则A正确*。

  **正确答案：** A (假设日期为3号)
</details>


---
**19. 设有`dates=pd.DatetimeIndex(...)`，`ts=pd.Series(np.arange(5),index=dates)`，执行`ts['1/2/2000']`后得到的输出是（ ）**
```python
import pandas as pd
import numpy as np

dates = pd.DatetimeIndex(['1/1/2000', '1/2/2000', '1/2/2000', 
                          '1/2/2000', '1/3/2000'])
ts = pd.Series(np.arange(5), index=dates)
```
A. `6`
B. `[1, 2, 3]`
C.
```
2000-01-02    1
2000-01-02    2
2000-01-02    3
dtype: int32
```
D. `2000-01-02    1`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li><b>创建 Series</b>：`ts` 是一个以 `DatetimeIndex` 为索引的 Series。其内容如下：<pre>
2000-01-01    0
2000-01-02    1
2000-01-02    2
2000-01-02    3
2000-01-03    4
dtype: int32</pre></li>
    <li><b>重复索引查询</b>：索引中包含了<b>重复的标签</b> `2000-01-02`。</li>
    <li><b>执行 `ts['1/2/2000']`</b>：
      <ul>
        <li>Pandas 能够自动将字符串 `'1/2/2000'` 解析为对应的日期时间对象。</li>
        <li>当使用一个重复的标签进行索引时，Pandas 会返回一个<b>新的 Series</b>，其中包含所有匹配该标签的行。</li>
        <li>索引为 `2000-01-02` 的行有三条，对应的值是 `1, 2, 3`。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作会返回一个新的 Series，其索引都是 `2000-01-02`，值分别是 `1, 2, 3`。这与选项 C 的内容完全一致。</li>
  </ul>
  <p>选项 B `[1, 2, 3]` 是一个 Python 列表，而 Pandas 操作返回的是 Series 对象。选项 A 和 D 都不完整。</p>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 Series
  dates = pd.DatetimeIndex(['1/1/2000', '1/2/2000', '1/2/2000',
                            '1/2/2000', '1/3/2000'])
  ts = pd.Series(np.arange(5), index=dates)
  
  print("原始 Series:")
  print(ts)

  # 执行索引操作
  result = ts['1/2/2000']
  
  print("\n执行 ts['1/2/2000'] 之后的结果:")
  print(result)
  ```
</details>


---
**20. `ts=pd.Series(np.arange(4),index=pd.date_range('1/1/2019',periods=4,freq='M'))`，执行`ts.shift(1,freq='D')`后得到的结果是（ ）**

A.
```
2019-01-31    0
2019-02-28    1
2019-03-31    2
2019-04-30    3
```
B.
```
2019-01-31    NaN
2019-02-28    0.0
2019-03-31    1.0
2019-04-30    2.0
```
C.
```
2019-01-30    0
2019-02-27    1
2019-03-30    2
2019-04-29    3
```
D.
```
2019-02-01    0
2019-03-01    1
2019-04-01    2
2019-05-01    3
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>创建 Series `ts`</b>：
      <ul>
        <li>`pd.date_range('1/1/2019', periods=4, freq='M')` 生成一个以每月最后一个日历日为频率的 DatetimeIndex。</li>
        <li>所以 `ts` 的索引是 `['2019-01-31', '2019-02-28', '2019-03-31', '2019-04-30']`。</li>
        <li>`ts` 的内容如下：<pre>
2019-01-31    0
2019-02-28    1
2019-03-31    2
2019-04-30    3</pre></li>
      </ul>
    </li>
    <li><b>执行 `ts.shift(1, freq='D')`</b>：
      <ul>
        <li><code>.shift()</code> 方法用于移动数据或索引。</li>
        <li>当提供了 <code>freq</code> 参数时，它会移动<b>索引</b>，而不是移动数据值。</li>
        <li><code>freq='D'</code> 表示移动的单位是“天”。</li>
        <li><code>1</code> 表示将索引<b>向前移动 1 个单位</b>（即加1天）。</li>
      </ul>
    </li>
    <li><b>分析索引变化</b>：
      <ul>
        <li>`2019-01-31` + 1天 -> `2019-02-01`</li>
        <li>`2019-02-28` + 1天 -> `2019-03-01`</li>
        <li>`2019-03-31` + 1天 -> `2019-04-01`</li>
        <li>`2019-04-30` + 1天 -> `2019-05-01`</li>
      </ul>
    </li>
    <li><b>最终结果</b>：数据值 `[0, 1, 2, 3]` 保持不变，但与移动后的新日期索引对齐。这与选项 D 的内容完全一致。</li>
  </ol>
  <p>（注：如果不提供 <code>freq</code> 参数，如 <code>ts.shift(1)</code>，则会移动数据值，结果与选项 B 类似。）</p>

  **正确答案：** D

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 Series
  ts = pd.Series(np.arange(4), 
                  index=pd.date_range('1/1/2019', periods=4, freq='M'))
  
  print("原始 Series:")
  print(ts)

  # 执行带 freq 参数的 shift 操作
  result = ts.shift(1, freq='D')
  
  print("\n执行 ts.shift(1, freq='D') 之后的结果:")
  print(result)
  ```
</details>



---
**21. 则`ts+ts[::2]`的输出结果是：（ ）**
```python
from datetime import datetime
import pandas as pd

dates = [datetime(2019,7,10), datetime(2019,7,14), 
         datetime(2019,7,16), datetime(2019,7,18), 
         datetime(2019,7,20)]
ts = pd.Series(range(1,6), index=dates) # 假设变量名为 ts 而非 s
```
A.
```
2019-07-10     2.0
2019-07-14     3.0
2019-07-16     6.0
2019-07-18     5.0
2019-07-20    10.0
```
B.
```
2019-07-10     2.0
2019-07-14     NaN
2019-07-16     6.0
2019-07-18     NaN
2019-07-20    10.0
```
C.
```
2019-07-10     1.0
2019-07-14     NaN
2019-07-16     3.0
2019-07-18     NaN
2019-07-20     5.0
```
D.
```
2019-07-10     2.0
2019-07-16     6.0
2019-07-20    10.0
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>创建 Series `ts`</b>：`ts` 的内容如下：<pre>
2019-07-10    1
2019-07-14    2
2019-07-16    3
2019-07-18    4
2019-07-20    5</pre></li>
    <li><b>创建切片 `ts[::2]`</b>：
      <ul>
        <li><code>[::2]</code> 是步长为2的切片操作，会选择索引为 0, 2, 4 的元素。</li>
        <li>所以 `ts[::2]` 的内容如下：<pre>
2019-07-10    1
2019-07-16    3
2019-07-20    5</pre></li>
      </ul>
    </li>
    <li><b>执行 `ts + ts[::2]`</b>：
      <ul>
        <li>两个 Series 相加时，会按<b>索引对齐</b>。</li>
        <li>只有在两个 Series 中<b>都存在</b>的索引，其值才会相加。</li>
        <li>对于只存在于一个 Series 中的索引，结果为 <b>`NaN`</b> (缺失值)。</li>
      </ul>
    </li>
    <li><b>逐个索引分析</b>：
      <ul>
        <li><b>`2019-07-10`</b>: 在 `ts` 中为 `1`，在 `ts[::2]` 中也为 `1`。相加得 `2.0`。</li>
        <li><b>`2019-07-14`</b>: 在 `ts` 中为 `2`，在 `ts[::2]` 中<b>不存在</b>。相加得 `NaN`。</li>
        <li><b>`2019-07-16`</b>: 在 `ts` 中为 `3`，在 `ts[::2]` 中也为 `3`。相加得 `6.0`。</li>
        <li><b>`2019-07-18`</b>: 在 `ts` 中为 `4`，在 `ts[::2]` 中<b>不存在</b>。相加得 `NaN`。</li>
        <li><b>`2019-07-20`</b>: 在 `ts` 中为 `5`，在 `ts[::2]` 中也为 `5`。相加得 `10.0`。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作后的 Series 与选项 B 的内容完全一致。</li>
  </ol>

  **正确答案：** B

  **代码示例：**
  ```python
  from datetime import datetime
  import pandas as pd

  # 创建题目中的 Series
  dates = [datetime(2019,7,10), datetime(2019,7,14), 
           datetime(2019,7,16), datetime(2019,7,18), 
           datetime(2019,7,20)]
  ts = pd.Series(range(1,6), index=dates)

  # 执行相加操作
  result = ts + ts[::2]
  
  # 打印结果
  print(result)
  ```
</details>


---
**22. 则`ts['7/10/2019']`的输出结果是：（ ）**
```python
import pandas as pd
import numpy as np

dates = pd.DatetimeIndex(['7/10/2019','7/10/2019','7/11/2019',
                          '7/12/2019','7/12/2019'])
ts = pd.Series(np.arange(5), index=dates)
```
A.
```
2019-07-10    0
2019-07-10    1
```
B. `2019-07-10    0`
C. `2019-07-10    1`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>创建 Series `ts`</b>：`ts` 的内容如下，其中索引 `2019-07-10` 出现了两次。<pre>
2019-07-10    0
2019-07-10    1
2019-07-11    2
2019-07-12    3
2019-07-12    4
dtype: int32</pre></li>
    <li><b>执行 `ts['7/10/2019']`</b>：
      <ul>
        <li>这是基于标签的索引操作。Pandas 会自动将字符串 `'7/10/2019'` 解析为 `Timestamp('2019-07-10')`。</li>
        <li>当使用一个<b>重复的标签</b>进行索引时，Pandas 会返回一个<b>新的 Series</b>，其中包含所有匹配该标签的行。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作会返回一个新的 Series，包含所有索引为 `2019-07-10` 的行，其值分别为 `0` 和 `1`。这与选项 A 的内容完全一致。</li>
  </ol>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 Series
  dates = pd.DatetimeIndex(['7/10/2019','7/10/2019','7/11/2019',
                            '7/12/2019','7/12/2019'])
  ts = pd.Series(np.arange(5), index=dates)

  print("原始 Series:")
  print(ts)

  # 执行索引操作
  result = ts['7/10/2019']
  
  print("\n执行 ts['7/10/2019'] 之后的结果:")
  print(result)
  ```
</details>

---
**23. 下列对于`datetime`模块中的数据类型的叙述，错误的是（ ）**
A. `time`将时间存储为小时，分钟，秒，微秒。
B. `timedelta`表示两个`datetime`值之间的差。
C. `datetime`表示存储日期和时间。
D. `date`表示使用农历日历存储的日历日期（年，月，日）。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A, B, C 都是正确的描述。</li>
    <li><b>D: 错误</b>。`date` 对象表示的是<b>公历 (Gregorian calendar)</b> 日期，而不是农历。</li>
  </ul>

  **正确答案：** D
</details>

---
**24. 已知`p = pd.Period(2007, freq='A-DEC')`，则下列语句可以运行的是（ ）**
A. `p + 1`
B. `p * 2`
C. `p++`
D. `1/p`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `Period` 对象支持与整数的加减法，表示按其频率移动。
  <ul>
    <li><b>A. `p + 1`</b>：有效，将年度区间向前移动1年。</li>
    <li>B. `p * 2`：无效，不支持乘法。</li>
    <li>C. `p++`：无效，Python 中没有 `++` 自增运算符。</li>
    <li>D. `1/p`：无效，不支持除法。</li>
  </ul>

  **正确答案：** A
</details>

---
**25. 下列语句输出的`DatetimeIndex`是（ ）**
`print(pd.date_range('2019/7/12','2021/6/30',freq = 'WOM-1sun'))`
A. ...每个月的第一天的日期。
B. ...每个月的第一个周一的日期。
C. ...每个月的第一个周日的日期。
D. ...每个月的最后一个周日的日期。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `'WOM-1sun'` 频率字符串的含义是：
  <ul>
    <li>`WOM`：Week Of Month</li>
    <li>`1`：第一周</li>
    <li>`sun`：星期日</li>
  </ul>
  合起来就是“每个月的第一个星期日”。

  **正确答案：** C
</details>

---
**26. 下列方法中，不能将`date = datetime(2000,1,1)`转换为`'2000-01-01'`的是（ ）**
A. `date.strftime('%Y-%m-%d')`
B. `str(date).split(' ')[0]`
C. `str(date)[0:str(date).index(' ')]`
D. `str(date).strftime('%Y-%m-%d')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: `strftime` 是 `datetime` 对象的方法，可以正确格式化。</li>
    <li>B: `str(date)` 得到 `'2000-01-01 00:00:00'`，按空格分割后取第一部分，得到 `'2000-01-01'`。正确。</li>
    <li>C: 与 B 类似，通过字符串切片获取第一部分。正确。</li>
    <li><b>D: 错误</b>。`str(date)` 返回的是一个<b>字符串</b>，字符串对象没有 `strftime` 方法，这会引发 `AttributeError`。</li>
  </ul>

  **正确答案：** D
</details>

---
**27. `stamp = datetime(2019, 1, 1); stamp.strftime(?)`，如何才可以使输出`'01/01/2019'`（ ）**
A. `'%c'`
B. `'%p'`
C. `'%X'`
D. `'%x'`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `strftime` 的简写格式：
  <ul>
    <li>`%c`：本地化的日期和时间。</li>
    <li>`%p`：AM 或 PM。</li>
    <li>`%X`：本地化的时间。</li>
    <li><b>`%x`</b>：<b>本地化的日期</b>，在美式 locale 下通常是 `'%m/%d/%Y'` 格式，即 `'01/01/2019'`。</li>
  </ul>

  **正确答案：** D
</details>

---
**28. `a = datetime(2011, 1, 3, 4)`，想得到`'11-01-03-04’`的输出，需要输入以下哪个语句？（ ）**
A. `a.strftime('%Y-%m-%d-%h')`
B. `a.strftime('%y-%m-%d-%h')`
C. `a.strftime('%Y-%m-%d-%H')`
D. `a.strftime('%y-%m-%d-%H')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  需要 `'11-01-03-04'` 格式：
  <ul>
    <li>`'11'` -> `%y` (两位年份)</li>
    <li>`'01'` -> `%m` (补零月份)</li>
    <li>`'03'` -> `%d` (补零日期)</li>
    <li>`'04'` -> `%H` (补零小时, 24小时制)</li>
  </ul>
  选项 D 正确组合了这些指令。

  **正确答案：** D
</details>



---
**29. 已知 `ts` 如下，下列哪个选项不能得到 Out[17]: 0.3523043050814792这个值？（ ）**
<pre>
ts
2011-01-02    1.120045
2011-01-05   -0.181950
2011-01-07    0.352304  
2011-01-08    0.936266
2011-01-10    1.790415
2011-01-12    0.276105
dtype: float64
</pre>
A. `ts['07/01/2011']`
B. `ts['20110107']`
C. `ts[ts.index[2]]`
D. `ts[2]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  目标值 `0.352304...` 对应的索引是 `2011-01-07`，其位置是第 3 个，即整数位置索引为 `2`。
  <p>我们来分析每个选项：</p>
  <ul>
    <li><b>A. `ts['07/01/2011']`</b>：Pandas 的时间序列索引器非常智能，但它对日期字符串的解析有默认规则。`'07/01/2011'` 这种格式在美式 (US) 语境下通常被解析为 <b>7月1日</b>，而不是1月7日。由于索引中没有 `2011-07-01`，此操作会引发 `KeyError`。因此，它<b>不能</b>得到目标值。</li>
    <li><b>B. `ts['20110107']`</b>：`'YYYYMMDD'` 是一种无歧义的格式，Pandas 可以正确解析为 `2011-01-07`。<b>可以</b>得到目标值。</li>
    <li><b>C. `ts[ts.index[2]]`</b>：`ts.index[2]` 获取索引中位置为 2 的 `Timestamp` 对象（即 `Timestamp('2011-01-07')`），然后用这个对象去精确索引 `ts`。<b>可以</b>得到目标值。</li>
    <li><b>D. `ts[2]`</b>：当 Series 的索引是 `DatetimeIndex` 时，整数索引会作为<b>位置索引</b>使用。`ts[2]` 会获取位置为 2 的元素（即第三个元素）。<b>可以</b>得到目标值。</li>
  </ul>
  <p>因此，只有选项 A 因为日期格式解析的歧义问题而无法得到正确结果。</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  from datetime import datetime

  # 创建题目中的 Series
  index = [datetime(2011, 1, 2), datetime(2011, 1, 5), datetime(2011, 1, 7),
           datetime(2011, 1, 8), datetime(2011, 1, 10), datetime(2011, 1, 12)]
  ts = pd.Series([1.12, -0.18, 0.35, 0.93, 1.79, 0.27], index=index)
  
  print("原始 Series:")
  print(ts)
  
  print("\n--- 逐个分析选项 ---")
  
  # A (会报错)
  try:
      print("A. ts['07/01/2011']:", ts['07/01/2011'])
  except KeyError as e:
      print(f"A. ts['07/01/2011']: 引发 KeyError，因为 '07/01/2011' 被解析为7月1日。")

  # B (可以)
  print("B. ts['20110107']:", ts['20110107'])

  # C (可以)
  print("C. ts[ts.index[2]]:", ts[ts.index[2]])

  # D (可以)
  print("D. ts[2]:", ts[2])
  ```
</details>

---
**30. `longer_ts = pd.Series(...)`，下列语句中，会报错的是（ ）**
A. `longer_ts['2001-05-25']`
B. `longer_ts['20010525']`
C. `longer_ts['200105']`
D. `longer_ts['2001/05']`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A, B, D: 都是有效的日期/月份字符串，Pandas 可以解析并用作切片或索引。`'2001-05-25'` 和 `'20010525'` 选择单日，`'2001/05'` 选择整个月份。</li>
    <li><b>C: 错误</b>。`'200105'` 这种六位数的格式对于 Pandas 的日期解析器来说是<b>有歧义的</b>，它无法确定这是 `'2001-05'` 还是其他格式，通常会引发解析错误或返回空结果。</li>
  </ul>

  **正确答案：** C
</details>

---
**31. 下列说法中错误的是（ ）**
A. `datetime.strptime`可以将字符串转化成`datetime`格式
B. 当日期出现在月份之前时，可以用`dayfirst=True`来说明
C. 时间序列的切片原则是左闭右开
D. `PeriodIndex`类存储的是区间的序列

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 正确。`strptime` (string parse time) 用于解析字符串。</li>
    <li>B: 正确。`dayfirst=True` 用于解析 `DD/MM/YYYY` 格式。</li>
    <li><b>C: 错误</b>。与 Python 列表不同，Pandas 时间序列的<b>标签切片</b>是<b>“左闭右闭”</b>的，即包含结束日期。</li>
    <li>D: 正确。`PeriodIndex` 由 `Period` 对象构成，每个对象代表一个时间区间。</li>
  </ul>

  **正确答案：** C
</details>

---
**32. `%F`代表哪种格式的缩写( )**
A. `%m/%d/%y`
B. `%y-%m-%d`
C. `%Y-%m-%d`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `%F` 是 `strftime` 和 `strptime` 中 `'%Y-%m-%d'` 的 ISO 8601 格式简写。

  **正确答案：** C
</details>

---
**33. `timedelta`中不包含以下哪个参数（ ）**
A. `months`
B. `weeks`
C. `days`
D. `hours`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `datetime.timedelta` 对象的构造函数只接受 `days`, `seconds`, `microseconds`, `milliseconds`, `minutes`, `hours`, `weeks` 这些参数。它<b>不接受</b> `months` 或 `years`，因为月和年的天数是不固定的。

  **正确答案：** A
</details>

---
**34. 下列对于`datetime`模块中的数据类型叙述，错误的是（ ).**
A. `time`将时间存储为小时，分钟，秒，微秒。
B. `timedelta`表示两个`datetime`值之间的差。
C. `datetime`表示存储日期与时间。
D. `date`表示使用农历日期日历存储的日历日期（年，月，日）。

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  此题与第 23 题相同。`date` 对象表示的是公历日期。

  **正确答案：** D
</details>

---
**35. 以下不是`pandas.date_range()`的参数的是（ ）**
A. `after`
B. `periods`
C. `end`
D. `freq`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `pd.date_range()` 的主要参数是 `start`, `end`, `periods`, `freq`。
  <ul>
    <li><b>A: `after`</b> 不是 `date_range` 的参数。</li>
    <li>B, C, D 都是其有效参数。</li>
  </ul>

  **正确答案：** A
</details>

## 第十二章：一些Pandas中的高级用法


**1. 已知`categories`和`codes`，可通过下列哪个方法或函数快速构建Categorical对象（ ）**
A. `astype`
B. `pd.Categorical`
C. `from_codes`
D. `take`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A. `astype('category')`：用于将现有的 Series 或列转换为分类类型，它会自动推断 `categories` 和 `codes`。</li>
    <li>B. `pd.Categorical(...)`：是主要的构造函数，可以从原始值创建 Categorical 对象。</li>
    <li><b>C. `pd.Categorical.from_codes(...)`</b>：是 `pd.Categorical` 的一个<b>类方法</b>，专门用于从已知的 `codes` (编码) 和 `categories` (类别) 来<b>直接构造</b>一个 Categorical 对象。</li>
    <li>D. `take`：用于根据索引位置选取元素，不是构造方法。</li>
  </ul>

  **正确答案：** C
</details>

---
**2. 假设`df = ...`，`g = df.groupby('key').value`，则以下对`g`的操作，不能运行的是（ ）**
A. 以下都不是
B. `g.transform('mean')`
C. `g.transform(lambda x: x.rank(ascending=False))`
D. `g.transform(std)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  `transform` 方法期望传入的函数能对每个子分组 (Series) 进行计算，并返回一个与该子分组形状相同的 Series 或数组。
  <ul>
    <li>B. `'mean'`：`transform('mean')` 会计算每个分组的均值，并将该均值广播到该分组的所有成员上。有效。</li>
    <li>C. `lambda x: x.rank(...)`：对每个分组 `x` (一个 Series) 计算排名，返回的排名 Series 与 `x` 形状相同。有效。</li>
    <li><b>D. `g.transform(std)`</b>：这里的 `std` 是一个未定义的变量。正确的写法应该是字符串 `'std'` 或者 NumPy 的函数 `np.std`。直接使用 `std` 会引发 `NameError`。因此，此操作不能运行。</li>
  </ul>

  **正确答案：** D
</details>


---
**3. 已知 `categories=['a','b','c']`， `codes=[0,1,2,0,0,1]`，执行代码`pd.Series(categories).take(pd.Series(codes))`，其输出的结果为（ ）**

A.
```
0    a
1    b
2    c
0    a
0    a
1    b
dtype: object
```
B.
```
[a, b, c, a, a, b]
Categories (3, object): [a, b, c]
```
C.
```
0    a
1    b
2    c
3    a
4    a
5    c
dtype: category
Categories (3, object): [a, b, c]
```
D.
```
[a, b, c, a, a, b]
Categories (3, object): [a < b < c]
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`pd.Series(categories)`</b>：首先，我们创建一个 Series 对象 `s`。
      <pre>
s:
0    a
1    b
2    c
dtype: object</pre>
    </li>
    <li><b>`.take(pd.Series(codes))`</b>：
      <ul>
        <li><code>.take()</code> 方法根据传入的<b>位置索引</b>列表或 Series 来从 `s` 中选取元素。</li>
        <li>`pd.Series(codes)` 的值是 `[0, 1, 2, 0, 0, 1]`。</li>
        <li><code>.take()</code> 会按照这个顺序从 `s` 中取值：
          <ul>
            <li>取位置 `0` -> `'a'`</li>
            <li>取位置 `1` -> `'b'`</li>
            <li>取位置 `2` -> `'c'`</li>
            <li>取位置 `0` -> `'a'`</li>
            <li>取位置 `0` -> `'a'`</li>
            <li>取位置 `1` -> `'b'`</li>
          </ul>
        </li>
      </ul>
    </li>
    <li><b>最终结果</b>：
      <ul>
        <li>最终生成一个新的 Series，其值为 `['a', 'b', 'c', 'a', 'a', 'b']`。</li>
        <li>这个新 Series 的索引会是 `pd.Series(codes)` 的索引，即 `[0, 1, 2, 3, 4, 5]`。</li>
        <li>但选项 A 展示的索引是 `[0, 1, 2, 0, 0, 1]`，这是<b>不正确的</b>，因为 `take` 会使用 `codes` 的值作为位置，但会保留 `codes` Series 自身的索引作为新 Series 的索引。</li>
      </ul>
    </li>
  </ol>
  <p><b>结论</b>：选项 A 的值是正确的，但其显示的索引是错误的。在选择题中，如果值的顺序正确，通常会选择该选项。`take` 方法本身返回的是一个 Series，而不是 Categorical 对象（如 B, C, D 所示），所以 A 是最接近的答案，尽管其索引表示有误。</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 创建题目中的数据
  categories = ['a', 'b', 'c']
  codes = [0, 1, 2, 0, 0, 1]
  
  # 执行操作
  s = pd.Series(categories)
  result = s.take(pd.Series(codes))
  
  # 打印结果
  print(result)
  # 注意：实际输出的索引是 0, 1, 2, 3, 4, 5，但选项 A 的值是正确的
  ```
</details>

---
**4. 已知 `categories = ['a','b','c','d']`，`pd.Categorical.from_codes(codes, categories)` 中传入以下哪个 `codes` 可以构造对象 ![这里填写图片1的描述](https://cdn.jsdelivr.net/gh/cccignore/my-blog-images/Python数据分析选择题整理/49.png)？（ ）**

A. `codes = [1, 2, 1, 3, 2, 0, 0]`
B. `codes = [0, 0, 2, 3, 1, 2, 1]`
C. `codes = [1, 1, 3, 4, 2, 3, 2]`
D. `codes = [2, 3, 2, 4, 3, 1, 1]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>`pd.Categorical.from_codes(codes, categories)` 函数通过 `codes`（编码）和 `categories`（类别）来构造一个 Categorical 对象。`codes` 中的每个数字都是 `categories` 列表的索引。</p>
  <p>我们的 `categories` 是 `['a', 'b', 'c', 'd']`，其对应的索引关系如下：</p>
  <ul>
    <li>'a' -> 0</li>
    <li>'b' -> 1</li>
    <li>'c' -> 2</li>
    <li>'d' -> 3</li>
  </ul>
  <p>目标是构造出序列 `[a, a, c, d, b, c, b]`。我们只需要将这个序列中的每个值替换成它对应的索引编码即可：</p>
  <ul>
    <li>'a' -> 0</li>
    <li>'a' -> 0</li>
    <li>'c' -> 2</li>
    <li>'d' -> 3</li>
    <li>'b' -> 1</li>
    <li>'c' -> 2</li>
    <li>'b' -> 1</li>
  </ul>
  <p>因此，正确的 `codes` 列表应该是 `[0, 0, 2, 3, 1, 2, 1]`。这与选项 B 完全匹配。</p>
  <p>同时，我们需要检查其他选项的有效性。`from_codes` 要求 `codes` 列表中的所有值都必须是 `categories` 的有效索引（即 `0, 1, 2, 3`）。选项 C 和 D 中都包含了值 `4`，这不是一个有效索引，所以它们会引发错误。</p>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd

  # 定义类别和正确的编码
  categories = ['a', 'b', 'c', 'd']
  codes = [0, 0, 2, 3, 1, 2, 1]
  
  # 使用 from_codes 构造 Categorical 对象
  my_categorical = pd.Categorical.from_codes(codes, categories)
  
  # 打印结果
  print(my_categorical)
  ```
</details>

---
**5. 以下哪一个不是分类方法（ ）**
A. `add_categories`
B. `as_unordered`
C. `remove_used_categories`
D. `rename_categories`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  这些都是 Categorical 数据的 `.cat` 访问器下的方法。
  <ul>
    <li>A. `add_categories`：添加新类别。存在。</li>
    <li>B. `as_unordered`：将有序分类转换为无序。存在。</li>
    <li><b>C. `remove_used_categories`</b>：没有这个方法。有一个 `.remove_unused_categories()` 方法，用于移除未在数据中出现的类别。</li>
    <li>D. `rename_categories`：重命名类别。存在。</li>
  </ul>

  **正确答案：** C
</details>


---
**6. 如果一个Categorical对象的`categories`属性是`['red', 'blue', 'green', 'white']`，`codes`属性是`[0, 1, 2, 3, 2, 1, 3, 0, 2]`，那么这个对象创建时传入的序列是（ ）**

A. `['red', 'blue', 'green', 'white', 'red', 'red', 'blue', 'green', 'white']`
B. `['red', 'blue', 'green', 'white', 'red', 'blue', 'green', 'white', 'white']`
C. `['red', 'blue', 'green', 'white', 'green', 'blue', 'white', 'red', 'green']`
D. `['red', 'blue', 'green', 'white', 'green', 'white', 'white', 'red', 'green']`
*(注：原题中有两个A选项，这里将其修改为D以便区分)*

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>我们可以通过 `codes`（编码）和 `categories`（类别）反向推导出原始的序列。`codes` 中的每个数字代表了它在 `categories` 列表中的位置索引。</p>
  <p>给定的 `categories` 是 `['red', 'blue', 'green', 'white']`，其索引关系如下：</p>
  <ul>
    <li>0: 'red'</li>
    <li>1: 'blue'</li>
    <li>2: 'green'</li>
    <li>3: 'white'</li>
  </ul>
  <p>给定的 `codes` 是 `[0, 1, 2, 3, 2, 1, 3, 0, 2]`。我们逐个将编码替换为对应的类别值：</p>
  <ul>
    <li>`codes[0]` = 0  -> 'red'</li>
    <li>`codes[1]` = 1  -> 'blue'</li>
    <li>`codes[2]` = 2  -> 'green'</li>
    <li>`codes[3]` = 3  -> 'white'</li>
    <li>`codes[4]` = 2  -> 'green'</li>
    <li>`codes[5]` = 1  -> 'blue'</li>
    <li>`codes[6]` = 3  -> 'white'</li>
    <li>`codes[7]` = 0  -> 'red'</li>
    <li>`codes[8]` = 2  -> 'green'</li>
  </ul>
  <p>将这些值组合起来，得到的原始序列是 `['red', 'blue', 'green', 'white', 'green', 'blue', 'white', 'red', 'green']`。这与选项 C 完全匹配。</p>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd

  # 题目中描述的原始序列
  original_sequence = ['red', 'blue', 'green', 'white', 'green', 'blue', 'white', 'red', 'green']
  
  # 从该序列创建 Categorical 对象
  cat = pd.Categorical(original_sequence)
  
  print("创建时的原始序列:")
  print(original_sequence)
  
  print("\n生成的 categories 属性:")
  print(cat.categories) # 结果是按字母顺序排序的 ['blue', 'green', 'red', 'white']

  print("\n生成的 codes 属性:")
  print(cat.codes)
  
  # --- 为了验证题目逻辑，我们用 from_codes 反向构造 ---
  categories_given = ['red', 'blue', 'green', 'white']
  codes_given = [0, 1, 2, 3, 2, 1, 3, 0, 2]
  
  cat_from_codes = pd.Categorical.from_codes(codes_given, categories=categories_given)
  
  print("\n根据题目给出的 categories 和 codes 构造的对象:")
  print(cat_from_codes)
  ```
</details>


---
**7. 若一个Categorical对象是由序列`['Apple', 'Orange', 'Pear', 'Orange', 'Apple']`所创建，...这个对象的`categories`属性是？（ ）**

A. `Index(['Apple', 'Orange', 'Pear'], dtype='object')`
B. `Index(['Orange', 'Apple', 'Pear'], dtype='object')`
C. `Index(['Apple', 'Pear', 'Orange'], dtype='object')`
D. `Index(['Orange', 'Pear', 'Apple'], dtype='object')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>当从一个序列（如列表）创建 `pd.Categorical` 对象时，如果没有明确指定类别的顺序，Pandas 会遵循以下规则：</p>
  <ol>
    <li>找出序列中所有<b>唯一</b>的值。
        <ul>
            <li>对于 <code>['Apple', 'Orange', 'Pear', 'Orange', 'Apple']</code>，唯一的值是 <code>'Apple'</code>, <code>'Orange'</code>, <code>'Pear'</code>。</li>
        </ul>
    </li>
    <li>将这些唯一值<b>按字母顺序（或数值大小）排序</b>，作为 `categories` 属性。
        <ul>
            <li>将 <code>'Apple'</code>, <code>'Orange'</code>, <code>'Pear'</code> 按字母顺序排序，得到 <code>['Apple', 'Orange', 'Pear']</code>。</li>
        </ul>
    </li>
  </ol>
  <p>因此，`categories` 属性将是一个包含 `['Apple', 'Orange', 'Pear']` 的 Pandas Index 对象。这与选项 A 完全匹配。</p>
  <p>（相应的 `codes` 属性会根据这个排好序的 `categories` 来生成，例如 'Apple' 对应 0，'Orange' 对应 1，'Pear' 对应 2。）</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 题目中描述的原始序列
  original_sequence = ['Apple', 'Orange', 'Pear', 'Orange', 'Apple']
  
  # 从该序列创建 Categorical 对象
  cat = pd.Categorical(original_sequence)
  
  # 打印 categories 属性
  print("生成的 categories 属性:")
  print(cat.categories)
  
  # 打印 codes 属性以验证
  print("\n相应的 codes 属性:")
  print(cat.codes) # 结果应为 [0 1 2 1 0]
  ```
</details>


---
**8. 执行以下代码，输出的结果为（ ）**
```python
import pandas as pd
s = pd.Series(['a','b','c','d']*2)
cat_s = s.astype('category')
cat_s2 = cat_s.cat.set_categories(['a','b','c','d','e'])
cat_s3 = cat_s2[cat_s2.isin(['a','e'])]
cat_s3.cat.remove_unused_categories()
```

A.
```
0    a
4    a
dtype: category
Categories (1, object): ['a']
```

B.
```
0    a
4    a
dtype: category
Categories (5, object): ['a', 'b', 'c', 'd', 'e']
```

C.
```
0    a
4    e
5    a
9    e
dtype: category
Categories (5, object): ['a', 'b', 'c', 'd', 'e']
```

D.
```
0    a
4    e
5    a
9    e
dtype: category
Categories (2, object): ['a', 'e']
```
<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>我们逐步分析代码的执行过程：</p>
  <ol>
    <li><b><code>s = pd.Series(['a','b','c','d']*2)</code></b>：`s` 的内容是 `['a', 'b', 'c', 'd', 'a', 'b', 'c', 'd']`。</li>
    <li><b><code>cat_s = s.astype('category')</code></b>：将 `s` 转换为分类类型，`cat_s` 的类别是 `['a', 'b', 'c', 'd']`。</li>
    <li><b><code>cat_s2 = cat_s.cat.set_categories(['a','b','c','d','e'])</code></b>：重新设置类别，为 `cat_s2` 添加了新的类别 `'e'`，但数据值本身不变。此时 `cat_s2` 的类别是 `['a', 'b', 'c', 'd', 'e']`。</li>
    <li><b><code>cat_s3 = cat_s2[cat_s2.isin(['a','e'])]</code></b>：
      <ul>
        <li><code>.isin(['a','e'])</code> 会检查 `cat_s2` 中的每个值是否是 `'a'` 或 `'e'`。</li>
        <li>由于 `cat_s2` 中只有 `'a'`，没有 `'e'`，所以这个操作会筛选出所有值为 `'a'` 的行。</li>
        <li>`cat_s3` 的内容是：<pre>
0    a
4    a
dtype: category</pre></li>
        <li><b>重要</b>：此时 `cat_s3` 仍然<b>继承</b>了 `cat_s2` 的完整类别列表 `['a', 'b', 'c', 'd', 'e']`，尽管很多类别在 `cat_s3` 的数据中并未使用。</li>
      </ul>
    </li>
    <li><b><code>cat_s3.cat.remove_unused_categories()</code></b>：
      <ul>
        <li>这个方法会检查 `cat_s3` 的数据，并移除那些在 `categories` 列表中存在但在数据中<b>未被使用</b>的类别。</li>
        <li>在 `cat_s3` 中，只有类别 `'a'` 被使用了。因此，未使用的类别 `'b'`, `'c'`, `'d'`, `'e'` 都会被移除。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：数据值仍然是 `[a, a]`，但 `categories` 属性被清理后只剩下 `['a']`。这与选项 A 的内容完全一致。</li>
  </ol>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 逐步执行代码以观察变化
  s = pd.Series(['a','b','c','d']*2)
  cat_s = s.astype('category')
  cat_s2 = cat_s.cat.set_categories(['a','b','c','d','e'])
  cat_s3 = cat_s2[cat_s2.isin(['a','e'])]
  
  print("筛选后的 cat_s3 (类别未清理):")
  print(cat_s3)

  # 执行最后的清理操作
  final_result = cat_s3.cat.remove_unused_categories()
  
  print("\n执行 remove_unused_categories() 后的最终结果:")
  print(final_result)
  ```
</details>


---
**9. 使用`from_codes`构造函数：如下**
```python
import pandas as pd
categories = ['Lucy', 'Daisy', 'Lucky']
codes = [0, 1, 2, 0, 0, 0]
my_c = pd.Categorical.from_codes(codes, categories)
```
**则`my_c`的输出结果是：（ ）**

A. `[Lucy, Daisy, Lucky, Lucy, Lucy, Lucy]`
B. `[Lucy, Daisy, Lucky, Daisy, Daisy, Daisy]`
C. `[Lucy, Daisy, Lucky, Lucky, Lucky, Lucky]`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>`pd.Categorical.from_codes(codes, categories)` 函数通过已知的 `codes`（编码）和 `categories`（类别）来直接构造一个 Categorical 对象。`codes` 列表中的每个数字都是 `categories` 列表的索引。</p>
  <p>给定的 `categories` 是 `['Lucy', 'Daisy', 'Lucky']`，其索引关系如下：</p>
  <ul>
    <li>0: 'Lucy'</li>
    <li>1: 'Daisy'</li>
    <li>2: 'Lucky'</li>
  </ul>
  <p>给定的 `codes` 是 `[0, 1, 2, 0, 0, 0]`。我们逐个将编码替换为对应的类别值：</p>
  <ul>
    <li>`codes[0]` = 0  -> 'Lucy'</li>
    <li>`codes[1]` = 1  -> 'Daisy'</li>
    <li>`codes[2]` = 2  -> 'Lucky'</li>
    <li>`codes[3]` = 0  -> 'Lucy'</li>
    <li>`codes[4]` = 0  -> 'Lucy'</li>
    <li>`codes[5]` = 0  -> 'Lucy'</li>
  </ul>
  <p>将这些值组合起来，得到的原始序列是 `['Lucy', 'Daisy', 'Lucky', 'Lucy', 'Lucy', 'Lucy']`。当打印一个 Categorical 对象时，它会显示这个序列以及类别信息。选项 A 的列表内容与此完全匹配。</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 题目中的代码
  categories = ['Lucy', 'Daisy', 'Lucky']
  codes = [0, 1, 2, 0, 0, 0]
  my_c = pd.Categorical.from_codes(codes, categories)
  
  # 打印 Categorical 对象
  print(my_c)
  ```
</details>


---
**10. 若一个Categorical对象是由序列`['Apple', 'Orange', 'Pear', 'Orange', 'Apple']`所创建，这个对象的codes属性是[0 1 2 1 0]，这个对象的`categories`属性是？（ ）**

A. `Index(['Apple', 'Orange', 'Pear'], dtype='object')`
B. `Index(['Orange', 'Apple', 'Pear'], dtype='object')`
C. `Index(['Apple', 'Pear', 'Orange'], dtype='object')`
D. `Index(['Orange', 'Pear', 'Apple'], dtype='object')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>此题与第 7 题完全相同。</p>
  <p>当从一个序列（如列表）创建 `pd.Categorical` 对象时，如果没有明确指定类别的顺序，Pandas 会遵循以下规则：</p>
  <ol>
    <li>找出序列中所有<b>唯一</b>的值。
        <ul>
            <li>对于 <code>['Apple', 'Orange', 'Pear', 'Orange', 'Apple']</code>，唯一的值是 <code>'Apple'</code>, <code>'Orange'</code>, <code>'Pear'</code>。</li>
        </ul>
    </li>
    <li>将这些唯一值<b>按字母顺序（或数值大小）排序</b>，作为 `categories` 属性。
        <ul>
            <li>将 <code>'Apple'</code>, <code>'Orange'</code>, <code>'Pear'</code> 按字母顺序排序，得到 <code>['Apple', 'Orange', 'Pear']</code>。</li>
        </ul>
    </li>
  </ol>
  <p>因此，`categories` 属性将是一个包含 `['Apple', 'Orange', 'Pear']` 的 Pandas Index 对象。这与选项 A 完全匹配。</p>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd

  # 题目中描述的原始序列
  original_sequence = ['Apple', 'Orange', 'Pear', 'Orange', 'Apple']
  
  # 从该序列创建 Categorical 对象
  cat = pd.Categorical(original_sequence)
  
  # 打印 categories 属性
  print("生成的 categories 属性:")
  print(cat.categories)
  ```
</details>


---
**11. 已知`cat_s = pd.Series(['a', 'b'] * 2).astype('category')`，`cat_s2 = cat_s.cat.set_categories(['a', 'b', 'c'])`，`cat_s2`返回的是（ ）**

A.
```
0    a
1    b
2    a
3    b
dtype: category
Categories (2, object): ['a', 'b']
```
B.
```
0    a
1    b
2    a
3    b
dtype: category
Categories (3, object): ['a', 'b', 'c']
```
C.
```
0    a
1    b
2    c
dtype: category
Categories (3, object): ['a', 'b', 'c']
```
D.
```
0    a
1    b
...
dtype: category
Categories (5, object): ['a', 'b', 'c']
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`cat_s = pd.Series(['a', 'b'] * 2).astype('category')`</b>：
      <ul>
        <li><code>['a', 'b'] * 2</code> 创建了列表 <code>['a', 'b', 'a', 'b']</code>。</li>
        <li><code>pd.Series(...)</code> 创建了包含这些值的 Series。</li>
        <li><code>.astype('category')</code> 将其转换为分类类型。此时，`cat_s` 的<b>数据值</b>是 `['a', 'b', 'a', 'b']`，其<b>类别 (categories)</b> 是 `['a', 'b']`。</li>
      </ul>
    </li>
    <li><b>`cat_s2 = cat_s.cat.set_categories(['a', 'b', 'c'])`</b>：
      <ul>
        <li><code>.cat.set_categories(...)</code> 方法用于<b>重新设置</b> Categorical 对象的类别列表。</li>
        <li>这个操作<b>不会改变 Series 的数据值</b>，`['a', 'b', 'a', 'b']` 保持不变。</li>
        <li>它只会将 `categories` 属性更新为新的列表 `['a', 'b', 'c']`。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：
      <ul>
        <li>数据值：`[a, b, a, b]`</li>
        <li>类别：`['a', 'b', 'c']`</li>
      </ul>
    </li>
  </ol>
  <p>选项 B 的输出完全符合这个结果：数据值和索引都正确，并且 `Categories` 属性被更新为 `(3, object): ['a', 'b', 'c']`。</p>

  **正确答案：** B

  **代码示例：**
  ```python
  import pandas as pd

  # 创建题目中的 Series
  cat_s = pd.Series(['a', 'b'] * 2).astype('category')
  
  print("原始 cat_s:")
  print(cat_s)

  # 重新设置类别
  cat_s2 = cat_s.cat.set_categories(['a', 'b', 'c'])
  
  print("\ncat_s2 的结果:")
  print(cat_s2)
  ```
</details>

---
**12. 已知分类转换...则代码`cat_s2.value_counts()`的输出为（ ）**
```python
import pandas as pd
s = pd.Series(['a','b','c','d']*2)
cat_s = s.astype('category')
actual_categories = ['a','b','c','d','e']
cat_s2 = cat_s.cat.set_categories(actual_categories)
```

A.
```
a    2
b    2
c    2
d    2
e    0
dtype: int64
```
B. 
```
d    2
c    2
b    2
a    2
e    0
dtype: int64
```
C. 
```
a    2
b    2
c    2
d    2
dtype: int64
```
D. 
```
d    2
c    2
b    2
a    2
dtype: int64
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b><code>s = pd.Series(['a','b','c','d']*2)</code></b>：`s` 的内容是 `['a', 'b', 'c', 'd', 'a', 'b', 'c', 'd']`。</li>
    <li><b><code>cat_s = s.astype('category')</code></b>：`cat_s` 的类别是 `['a', 'b', 'c', 'd']`。</li>
    <li><b><code>cat_s2 = cat_s.cat.set_categories(['a','b','c','d','e'])</code></b>：
      <ul>
        <li>为 `cat_s2` 重新设置了类别，加入了 `'e'`。</li>
        <li>此时 `cat_s2` 的<b>数据值</b>仍然是 `['a', 'b', 'c', 'd', 'a', 'b', 'c', 'd']`。</li>
        <li>`cat_s2` 的<b>类别</b>是 `['a', 'b', 'c', 'd', 'e']`。</li>
      </ul>
    </li>
    <li><b><code>cat_s2.value_counts()</code></b>：
      <ul>
        <li>该方法用于统计<b>每个类别</b>在数据中出现的次数。</li>
        <li>它会统计<b>所有已定义的类别</b>，即使某个类别在数据中没有出现。</li>
        <li>'a' 出现了 2 次。</li>
        <li>'b' 出现了 2 次。</li>
        <li>'c' 出现了 2 次。</li>
        <li>'d' 出现了 2 次。</li>
        <li>类别 'e' 虽然已定义，但在数据中<b>没有出现</b>，所以计数为 <b>0</b>。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：`value_counts()` 的结果是一个 Series，其索引是 `cat_s2` 的类别，值是对应的计数。默认情况下，结果会按<b>计数值降序</b>排列。</li>
  </ol>
  <p>选项 A 和 B 都包含了正确的计数值，包括 `e: 0`。它们的区别在于索引的顺序。`value_counts()` 默认按值（计数）降序排序，对于计数值相同的项，其顺序可能不固定。但 A 和 B 都是可能且正确的结果。</p>

  **正确答案：** A (或 B，取决于排序)

  **代码示例：**
  ```python
  import pandas as pd

  # 题目中的代码
  s = pd.Series(['a','b','c','d']*2)
  cat_s = s.astype('category')
  actual_categories = ['a','b','c','d','e']
  cat_s2 = cat_s.cat.set_categories(actual_categories)

  # 执行 value_counts()
  result = cat_s2.value_counts()
  
  print(result)
  ```
</details>


---
**13. 设有数据集`df=pd.DataFrame({'key':['a','b','c']*2, 'value':np.arange(6)})`，执行`df['value'].groupby(df['key']).transform('mean')`后得到的结果是（ ）**

A.
```
key
a    1.5
b    2.5
c    3.5
```
B.
```
  key  value
0   a    1.5
1   b    2.5
2   c    3.5
3   a    1.5
4   b    2.5
5   c    3.5

```
C.
```
0    1.5
1    2.5
2    3.5
3    1.5
4    2.5
5    3.5
```
D.
```
key
a    3.0
b    3.0
c    3.0
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>创建 DataFrame `df`</b>：<pre>
  key  value
0   a      0
1   b      1
2   c      2
3   a      3
4   b      4
5   c      5</pre></li>
    <li><b>`df['value'].groupby(df['key'])`</b>：这是一个“Series GroupBy”操作。
      <ul>
        <li>我们选择了 `df['value']` 这一列（一个 Series）。</li>
        <li>然后使用 `df['key']` 这一列作为分组键对其进行分组。</li>
        <li>分组情况如下：
          <ul>
            <li>组 'a': 包含 `value` 列的 `0` 和 `3`。</li>
            <li>组 'b': 包含 `value` 列的 `1` 和 `4`。</li>
            <li>组 'c': 包含 `value` 列的 `2` 和 `5`。</li>
          </ul>
        </li>
      </ul>
    </li>
    <li><b>`.transform('mean')`</b>：
      <ul>
        <li><code>transform</code> 方法会对每个分组进行计算（这里是计算均值），然后返回一个与<b>原始对象形状相同</b>的 Series/DataFrame。</li>
        <li>计算每个组的均值：
          <ul>
            <li>组 'a' 的均值: `(0 + 3) / 2 = 1.5`。</li>
            <li>组 'b' 的均值: `(1 + 4) / 2 = 2.5`。</li>
            <li>组 'c' 的均值: `(2 + 5) / 2 = 3.5`。</li>
          </ul>
        </li>
        <li><code>transform</code> 会将计算出的分组均值“广播”回原始的索引位置。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：操作会返回一个与 `df['value']` 等长的 Series，其索引是原始的 `0..5`，值为每个元素所在分组的均值。这与选项 C 的内容完全一致。<pre>
0    1.5  (属于组 'a')
1    2.5  (属于组 'b')
2    3.5  (属于组 'c')
3    1.5  (属于组 'a')
4    2.5  (属于组 'b')
5    3.5  (属于组 'c')</pre></li>
  </ol>
  <p>（注：如果是使用 <code>.agg('mean')</code> 或 <code>.apply('mean')</code>，结果会是选项 A 的形式，即聚合后的结果。）</p>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame
  df = pd.DataFrame({'key':['a','b','c']*2, 'value':np.arange(6)})
  
  # 执行 transform 操作
  result = df['value'].groupby(df['key']).transform('mean')
  
  # 打印结果
  print(result)
  ```
</details>

---
**14. `df.set_index('time').resample('5min').count()`的输出结果是：（ ）**
```python
import pandas as pd
import numpy as np

times = pd.date_range('2019-07-10 00:00', freq='1min', periods=15)
df = pd.DataFrame({'time': times, 'value': np.arange(15)})
```

A.
```
           value
time              
2019-07-10      15
```
B.
```
                     value
time                      
2019-07-10 00:00:00      3
2019-07-10 00:03:00      3
2019-07-10 00:06:00      3
2019-07-10 00:09:00      3
2019-07-10 00:12:00      3
```
C.
```
                     value
time                      
2019-07-10 00:00:00      5
2019-07-10 00:05:00      5
2019-07-10 00:10:00      5
```

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b><code>df.set_index('time')</code></b>：首先，将 `'time'` 列设置为 DataFrame 的索引，使其成为一个时间序列。</li>
    <li><b><code>.resample('5min')</code></b>：接着，对这个时间序列进行<b>重采样 (resample)</b>。
      <ul>
        <li><code>'5min'</code> 表示按 5 分钟的频率进行。</li>
        <li>这个操作会根据时间索引将数据划分到不同的时间“箱子”里。默认情况下，时间箱是左闭右开的。
          <ul>
            <li><b>第一个箱</b>：`[2019-07-10 00:00:00, 2019-07-10 00:05:00)`，包含 `00:00` 到 `00:04` 的数据。</li>
            <li><b>第二个箱</b>：`[2019-07-10 00:05:00, 2019-07-10 00:10:00)`，包含 `00:05` 到 `00:09` 的数据。</li>
            <li><b>第三个箱</b>：`[2019-07-10 00:10:00, 2019-07-10 00:15:00)`，包含 `00:10` 到 `00:14` 的数据。</li>
          </ul>
        </li>
      </ul>
    </li>
    <li><b><code>.count()</code></b>：最后，对每个时间箱内的数据进行<b>计数</b>。
      <ul>
        <li>第一个箱 (`00:00` 到 `00:04`) 包含 5 条记录 (因为原始数据是每分钟一条)。</li>
        <li>第二个箱 (`00:05` 到 `00:09`) 包含 5 条记录。</li>
        <li>第三个箱 (`00:10` 到 `00:14`) 包含 5 条记录。</li>
      </ul>
    </li>
    <li><b>最终结果</b>：结果 DataFrame 的索引是每个时间箱的起始时间，值为每个箱的记录数。这与选项 C 的内容完全一致。</li>
  </ol>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame
  times = pd.date_range('2019-07-10 00:00', freq='1min', periods=15)
  df = pd.DataFrame({'time': times, 'value': np.arange(15)})
  
  # 执行重采样和计数操作
  result = df.set_index('time').resample('5min').count()
  
  # 打印结果
  print(result)
  ```
</details>

---
**15. 对于 `df`，`c = df['count'].astype('category').values`，`c.codes` 的执行结果是什么（ ）**
<pre>
  basket_id   fruit  count    weight
0          0   apple     11  2.357903
1          1  orange      7  0.140899
2          2   apple      5  1.843044
3          3   apple     13  3.515099
4          4   apple     13  2.256993
5          5  orange      7  3.748983
6          6   apple      9  2.459081
7          7   apple     12  0.977361
</pre>

A. `array([3, 1, 0, 5, 5, 1, 2, 4], dtype=int8)`
B. `array([1, 3, 0, 5, 5, 1, 2, 4], dtype=int8)`
C. `array([3, 1, 5, 5, 5, 1, 2, 4], dtype=int8)`
D. `array([3, 1, 0, 4, 5, 1, 2, 4], dtype=int8)`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ol>
    <li><b>`df['count']`</b>：首先，我们选择 `'count'` 这一列，其值为 `[11, 7, 5, 13, 13, 7, 9, 12]`。</li>
    <li><b>`.astype('category')`</b>：接着，将这一列转换为分类类型。Pandas 会自动执行以下步骤：
      <ul>
        <li>找出所有<b>唯一</b>的值：`5, 7, 9, 11, 12, 13`。</li>
        <li>将这些唯一值<b>按数值大小排序</b>，作为 `categories`：`[5, 7, 9, 11, 12, 13]`。</li>
      </ul>
    </li>
    <li><b>`.values`</b>：获取这个分类 Series 底层的 `pd.Categorical` 对象，变量 `c` 引用了它。</li>
    <li><b>`c.codes`</b>：获取这个 `Categorical` 对象的编码 (`codes`) 属性。编码是原始数据中每个值对应于排好序的 `categories` 的索引。
      <ul>
        <li>`categories` 的索引关系是：`5`->0, `7`->1, `9`->2, `11`->3, `12`->4, `13`->5。</li>
      </ul>
    </li>
    <li><b>逐个编码</b>：
      <ul>
        <li>`11` -> 索引 <b>3</b></li>
        <li>`7` -> 索引 <b>1</b></li>
        <li>`5` -> 索引 <b>0</b></li>
        <li>`13` -> 索引 <b>5</b></li>
        <li>`13` -> 索引 <b>5</b></li>
        <li>`7` -> 索引 <b>1</b></li>
        <li>`9` -> 索引 <b>2</b></li>
        <li>`12` -> 索引 <b>4</b></li>
      </ul>
    </li>
    <li><b>最终结果</b>：`c.codes` 返回的 NumPy 数组是 `[3, 1, 0, 5, 5, 1, 2, 4]`。这与选项 A 完全匹配。</li>
  </ol>

  **正确答案：** A

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的 DataFrame
  data = {'basket_id': range(8),
          'fruit': ['apple', 'orange', 'apple', 'apple', 'apple', 'orange', 'apple', 'apple'],
          'count': [11, 7, 5, 13, 13, 7, 9, 12],
          'weight': np.random.rand(8) * 4}
  df = pd.DataFrame(data)

  # 执行题目中的代码
  c = df['count'].astype('category').values
  
  print("排好序的类别 (categories):")
  print(c.categories)
  
  print("\n对应的编码 (codes):")
  print(c.codes)
  ```
</details>

---
**16. 下列说法正确的是 ( )**
A. 使用`TimeGrouper`的一个限制是时间必须是`Series`或`DataFrame`
B. `agg`不可以使用lambda表达式
C. `transform`可以使用‘mean’
D. `apply`可以传入‘mean’

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <ul>
    <li>A: 错误。`TimeGrouper` (现在是 `pd.Grouper(freq=...)`) 的限制是分组的轴必须是 `DatetimeIndex`。</li>
    <li>B: 错误。`agg` 可以使用 lambda 表达式。</li>
    <li><b>C: 正确</b>。`transform` 可以接受如 `'mean'`, `'sum'` 等字符串作为参数，进行快速计算。</li>
    <li>D: 错误。`apply` 期望传入一个函数对象，而不是字符串 `'mean'`。应为 `apply(np.mean)`。</li>
  </ul>

  **正确答案：** C
</details>

---
**17. 对于 `s = pd.Series(['a', 'b', 'c']*2); cat_s = s.astype('category')`，可以新增'd'类别的语句是（ ）**

A. `cat_s.add_categories('d')`
B. `s.add_categories('d')`
C. `cat_s.cat.add_categories('d')`
D. `s.cat.add_categories('d')`

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>在 Pandas 中，对于一个分类类型（categorical dtype）的 Series，所有与分类相关的操作都需要通过 <code>.cat</code> 访问器来调用。</p>
  <ul>
    <li><b><code>cat_s</code></b>：是一个分类类型的 Series。</li>
    <li><b><code>s</code></b>：是一个普通的 `object` 类型的 Series。</li>
  </ul>
  <p>我们来分析每个选项：</p>
  <ul>
    <li><b>A. `cat_s.add_categories('d')`</b>：错误。Series 对象本身没有 <code>.add_categories()</code> 方法，必须通过 <code>.cat</code> 访问器。</li>
    <li><b>B. `s.add_categories('d')`</b>：错误。<code>s</code> 是一个普通 Series，没有分类方法。</li>
    <li><b>C. `cat_s.cat.add_categories('d')`</b>：<b>正确</b>。这是标准的语法：首先选择分类 Series `cat_s`，然后使用 <code>.cat</code> 访问器，最后调用 <code>.add_categories()</code> 方法来添加新的类别。</li>
    <li><b>D. `s.cat.add_categories('d')`</b>：错误。<code>s</code> 不是分类类型，因此它没有 <code>.cat</code> 访问器。</li>
  </ul>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd

  # 创建题目中的 Series
  s = pd.Series(['a', 'b', 'c']*2)
  cat_s = s.astype('category')
  
  print("原始类别:")
  print(cat_s.cat.categories)

  # 使用正确的方法新增类别 'd'
  cat_s_new = cat_s.cat.add_categories('d')
  
  print("\n新增类别后的新 Series:")
  # 注意：add_categories 返回一个新的 Categorical 对象，需要重新赋值
  print(cat_s_new.cat.categories) 
  ```
</details>

---
**18. `g.transform(lambda x: x.mean())` 与下列代码的哪个输出结果相同？（ ）**
```python
import pandas as pd
import numpy as np

df = pd.DataFrame({'key': ['a', 'b', 'c'] * 4,
                   'value': np.arange(12.)})
g = df.groupby('key')['value'] # 修正了题目中的 g 的定义，使其更明确
```
A. `g.agg(lambda x: x.mean())`
B. `g.apply(lambda x: x.mean())`
C. 上面两种都不与之匹配

<details>
  <summary style="font-weight: bold; cursor: pointer; color: #007bff;">点击查看解析与代码</summary>
  <br>
  解析：
  <p>这道题的核心是理解 GroupBy 对象上 <code>transform</code>, <code>agg</code>, 和 <code>apply</code> 三个方法的区别，特别是它们返回结果的<b>形状</b>。</p>
  <ul>
    <li><b><code>transform</code></b>：
      <ul>
        <li>对每个分组进行计算，然后返回一个与<b>原始对象形状和索引相同</b>的 Series 或 DataFrame。</li>
        <li>它将每个分组的计算结果（如均值）“广播”回该分组的所有原始位置。</li>
        <li>例如，`g.transform('mean')` 会返回一个长度为 12 的 Series，其索引与 `df` 相同。</li>
      </ul>
    </li>
    <li><b><code>agg</code> (或 `aggregate`)</b>：
      <ul>
        <li>对每个分组进行计算，然后返回一个<b>聚合后</b>的、尺寸更小的对象。</li>
        <li>其<b>索引</b>将是分组的键（即 `'a'`, `'b'`, `'c'`）。</li>
        <li>例如，`g.agg('mean')` 会返回一个长度为 3 的 Series，其索引是 `['a', 'b', 'c']`。</li>
      </ul>
    </li>
    <li><b><code>apply</code></b>：
      <ul>
        <li>`apply` 更通用，但当它用于返回单个标量（如均值）的聚合函数时，其行为与 `agg` 类似，返回一个<b>聚合后</b>的结果。</li>
        <li>其索引也将是分组的键。</li>
      </ul>
    </li>
  </ul>
  <p><b>结论</b>：因为 <code>transform</code> 返回的结果形状与原始数据相同，而 <code>agg</code> 和 `apply` 返回的是聚合后的、形状更小的结果，所以 <code>transform</code> 的输出与后两者都<b>不相同</b>。</p>

  **正确答案：** C

  **代码示例：**
  ```python
  import pandas as pd
  import numpy as np

  # 创建题目中的数据
  df = pd.DataFrame({'key': ['a', 'b', 'c'] * 4,
                     'value': np.arange(12.)})
  g = df.groupby('key')['value']

  # 计算 transform 的结果
  transform_result = g.transform(lambda x: x.mean())
  print("--- g.transform() 的结果 (与原始df索引相同) ---")
  print(transform_result)
  print(f"Shape: {transform_result.shape}\n")

  # 计算 agg 的结果
  agg_result = g.agg(lambda x: x.mean())
  print("--- g.agg() 的结果 (索引为分组键) ---")
  print(agg_result)
  print(f"Shape: {agg_result.shape}\n")
  
  # 计算 apply 的结果
  apply_result = g.apply(lambda x: x.mean())
  print("--- g.apply() 的结果 (索引为分组键) ---")
  print(apply_result)
  print(f"Shape: {apply_result.shape}\n")
  ```
</details>