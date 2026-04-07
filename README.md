# HNNUThesis-Overleaf

湖南第一师范学院本科毕业设计（论文）LaTeX 模板，适配 Overleaf，同时支持本地 TeX 环境编译。

## 模板简介

| 项目 | 说明 |
|------|------|
| 适配院校 | 湖南第一师范学院 |
| 文档类型 | 本科毕业设计 / 论文 |
| 核心文件 | `hnnuthesis.cls` |
| 示例文件 | `example.tex` |
| 推荐编译方式 | XeLaTeX |

## 目录结构

```text
hnnuthesis-overleaf/
├── hnnuthesis.cls
├── example.tex
├── README.md
├── LICENSE
└── figure/
    ├── dysf.jpg
    └── school.png
```

## 快速开始

### Overleaf 编译

1. 下载或克隆本项目。
2. 上传到 Overleaf。
3. 将编译器设置为 `XeLaTeX`。
4. 编译 `example.tex` 即可生成论文 PDF。

### 本地编译

1. 安装 TeX Live 或 MiKTeX。
2. 使用 TeXstudio、VS Code + LaTeX Workshop 等编辑器打开项目。
3. 选择 `XeLaTeX` 编译器。
4. 编译 `example.tex`。

## 使用说明

### 1. 填写论文封面信息

在 `example.tex` 中填写：

```latex
\titleinfo
{论文题目}
{学生姓名}
{学号}
{班级}
{学院或专业}
{指导教师}

\secondsupervisorinfo{第二导师}
\thesisdate{2026}{6}[18]
```

其中：

- `\titleinfo`：依次对应题目、学生姓名、学号、班级、学院/专业、指导教师
- `\secondsupervisorinfo{}`：设置第二页封面的“第二导师”
- `\thesisdate{年}{月}[日]`：设置日期，其中“日”为可选项

如果不需要填写“日”，也可以这样写：

```latex
\thesisdate{2026}{6}
```

### 2. 自动生成封面

```latex
\makethesistitle
```

封面前两页已按要求设置：

- 第一页：
  - `毕业设计（论文）` 为宋体、加粗、48pt、居中
  - 题目为宋体、小二、加粗、居中，并固定显示两行下划线
  - 学生信息为宋体三号、加粗、居中
  - 日期为宋体三号、加粗、居中
- 第二页：
  - 题目为黑体二号、居中
  - 学生姓名、学号、班级、所在学院、指导教师、第二导师、完成日期为宋体三号、加粗、居中

### 3. 摘要命令

中文摘要：

```latex
\cabstract
{这里填写中文摘要内容。}
{关键词1；关键词2；关键词3}
```

英文摘要：

```latex
\eabstract
{English Title}
{This is the abstract in English.}
{keyword1; keyword2; keyword3}
```

说明：

- 摘要页首段默认**不缩进**
- 如果摘要中手动分段，后续段落也会按摘要环境当前设置排版
- 正文与摘要的缩进规则已分开处理

### 4. 目录

```latex
\tableofcontents
```

当前目录格式已设置为：

- `目录` 两字：三号黑体、居中、上下各空一行
- 目录条目：小四号黑体
- 整体行距：1.5 倍

### 5. 正文开始与首行缩进

正文开始建议使用：

```latex
\startmain
```

已设置的正文格式包括：

- 中文：小四号宋体
- 英文：Times 风格字体
- 首行缩进 2 字
- 1.5 倍行距

并且现在已经处理了一个常见问题：

- `\section` 和 `\subsection` 后面的**首段正文也会自动首行缩进**
- 不需要手动在段首敲空格
- 正常空一行表示换段即可

一级标题格式：

- 小三号黑体
- 居中
- 上下各空一行
- 编号形式：`1 绪论`、`2 层级叶/盘转子错频方案的对比分析`

二级标题格式：

- 形如 `1.1 课题背景及目的`、`3.5 多自由度系统的强迫响应分析`
- 顶格书写，序号后空一格
- 黑体四号
- 1.5 倍行距

示例：

```latex
\startmain

\section{绪论}

\subsection{课题背景及目的}

这是节标题之后的第一段，模板会自动首行缩进。

这是换段后的第二段，同样会首行缩进。
```

### 6. 分项序号

模板已将一级枚举设置为全角形式：`（1）`、`（2）`、`（3）`。

示例：

```latex
\begin{enumerate}
    \item 第一项内容
    \item 第二项内容
    \item 第三项内容
\end{enumerate}
```

