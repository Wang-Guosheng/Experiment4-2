\ProvidesClass{wsrep}
\LoadClass[hyperref,UTF8]{ctexart}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\newtitle}[7]{
	\begin{center}
		\fzdabiaosong ~\\~\\~\\\LARGE#1\hspace{0.5cm}实验报告\\\vspace{0.6cm}
		\normalsize\kaishu #2，#3\\\kaishu 指导教师:\hspace{0.3cm}#4\\\vspace{0.3cm}
		\fangsong 实验日期：~~#5年#6月#7日\vspace{0.3cm}
	\end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\RequirePackage{geometry}
		\geometry{left=2cm,right=2cm,top=2cm,bottom=2cm}

	\setCJKmainfont[Path = ../fonts/,Extension = .TTF,]{fzlantingsong}
	\setCJKsansfont[Path = ../fonts/,Extension = .TTF,]{fzdabiaosong}
	% \setCJKmonofont[Path = ../fonts/,Extension = .TTF,]{fzbaosong}
	% \setCJKmonofont[Path = ../fonts/,Extension = .TTF,]{fzboyasong}

	\newCJKfontfamily{\fzlantingsong}[Path = ../fonts/,Extension = .TTF,]{fzlantingsong}
	\newCJKfontfamily{\fzdabiaosong}[Path = ../fonts/,Extension = .TTF,]{fzdabiaosong}
	% \newCJKfontfamily{\fzbaosong}[Path = ../fonts/,Extension = .TTF,]{fzbaosong}
	% \newCJKfontfamily{\fzbaosong}[Path = ../fonts/,Extension = .TTF,]{fzboyasong}

	\CTEXsetup[format={\Large\bfseries\fzdabiaosong}]{section}
	\CTEXsetup[format={\large\bfseries\fzdabiaosong}]{subsection}
	\CTEXsetup[format={\normalsize\bfseries\fzdabiaosong}]{subsubsection}
	
	\punctstyle{kaiming}

	\RequirePackage{xr}
		\newcommand{\stdextdocs}{\externaldocument{AbsKeys,AnaDis,Apparatus,bibliography,Conclusion,Introduction,notice,Principle,Procedures,Record}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\RequirePackage{bm}
	\RequirePackage{esdiff,amsmath,amssymb,upgreek}
	\RequirePackage{mdframed}
	\RequirePackage{multirow,multicol,diagbox,floatflt,longtable,rotating,tabulary,booktabs}
	\RequirePackage{array}
	\RequirePackage[labelfont=bf,labelsep=quad,font=small]{caption}
	\RequirePackage[labelformat=parens]{subfig}
	\RequirePackage{pdfpages}
	\RequirePackage{colortbl,color}
		\definecolor{newgrey}{rgb}{.9,.9,.9}
	\RequirePackage{}
	\RequirePackage{graphicx,floatrow}
	\RequirePackage{listings}
	\RequirePackage{tikz,picinpar,wrapfig,placeins}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\floatsetup[table]{capposition=top}
	\floatsetup[figure]{capposition=bottom}
	\floatsetup[floatingfigure]{capposition=bottom}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% New commands
	\newcommand{\parallelsym}{\mathbin{\!/\mkern-5mu/\!}} % slash parellel symbol
	\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}} % enable multirow texts in environments like tabular and frame
	\newcommand{\textbookct}[2]{北京师范大学物理实验教学中心.2018.3.近代物理实验\uppercase\expandafter{\romannumeral 2}讲义.#1-#2页.}
	%\renewcommand{\rmdefault}{ptm} % uncomment to make letters and numerals in titles slim
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% Citation
		\RequirePackage[colorlinks,linkcolor=red,anchorcolor=blue,citecolor=green,urlcolor=blue]{hyperref}
		\newcommand{\supct}[1]{{\color{red}$^{[\ref{#1}]}$}} % red suppercite with brackets
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% Chineselisation
	    \renewcommand{\figurename}{图}
	    \renewcommand{\tablename}{表}
	    \newcommand{\subfigureautorefname}{\figureautorefname}
	    \newcommand{\subtableautorefname}{\tableautorefname}
	    \renewcommand{\figureautorefname}{图}
		\newcommand{\subfloatautorefname}{子图}
		\renewcommand{\tableautorefname}{表}
		\renewcommand{\equationautorefname}{式}
		\renewcommand{\sectionautorefname}{节}
		\renewcommand{\subsectionautorefname}{小节}
		\renewcommand{\subsubsectionautorefname}{条目}
		\renewcommand{\itemautorefname}{项目}
		\renewcommand{\appendixautorefname}{附录}
		\newtheorem{theorem}{定理}[section]
		\newtheorem{df}[theorem]{定义}
		\newtheorem{prop}[theorem]{命题}
		\newtheorem{lemma}[theorem]{引理}
		\newtheorem{prob}{问题}[section]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% Chineselisation of citations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\RequirePackage{cleveref}
    	\crefname{figure}{图}{图}
    	\creflabelformat{figure}{#2#1#3}
    	\crefname{table}{表}{表}
    	\creflabelformat{table}{#2#1#3}
    	\crefname{equation}{式}{式}
    	\creflabelformat{equation}{#2(#1)#3}
    	\crefname{subfigure}{子图}{子图}
    	\creflabelformat{subfigure}{#2(#1)#3}
    	\crefname{subtable}{子表}{子表}
    	\creflabelformat{subtable}{#2(#1)#3}
    	\crefname{subequation}{子式}{子式}
    	\creflabelformat{subequation}{#2(#1)#3}
    	\crefname{section}{节}{节}
    	\creflabelformat{section}{#2#1#3}
    	\crefname{subsection}{小节}{小节}
    	\creflabelformat{subsection}{#2#1#3}
    	\crefname{subsubsection}{条目}{条目}
    	\creflabelformat{subsubsection}{#2#1#3}
    	\crefname{appendix}{附录}{附录}
    	\creflabelformat{figure}{#2#1#3}
    	\newcommand{\crefrangeconjunction}{至}
    	\newcommand{\crefpairconjunction}{和}
    	\newcommand{\crefmiddleconjunction}{，}
    	\newcommand{\creflastconjunction}{及}
    	\newcommand{\crefpairgroupconjunction}{与}
    	\newcommand{\crefmiddlegroupconjunction}{，}
    	\newcommand{\creflastgroupconjunction}{以及}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % New environments
    \renewcommand{\abstractname}{\fzdabiaosong 摘\quad 要} 
	\newenvironment{newkeywords}[1]{
		\small\begin{center} \fzdabiaosong 关键词：\hspace{0.5cm}\kaishu\begin{tabular}{@{}#1@{}}
		}
		{
		\end{tabular}\end{center}\songti\normalsize
		}
	\newenvironment{newbibliography}{
		~\\~\\\begin{center} ~*~~~~~~~~*~~~~~~~~*~~~~~~~~*~~~~~~~~*~~~~~~~~*~\end{center}~\\
		\section*{\begin{center} 参~~~~考~~~~文~~~~献\end{center}}
		\begin{enumerate}\renewcommand{\labelenumi}{[\theenumi].}
		}
		{
		\end{enumerate}\renewcommand{\labelenumi}{\theenumi}
		}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%