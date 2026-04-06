\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hnnuthesis}[2026 Hunan First Normal University Thesis Template]

\LoadClass[12pt,a4paper]{ctexart}

% 页面设置
\RequirePackage{geometry}
\geometry{top=25mm,bottom=25mm,left=30mm,right=25mm}

% 字体设置
\RequirePackage{newtxtext} % 英文 Times 风格字体

% 行距
\RequirePackage{setspace}
\setstretch{1.5}

% 默认正文中文小四号宋体，英文字体采用 Times 风格
\AtBeginDocument{\zihao{-4}\songti}

% 首行缩进
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

% 数学
\RequirePackage{amsmath,amssymb}
\numberwithin{equation}{section}
\renewcommand{\theequation}{\arabic{section}-\arabic{equation}}

% 图片表格
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{etoolbox}
\AtBeginEnvironment{tabular}{\zihao{5}}
\AtBeginEnvironment{tabularx}{\zihao{5}}

% 图表标题与页面样式
\RequirePackage{caption}
\RequirePackage[normalem]{ulem}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titletoc}
\RequirePackage{xparse}
\RequirePackage{chngcntr}
\RequirePackage{natbib}
\RequirePackage{enumitem}

% 设置页码格式
\fancypagestyle{main}{
    \fancyhf{}
    \fancyhead[C]{\heiti\zihao{-5} \thesistitle}
    \fancyfoot[C]{\songti\zihao{-5} 第 \thepage\ 页 共 \pageref{LastPage} 页}
    \renewcommand{\headrulewidth}{0.5pt}
}

\fancypagestyle{abstract}{
    \fancyhf{}
    \fancyhead[C]{\heiti\zihao{-5} \thesistitle}
    \fancyfoot[C]{}
    \renewcommand{\headrulewidth}{0.5pt}
}

% 按章节编号
\counterwithin{figure}{section}
\counterwithin{table}{section}
\renewcommand{\thefigure}{\arabic{section}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{section}-\arabic{table}}

\captionsetup[figure]{
    labelsep=space,
    name=图,
    format=plain,
    justification=centering,
    position=bottom,
    font={songti,zihao=5}
}

\captionsetup[table]{
    labelsep=space,
    name=表,
    position=top,
    justification=centering,
    font={songti,bf,zihao=5}
}

% 参考文献上标方括号
\setcitestyle{square,super,comma}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}
\renewcommand{\bibsection}{%
    \clearpage
    \begin{center}
        \vspace*{1\baselineskip}
        {\heiti\zihao{-3} 参考文献}
        \vspace*{1\baselineskip}
    \end{center}
}
\renewcommand{\bibfont}{\songti\zihao{-4}}
\setlength{\bibsep}{0pt}

% 标题格式
\ctexset{
    contentsname={目\qquad 录},
    section={
        name={,},
        number=\chinese{section},
        format=\centering\heiti\zihao{-3},
        aftername=\hspace{1em},
        beforeskip=1\baselineskip,
        afterskip=1\baselineskip
    },
    subsection={
        name={（,）},
        number=\chinese{subsection},
        format=\raggedright\heiti\zihao{-4},
        indent=0pt,
        aftername=\hspace{1em},
        beforeskip=0.75\baselineskip,
        afterskip=0.75\baselineskip
    }
}

% 目录格式
\titlecontents{section}
  [0em]
  {\heiti\zihao{-4}}
  {\contentslabel{2.8em}}
  {}%
  {\titlerule*[0.8pc]{.}\contentspage}

\titlecontents{subsection}
  [2em]
  {\heiti\zihao{-4}}
  {\contentslabel{3.2em}}
  {}%
  {\titlerule*[0.8pc]{.}\contentspage}

\renewcommand{\tableofcontents}{%
  \clearpage
  \pagestyle{abstract}
  \begin{center}
    \vspace*{1\baselineskip}
    {\heiti\zihao{3} 目\qquad 录}
    \vspace*{1\baselineskip}
  \end{center}
  \@starttoc{toc}
}

% 分项序号（1）（2）（3）
\setlist[enumerate,1]{label=（\arabic*）}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 封面信息
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\thesistitle}{}
\newcommand{\studentname}{}
\newcommand{\studentid}{}
\newcommand{\class}{}
\newcommand{\institute}{}
\newcommand{\supervisor}{}
\newcommand{\secondsupervisor}{}

\newcommand{\yearinfo}{}
\newcommand{\monthinfo}{}
\newcommand{\dayinfo}{}

