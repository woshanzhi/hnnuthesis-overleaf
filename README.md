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

- `\titleinfo` 依次对应：题目、学生姓名、学号、班级、学院/专业、指导教师
- `\secondsupervisorinfo{}` 用于设置第二页封面的“第二导师”
- `\thesisdate{年}{月}[日]` 中“日”为可选项

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
  - 题目为宋体、小二、加粗、居中
  - 学生信息为宋体三号、加粗、居中
  - 日期为宋体三号、加粗、居中
- 第二页：
  - 题目为黑体二号、居中
  - 学生姓名、学号、班级、所在学院、指导教师、第二导师、完成日期为宋体三号、加粗、居中

### 3. 摘要

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

### 4. 目录

```latex
\tableofcontents
```

当前目录格式已设置为：

- `目录` 两字：三号黑体、居中、上下各空一行
- 目录条目：小四号黑体
- 整体行距：1.5 倍

### 5. 正文

正文开始建议使用：

```latex
\startmain
```

已设置的正文格式包括：

- 中文：小四号宋体
- 英文：Times 风格字体
- 首行缩进 2 字
- 1.5 倍行距

一级标题格式：

- 小三号黑体
- 居中
- 上下各空一行
- 示例：`一 绪论`、`二 系统分析`

二级标题格式：

- 形如 `（一）课题背景及目的`
- 顶格书写，序号后空一格
- 黑体小四
- 1.5 倍行距

示例：

```latex
\section{绪论}
\subsection{课题背景及目的}
正文内容……
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

```latex
\begin{figure}[h]
\centering
\includegraphics[width=0.6\textwidth]{example-image}
\caption{系统结构图}
\label{fig:example}
\end{figure}
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

### 10. 参考文献

模板已设置为“中括号上标”引用风格。

正文中可写：

```latex
这是一个引用示例\cite{ref1}。
```

或：

```latex
这是一个引用示例\upcite{ref1}。
```

参考文献标题会自动显示为“参考文献”。

### 11. 致谢与附录

致谢：

```latex
\acknowledgment{这里填写致谢内容。}
```

附录：

```latex
\appendixpage
\section{程序代码}
```

## 示例文件说明

`example.tex` 已更新为完整示例，包含：

- 新版封面信息填写方式
- 中文摘要与英文摘要
- 自动目录
- 正文标题示例
- 图、表、公式示例
- 参考文献、致谢、附录
- 第二导师字段示例

可直接编译查看效果。

## 常见问题

### 为什么推荐 XeLaTeX？

因为中文排版与字体处理更稳定，适合此类毕业论文模板。

### 第二导师不需要怎么办？

如果不填写 `\secondsupervisorinfo{}`，第二页会保留该字段但内容为空。

### 目录、标题、正文格式是否已经封装？

是的，相关样式已封装在 `hnnuthesis.cls` 中，正常使用章节命令即可自动应用。

## 许可证

本项目采用 [Apache License 2.0](LICENSE) 开源许可证。

## 反馈

如果你发现格式仍与学校最新要求存在差异，欢迎继续修改并提交反馈。
