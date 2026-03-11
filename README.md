# 🎓 HNNUThesis-Overleaf

湖南第一师范学院 本科毕业设计（论文）LaTeX 模板，完美适配 Overleaf，同时支持本地 TeX 环境（TeXstudio/VS Code）编译，极简配置、开箱即用。

## 📋 模板简介

| 项目 | 说明 |
|------|------|
| **适配院校** | 湖南第一师范学院 |
| **文档类型** | 本科毕业设计 / 论文（文科 / 理科 / 工科通用） |
| **核心特性** | 严格贴合学校格式要求（封面、诚信声明、页眉页脚、字体行距、图表标题等），内置封面信息快速配置命令、标准化图片/表格排版样式，无需额外手动调试 |
| **核心文件** | `hnnuthesis.cls` 为模板核心类文件，封装所有格式与自定义命令，主文档直接调用即可 |
| **编译环境** | Overleaf（推荐 XeLaTeX 编译器）、本地 TeX 环境（TeX Live/MiKTeX + XeLaTeX） |

## 📁 目录结构

```
hnnuthesis-overleaf/
├── hnnuthesis.cls              # 模板核心类文件（封装所有格式/自定义命令）
├── example.tex                 # 论文样例文档（参考格式和写作规范）
├── figure/                     # 图片专用文件夹
│   ├── dysf.jpg               # 学校校徽
│   └── school.png             # 学校标识
├── simsun.ttc                 # 宋体字体文件
├── simkai.ttf                 # 楷体字体文件
├── LICENSE                    # Apache 2.0 开源许可证
└── README.md                  # 本文件
```

## 🚀 快速开始

### 方法 1：Overleaf 在线编译（推荐，最简便）

1. **下载模板**：从 GitHub 页面 → Code → Download ZIP，下载本仓库压缩包
2. **上传到 Overleaf**：
   - 登录 [Overleaf](https://www.overleaf.com)
   - 点击「New Project」→「Upload Project」
   - 选择下载的 ZIP 文件并上传
3. **设置编译器**：项目菜单 → Compiler 选择「XeLaTeX」
4. **编译与查看**：点击「Recompile」，即可在右侧查看生成的 PDF

### 方法 2：本地编译（TeXstudio/VS Code）

#### 前置要求
- **LaTeX 发行版**：TeX Live（推荐）或 MiKTeX
- **编辑器**：TeXstudio、VS Code + LaTeX Workshop 扩展
- **字体**：模板已包含宋体（simsun.ttc）和楷体（simkai.ttf）

#### 编译步骤
1. 安装 TeX Live 或 MiKTeX
2. 用编辑器打开 `example.tex`
3. 选择 **XeLaTeX** 编译器
4. 点击编译按钮或按快捷键（通常为 `Ctrl+Alt+B`）

## 📝 配置和使用说明

### 修改论文信息

打开 `example.tex`，找到开头的论文信息配置部分：

```latex
\titleinfo
{RISCV}                    % 论文题目
{张吼吼}                   % 学生姓名
{224456634560}             % 学号
{2022级计科8班}            % 班级
{计算机学院}               % 专业/学院
{唐教授}                   % 指导教师
```

根据需要修改上述内容。

### 设置论文时间

在 `example.tex` 中修改：

```latex
\thesisdate{2026}{6}       % 年份、月份
```

### 论文结构

论文主要分为以下部分（可参考 `example.tex`）：

1. **封面自动生成**：通过 `\makethesistitle` 命令自动生成
2. **中文摘要**：在指定位置填写摘要和关键词
3. **英文摘要**：提供 Abstract 和 Key words
4. **目录**：通过 `\tableofcontents` 自动生成（无需手动编辑）
5. **正文**：按章节组织内容
   - `\section{章节名}` - 一级标题（居中加粗）
   - `\subsection{小节名}` - 二级标题
   - `\subsubsection{子小节名}` - 三级标题（可选）

### 添加章节

在正文部分添加新章节：

```latex
\section{新章节标题}

\subsection{小节标题}

小节内容……

\subsubsection{更细致的分类（可选）}

内容……
```

### 插入图片

```latex
\begin{figure}[h]
\centering
\includegraphics[width=0.8\textwidth]{figure/图片文件名}
\caption{图片标题}
\label{fig:标签}
\end{figure}

% 在文中引用：如图 \ref{fig:标签} 所示
```

### 插入表格

```latex
\begin{table}[h]
\centering
\caption{表格标题}
\label{tab:标签}
\begin{tabular}{|c|c|c|}
\hline
表头1 & 表头2 & 表头3 \\
\hline
数据1 & 数据2 & 数据3 \\
\hline
\end{tabular}
\end{table}
```

### 数学公式

**单行公式**：
```latex
公式说明 $E=mc^2$（行内公式）

% 或使用 equation 环境自动编号
\begin{equation}
E=mc^2
\end{equation}
```

**多行公式**：
```latex
\begin{align}
公式1 & = 表达式1 \\
公式2 & = 表达式2
\end{align}
```

### 参考文献

在正文中引用：
```latex
这是一个例子\cite{ref_key}。

% 使用上标形式：
这是一个例子\upcite{ref_key}。
```

## 🤝 参与共建

本模板为开源项目，仅实现学校基础格式要求，难免存在疏漏与不足。欢迎各位同学、开发者积极参与完善：

- **发现问题？** 直接提交 [Issue](../../issues) 反馈（如格式不符、编译报错、功能缺失等）
- **有改进建议？** 欢迎提交 [Pull Request](../../pulls) 共同优化模板
- **其他方式**：联系维护者，让模板更贴合学校要求、更易用

## 📜 许可证

本项目采用 [Apache License 2.0](LICENSE) 开源许可证。

您可以自由地使用、修改和分发本模板，详见 [LICENSE](LICENSE) 文件。

## 💡 常见问题

**Q：如何修改字体？**
A：模板已包含宋体和楷体。若需其他字体，可在 `example.tex` 中使用 `\setmainfont{字体名}` 修改。

**Q：怎样添加新的章节？**
A：直接在 `example.tex` 中使用 `\section{标题}` 添加即可，目录会自动更新。

**Q：编译时出现字体找不到的错误？**
A：确保字体文件（simsun.ttc、simkai.ttf）与 `.tex` 文件在同一目录，或在编辑器中配置 XeLaTeX 编译选项。

## 📧 反馈与支持

如有任何问题或建议，欢迎通过以下方式联系我们：

- 提交 Issue
- 发起 Pull Request
- 查看 [模板样例文档](HNNUThesis.pdf)

---

**祝您论文写作顺利！** 🎉