### 7. 公式

公式按章编号，格式如 `2-1`。

单行公式示例：

```latex
\begin{equation}
E = mc^2
\end{equation}
```

多行公式建议在等号或运算符处换行：

```latex
\begin{align}
F(x) &= x_1 + x_2 + x_3 \\
     &\quad + x_4 + x_5
\end{align}
```

### 8. 图片

图片按章编号，图题位于图下方，五号宋体。

关于图片格式，建议如下：

- **Word**：建议插入 `emf` 图片，这类矢量图放大后通常仍然清晰
- **LaTeX**：传统上可插入 `eps` 矢量图，放大后也仍然清晰，但通常需要专门软件打开或转换
- **本模板实际更推荐 LaTeX 插入 `pdf` 图片**，兼容 XeLaTeX，更方便直接使用，放大后同样保持清晰

本仓库已经提供了一个示例矢量图文件：`example.pdf`，可直接用于测试插图效果。

示例：

```latex
\begin{figure}[h]
\centering
\includegraphics[width=0.55\textwidth]{example.pdf}
\caption{示例矢量图插入效果}
\label{fig:example}
\end{figure}
```

正文引用示例：

```latex
如图 \ref{fig:example} 所示。
```

### 9. 表格

表格按章编号，表题位于表格上方正中，五号宋体加黑。

```latex
\begin{table}[h]
\centering
\caption{实验数据}
\label{tab:example}
\begin{tabular}{ccc}
\toprule
编号 & 参数 & 数值\\
\midrule
1 & A & 12\\
2 & B & 15\\
\bottomrule
\end{tabular}
\end{table}
```

正文引用示例：

```latex
由表 \ref{tab:example} 可知。
```

### 10. 参考文献与引用

模板已设置为“中括号上标”引用风格。

正文中可写：

```latex
这是一个引用示例\cite{ref1}。
```

或：

```latex
这是一个引用示例\upcite{ref1}。
```

参考文献环境示例：

```latex
\begin{thebibliography}{99}

\bibitem{ref1}
刘国钧．图书馆史研究[M]．北京：高等教育出版社，1979．

\bibitem{ref2}
Patterson D A, Hennessy J L. Computer Organization and Design[M].
San Francisco: Morgan Kaufmann, 2017.

\end{thebibliography}
```

### 11. 致谢

```latex
\acknowledgment{这里填写致谢内容。}
```

### 12. 附录

```latex
\appendixpage
\section{程序代码}
```

### 13. 模板命令总览

本模板当前主要提供以下命令：

- `\titleinfo`：设置论文题目、学生信息、班级、学院/专业、指导教师
- `\secondsupervisorinfo`：设置第二导师
- `\secondsupervisorname`：第二导师命令别名
- `\thesisdate`：设置年、月、日
- `\makethesistitle`：生成封面
- `\cabstract`：生成中文摘要
- `\eabstract`：生成英文摘要
- `\tableofcontents`：生成目录
- `\startmain`：开始正文并切换页码
- `\upcite`：上标形式引用文献
- `\acknowledgment`：生成致谢
- `\appendixpage`：开始附录

## 示例文件说明

`example.tex` 已更新为完整示例，包含：

- 新版封面信息填写方式
- 中文摘要与英文摘要
- 自动目录
- 正文标题与首段缩进示例
- 图、表、公式、分项序号示例
- 文献引用与参考文献示例
- 致谢、附录、第二导师字段示例
- 对模板主要命令的实际使用演示

可直接编译查看效果。

## 常见问题

### 为什么明明设置了首行缩进，正文首段却不缩进？

这是因为很多 LaTeX 文档类默认会让标题后的第一段不缩进。模板现在已经在类文件里处理好了，正文节标题后的首段也会自动首行缩进。

### 为什么摘要首段不缩进？

这是按你的当前要求单独设置的。摘要与正文缩进规则不同：正文首段缩进，摘要首段不缩进。

### 第二导师不需要怎么办？

如果不填写 `\secondsupervisorinfo{}`，第二页会保留该字段但内容为空。

### 目录、标题、正文格式是否已经封装？

是的，相关样式已封装在 `hnnuthesis.cls` 中，正常使用章节命令即可自动应用。

## 许可证

本项目采用 [Apache License 2.0](LICENSE) 开源许可证。

## 反馈

如果你发现格式仍与学校最新要求存在差异，欢迎继续修改并提交反馈。
