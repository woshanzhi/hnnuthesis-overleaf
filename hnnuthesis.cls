\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hnnuthesis}[2026 Hunan First Normal University Thesis Template]

\LoadClass[12pt,a4paper]{ctexart}

% 页面设置
\RequirePackage{geometry}
\geometry{top=25mm,bottom=25mm,left=30mm,right=25mm}

% 字体设置
\RequirePackage{newtxtext} % 英文 Times New Roman

% 行距
\RequirePackage{setspace}
\setstretch{1.5} % 1.5倍行距

% 默认正文小四号字
\AtBeginDocument{\zihao{-4}}

% 首行缩进
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

% 数学
\RequirePackage{amsmath,amssymb}
\numberwithin{equation}{section} % 公式按章节编号

% 图片
\RequirePackage{graphicx}

% 表格
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{etoolbox}
\AtBeginEnvironment{tabular}{\zihao{5}} % 表格内文字五号
\AtBeginEnvironment{tabularx}{\zihao{5}}

% 图表标题
\RequirePackage{caption}
\RequirePackage[normalem]{ulem}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

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
\RequirePackage{chngcntr}
\counterwithin{figure}{section}
\counterwithin{table}{section}

\captionsetup[figure]{
    labelsep=space,
    name=图,
    format=plain,
    justification=centering,
    position=bottom
}
% 图序和图题五号宋体
\DeclareCaptionFont{five}{\songti\zihao{5}}
\captionsetup[figure]{font=five}

\captionsetup[table]{
    labelsep=space,
    name=表,
    position=top,
    justification=centering
}
% 表题五号宋体加黑
\DeclareCaptionFont{fivebf}{\songti\bfseries\zihao{5}}
\captionsetup[table]{font=fivebf}

% 参考文献上标
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% 标题格式
\ctexset{
    section={
        format=\centering\heiti\zihao{-3},
        beforeskip=1\baselineskip,
        afterskip=1\baselineskip
    },
    subsection={
        format=\heiti\zihao{4},
        indent=0pt,
        aftername=\quad,
        beforeskip=0.5\baselineskip,
        afterskip=0.5\baselineskip
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 封面信息
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\thesistitle}{}
\newcommand{\studentname}{}
\newcommand{\studentid}{}
\newcommand{\class}{}
\newcommand{\institute}{} % 学院
\newcommand{\supervisor}{}

\newcommand{\yearinfo}{}
\newcommand{\monthinfo}{}
\newcommand{\dayinfo}{}    % 加入日期

\newcommand{\titleinfo}[6]{
\renewcommand{\thesistitle}{#1}
\renewcommand{\studentname}{#2}
\renewcommand{\studentid}{#3}
\renewcommand{\class}{#4}
\renewcommand{\institute}{#5} % 学院
\renewcommand{\supervisor}{#6}
}

\newcommand{\thesisdate}[3]{ % 改为 年 月 日
\renewcommand{\yearinfo}{#1}
\renewcommand{\monthinfo}{#2}
\renewcommand{\dayinfo}{#3}
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

\vspace{1.5cm}

{\songti\bfseries\fontsize{48pt}{48pt}\selectfont 毕业论文（设计）}

\vspace{2.5cm}

{\songti\bfseries\zihao{3}题目：}

\vspace{0.8cm}

% 自适应下划线题目，支持两行居中
{\songti\bfseries\zihao{2}
\begin{tabular}{c}
\uline{\makebox[16cm][c]{\thesistitle}} \\
\uline{\makebox[16cm][c]{}}
\end{tabular}
}

\vspace{2.5cm}

{\songti\bfseries\zihao{3}

\begin{tabular}{rl}

学生姓名： &
\underline{\makebox[8cm][c]{\studentname}} \\[1em]

学\quad 号： &
\underline{\makebox[8cm][c]{\studentid}} \\[1em]

班\quad 级： &
\underline{\makebox[8cm][c]{\class}} \\[1em]

专\quad 业： &
\underline{\makebox[8cm][c]{\institute}} \\[1em]

指导教师： &
\underline{\makebox[8cm][c]{\supervisor}}

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

学生姓名： &
\underline{\makebox[8cm][c]{\studentname}} \\[1.2em]

学\quad 号： &
\underline{\makebox[8cm][c]{\studentid}} \\[1.2em]

班\quad 级： &
\underline{\makebox[8cm][c]{\class}} \\[1.2em]

所 在 学 院： &
\underline{\makebox[8cm][c]{\institute}} \\[1.2em]

指导教师： &
\underline{\makebox[8cm][c]{\supervisor}} \\[1.2em]

完成日期： &
\underline{\makebox[8cm][c]{\yearinfo\ 年\ \monthinfo\ 月}}

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

% 自动生成 年 月 日
{\songti\bfseries\zihao{3}
作者签名：\underline{\makebox[4cm][c]{\studentname}} \hspace{2cm}
日期：\underline{\makebox[5cm][c]{\yearinfo\ 年\ \monthinfo\ 月\ \dayinfo\ 日}}
}
\newpage

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 摘要环境
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 中文摘要
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

% 英文摘要
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

% 正文开始命令
\newcommand{\startmain}{
    \clearpage
    \pagestyle{main}
    \pagenumbering{arabic}
    \setcounter{page}{1}
}

% 附录
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

% 致谢
\newcommand{\acknowledgment}[1]{
    \clearpage
    \begin{center}
        \vspace*{1\baselineskip}
        {\heiti\zihao{-3} 致\quad 谢}
        \vspace*{1\baselineskip}
    \end{center}
    {\songti\zihao{-4} #1}
}

% 参考文献环境
\RequirePackage{natbib}
\renewcommand{\bibsection}{
    \clearpage
    \begin{center}
        \vspace*{1\baselineskip}
        {\heiti\zihao{-3} 参考文献}
        \vspace*{1\baselineskip}
    \end{center}
}
\renewcommand{\bibfont}{\songti\zihao{-4}}
\setlength{\bibsep}{0pt}
\setcitestyle{square,super,comma}

% 分项序号 (1) (2) (3)
\RequirePackage{enumitem}
\setlist[enumerate,1]{label=(\arabic*)}