\newcommand{\titleinfo}[6]{
\renewcommand{\thesistitle}{#1}
\renewcommand{\studentname}{#2}
\renewcommand{\studentid}{#3}
\renewcommand{\class}{#4}
\renewcommand{\institute}{#5}
\renewcommand{\supervisor}{#6}
}

\newcommand{\secondsupervisorinfo}[1]{
\renewcommand{\secondsupervisor}{#1}
}

\newcommand{\secondsupervisorname}[1]{
\renewcommand{\secondsupervisor}{#1}
}

\NewDocumentCommand{\thesisdate}{m m o}{
\renewcommand{\yearinfo}{#1}
\renewcommand{\monthinfo}{#2}
\IfValueTF{#3}{\renewcommand{\dayinfo}{#3}}{\renewcommand{\dayinfo}{}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 生成封面
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makethesistitle}{

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 第一页
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\begin{center}

% logo
\begin{minipage}{0.22\textwidth}
\centering
\includegraphics[height=3.5cm]{figure/dysf.jpg}
\end{minipage}
\hfill
\begin{minipage}{0.65\textwidth}
\centering
\includegraphics[width=\linewidth]{figure/school.png}
\end{minipage}

\vspace{1.8cm}

{\songti\bfseries\fontsize{48pt}{48pt}\selectfont 毕业设计（论文）}

\vspace{2.6cm}

{\songti\bfseries\zihao{-2}
\begin{tabular}{c}
\uline{\makebox[16cm][c]{\thesistitle}} \\
\uline{\makebox[16cm][c]{}}
\end{tabular}
}

\vspace{2.8cm}

{\songti\bfseries\zihao{3}
\begin{tabular}{rl}
学生姓名： & \underline{\makebox[8cm][c]{\studentname}} \\[1.2em]
学\qquad 号： & \underline{\makebox[8cm][c]{\studentid}} \\[1.2em]
班\qquad 级： & \underline{\makebox[8cm][c]{\class}} \\[1.2em]
专\qquad 业： & \underline{\makebox[8cm][c]{\institute}} \\[1.2em]
指导教师： & \underline{\makebox[8cm][c]{\supervisor}}
\end{tabular}
}

\vfill

{\songti\bfseries\zihao{3}
\yearinfo\ 年\ \monthinfo\ 月
}

\end{center}

\newpage

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 第二页
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\begin{center}
\vspace*{2\baselineskip}
{\heiti\zihao{2} \thesistitle}

\vspace*{4\baselineskip}

{\songti\bfseries\zihao{3}
\begin{tabular}{rl}
学生姓名： & \underline{\makebox[8cm][c]{\studentname}} \\[1.3em]
学\qquad 号： & \underline{\makebox[8cm][c]{\studentid}} \\[1.3em]
班\qquad 级： & \underline{\makebox[8cm][c]{\class}} \\[1.3em]
所\ 在\ 学\ 院： & \underline{\makebox[8cm][c]{\institute}} \\[1.3em]
指导教师： & \underline{\makebox[8cm][c]{\supervisor}} \\[1.3em]
第二导师： & \underline{\makebox[8cm][c]{\secondsupervisor}} \\[1.3em]
完成日期： & \underline{\makebox[8cm][c]{\yearinfo\ 年\ \monthinfo\ 月}}
\end{tabular}
}

\end{center}

\newpage

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 第三页 诚信声明
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\vspace*{3\baselineskip}

\section*{诚信声明}

\vspace*{2\baselineskip}

本人声明：

1、本人所呈交的毕业设计（论文）是在老师指导下进行的研究（设计）工作及取得的研究（设计）成果；

2、据查证，除了文中特别加以标注和致谢的地方外，毕业设计（论文）中不包含其他人已经公开发表过的研究成果，也不包含为获得其他教育机构的学位而使用过材料；

3、我承诺，本人提交的毕业设计（论文）中的所有内容均真实、可信。

\vspace*{5\baselineskip}

{\songti\bfseries\zihao{3}
作者签名：\underline{\makebox[4cm][c]{\studentname}} \hspace{2cm}
日期：\underline{\makebox[5cm][c]{\yearinfo\ 年\ \monthinfo\ 月\ \dayinfo\ 日}}
}
\newpage

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 摘要环境
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\cabstract}[2]{
    \clearpage
    \pagestyle{abstract}
    \begin{center}
        \vspace*{1\baselineskip}
        {\heiti\zihao{3} \thesistitle}
        \vspace*{1\baselineskip}
    \end{center}
    \begin{center}
        {\heiti\zihao{-3} 摘\quad 要}
    \end{center}
    \vspace*{1\baselineskip}
    {\songti\zihao{-4} #1}
    \vspace*{2\baselineskip}
    \par\noindent{\heiti\zihao{4} 关键词：}{\songti\zihao{-4} #2}
}

\newcommand{\eabstract}[3]{
    \clearpage
    \pagestyle{abstract}
    \begin{center}
        \vspace*{1\baselineskip}
        {\bfseries\zihao{3} \MakeUppercase{#1}}
        \vspace*{1\baselineskip}
    \end{center}
    \begin{center}
        {\bfseries\zihao{-3} ABSTRACT}
    \end{center}
    \vspace*{1\baselineskip}
    {\zihao{-4} #2}
    \vspace*{2\baselineskip}
    \par\noindent{\bfseries\zihao{4} Key words:}{\zihao{-4} #3}
}

\newcommand{\startmain}{
    \clearpage
    \pagestyle{main}
    \pagenumbering{arabic}
    \setcounter{page}{1}
}

\newcommand{\appendixpage}{
    \clearpage
    \appendix
    \ctexset{
        section={
            name={附录,},
            number=\Alph{section},
            format=\centering\heiti\zihao{3},
            beforeskip=1\baselineskip,
            afterskip=1\baselineskip
        }
    }
}

\newcommand{\acknowledgment}[1]{
    \clearpage
    \begin{center}
        \vspace*{1\baselineskip}
        {\heiti\zihao{-3} 致\quad 谢}
        \vspace*{1\baselineskip}
    \end{center}
    {\songti\zihao{-4} #1}
}
