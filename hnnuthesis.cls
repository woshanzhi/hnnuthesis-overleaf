\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hnnuthesis}[2026 Hunan First Normal University Thesis Template]

\LoadClass[12pt,a4paper]{ctexart}

% 页面设置
\RequirePackage{geometry}
\geometry{top=25mm,bottom=25mm,left=30mm,right=25mm}

% 行距
\RequirePackage{setspace}
\onehalfspacing

% 首行缩进
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

% 数学
\RequirePackage{amsmath,amssymb}

% 图片
\RequirePackage{graphicx}

% 表格
\RequirePackage{booktabs}
\RequirePackage{multirow}

% 图表标题
\RequirePackage{caption}

\captionsetup[figure]{
font=small,
labelfont=bf,
labelsep=space
}

\captionsetup[table]{
font=small,
labelfont=bf,
position=top
}

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
\newcommand{\major}{}
\newcommand{\supervisor}{}

\newcommand{\yearinfo}{}
\newcommand{\monthinfo}{}

\newcommand{\titleinfo}[6]{
\renewcommand{\thesistitle}{#1}
\renewcommand{\studentname}{#2}
\renewcommand{\studentid}{#3}
\renewcommand{\class}{#4}
\renewcommand{\major}{#5}
\renewcommand{\supervisor}{#6}
}

\newcommand{\thesisdate}[2]{
\renewcommand{\yearinfo}{#1}
\renewcommand{\monthinfo}{#2}
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

{\songti\bfseries\zihao{2}
\underline{\makebox[12cm][c]{\thesistitle}}
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
\underline{\makebox[8cm][c]{\major}} \\[1em]

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
\underline{\makebox[8cm][c]{\major}} \\[1.2em]

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
\vspace*{3\baselineskip}  % 离页顶空三行

\section*{诚信声明}

\vspace*{2\baselineskip}  % 离标题空两行

本人声明：

1、本人所呈交的毕业设计（论文）是在老师指导下进行的研究（设计）工作及取得的研究（设计）成果；

2、据查证，除了文中特别加以标注和致谢的地方外，毕业设计（论文）中不包含其他人已经公开发表过的研究成果，也不包含为获得其他教育机构的学位而使用过材料；

3、我承诺，本人提交的毕业设计（论文）中的所有内容均真实、可信。

\vspace*{5\baselineskip}  % 离正文空五行

% 作者签名和日期同一行
{\songti\bfseries\zihao{3}
作者签名：\underline{\makebox[4cm][c]{\studentname}} \hspace{2cm}
日期：\underline{\makebox[4cm][c]{\yearinfo\ 年\ \monthinfo\ 月\ 日}}
}
\newpage

}