\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{stvuz_khpi}[2010/03/01]
\LoadClass[a4paper,14pt,hyphens]{extarticle}[1996/10/08]

\usepackage{xltxtra}
\usepackage{polyglossia}  %% подключает пакет многоязыкой вёрстки
\setmainfont{Times New Roman}  %% задаёт основной шрифт документа
\setsansfont{DejaVu Sans}  %% задаёт шрифт без засечек
\setmonofont{DejaVu Sans Mono}  %% задаёт моноширинный шрифт
\defaultfontfeatures{Scale=MatchLowercase, Mapping=tex-text}  %% устанавливает поведение шрифтов по умолчанию
\setdefaultlanguage{ukrainian}
%\setdefaultlanguage[spelling=modern]{russian}  %% устанавливает язык по умолчанию
\setotherlanguage{english}


\newfontfamily\cyrillicfont{Times New Roman}


\makeatletter

\uchyph=1

\mathchardef\mhyphen="2D

\def\captionsukrainian{%
   \def\refname{Список джерел інформації}%
   \def\abstractname{Анотація}%
   \def\bibname{Бібліоґрафія}%
   \def\prefacename{Вступ}%
   \def\chaptername{Розділ}%
   \def\appendixname{Додаток}%
   \def\contentsname{Зміст}%
   \def\listfigurename{Перелік ілюстрацій}%
   \def\listtablename{Перелік таблиць}%
   \def\indexname{Покажчик}%
   \def\authorname{Іменний покажчик}% babel has "Їменний покажчик"
   \def\figurename{Рисунок}%
   \def\tablename{Таблиця}%
   %\def\thepart{}%
   \def\partname{Частина}%
   \def\pagename{с.}%
   \def\seename{див.}%
   \def\alsoname{див.\ також}%
   \def\enclname{вкладка}%
   \def\ccname{копія}%
   \def\headtoname{До}%
   \def\proofname{Доведення}%
   \def\glossaryname{Словник термінів}%
   }


\def\appendixAsbuk#1{\ifcase#1\or
   А\or Б\or В\or г\or д\or Е\or Є\or Ж\or
   З\or И\or І\or Ї\or Й\or К\or Л\or М\or Н\or О\or
   П\or Р\or С\or Т\or У\or Ф\or Х\or
   Ц\or Ч\or Ш\or Щ\or Ю\or Я\else\xpg@ill@value{#1}{ukrainian@Asbuk}\fi}
\def\appendixasbuk#1{\ifcase#1\or
   а\or б\or в\or г\or д\or е\or є\or ж\or
   з\or и\or і\or ї\or й\or к\or л\or м\or н\or о\or
   п\or р\or с\or т\or у\or ф\or х\or
   ц\or ч\or ш\or щ\or ю\or я\else\xpg@ill@value{#1}{ukrainian@asbuk}\fi}

\def\Asbuk#1{\expandafter\ukrainian@Alph\csname c@#1\endcsname}
\def\asbuk#1{\expandafter\ukrainian@alph\csname c@#1\endcsname}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Пакеты
\usepackage{footmisc}
\usepackage[unicode,breaklinks]{hyperref}
%\usepackage{mathtext} % кириллические буквы в формулах
\usepackage{fontspec}
\usepackage{xunicode}
%\usepackage{cmap}
%\usepackage{xecyr}
\input{cyrunicode}

\let\footnotesize\relax
\renewcommand*{\footnotelayout}{\linespread{1}} % FIXME одинарный интервал не ставится

\usepackage{forloop}
\usepackage{expl3}

%\usepackage[noenc]{tipa}
%\usepackage{tipx}
\usepackage{boldline} % поддержка жирных линий в таблицах

\usepackage[geometry,weather,misc,clock]{ifsym}

\usepackage{indentfirst} % отступ первой строки

\usepackage{pifont}
\usepackage{eurosym}
\usepackage{amsmath}
\usepackage{wasysym}
%\usepackage{amssymb}
\usepackage{amsfonts}
%\usepackage{textcomp} % Conflicts
\usepackage{tabularx}

\usepackage{floatrow}
\usepackage{longtable}

\usepackage{eskdcap} % надписи по ЕСКД
% СТВУЗ ХПІ 3.01-2010 пункт 5.3
\usepackage{eskdtotal} % счетчики для рефератов по ЕСКД 


\usepackage{color} % выделение цветом (в основном, для отладки)
\usepackage{array}
\usepackage{enumitem}
\usepackage{xtab} % сложные многостраничные таблицы
\usepackage{verbatim} 
\usepackage{hyphenat} % переносы

\usepackage{cite} % вставка ссылок на источники
%\usepackage{url} % вставка ссылок на интернет ресурсы
\usepackage{ulem}
\usepackage{float} % поддержка плавающих блоков (картинки, таблицы)
\usepackage{rotating} % поворот текста
\usepackage{pdflscape} % поворот страницы % PDF аналог пакета lscape
\usepackage{multirow}

% СТВУЗ ХПІ 3.01-2010 пункт 6.3.4.3
\usepackage{flafter} % Размещать рисунки (float) после первого упоминания

\bibliographystyle{stvuz_utf8gost780u}  % стилевой файл для оформления
% библиографии по ГОСТ 7.1-84 и ГОСТ 7.80-00 . FIXME В СТВУЗ написано
% использовать ДСТУ ГОСТ 7.1. 


\def\BibEmph#1{\textrm{#1}} % убрать курсив

\usepackage{caption}

%\usepackage{printlen} % отладочные команды
%\newcommand*{\Lenv}[1]{\texttt {#1}} %

%\graphicspath{{images/}} %путь к рисункам

% END OF Header

% СТВУЗ ХПІ 3.01-2010 пункт 5.3
\setcounter{tocdepth}{2} % глубина составления содержания
\setcounter{secnumdepth}{3} % максимальная глубина нумерации

% Page layout (geometry)

% СТВУЗ ХПІ 3.01-2010 пункт 4.1
\usepackage{geometry} % задание полей страницы
\geometry{left=2cm}% левое поле
\geometry{right=1cm}% правое поле
\geometry{top=2.5cm}% верхнее поле
\geometry{bottom=2cm}% нижнее поле

\pagestyle{empty}

\setlength\headheight{0.5cm}
\setlength\headsep{0.5cm}
\setlength{\itemsep}{0mm}
\setlength{\parsep}{0mm}
\setlength{\parskip}{0mm}

% Отступ красной строки
\setlength\parindent{1.25cm}
% СТВУЗ ХПІ 3.01-2010 пункт 4.1 
\linespread{1.3} % Полуторный интервал

% Команда для пропуска строки
\newcommand{\skipline}{\vspace{18pt}} 
\newcommand{\skipbeforeformula}{\vspace{6pt}} 
\newcommand{\skipafterformula}{\vspace{1pt}} 
% Отступы до и после floats
\renewcommand\FBaskip{18pt}



% Разрешить увеличивать интервалы между словами для избежания переносов
\sloppy
\hbadness=10000 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Заголовки

% СТВУЗ ХПІ 3.01-2010 пункт 5.2.4
% ключевын слова прописными буквами
\newcommand\textstyleKeywords[1]{\nohyphens{\sloppy\MakeUppercase{#1}}}
% заголовки ключевых слов курсивом
\newcommand\textstyleKeywordsHeading[1]{\textit{#1}}

% СТВУЗ ХПІ 3.01-2010 пункт 5.8
% курсив для подзаголовков библиографии(є посилання / нема посилань)
\newcommand\textstyleBibSubheading[1]{\vspace{21pt}\textit{#1}}

% СТВУЗ ХПІ 3.01-2010 пункт 5.1.1

% FIXME наверное, sectionHeadingLiteraInternal, это грязный хак
\newcommand\sectionHeadingLiteraInternal{\MakeUppercase}
\newcommand\sectionHeadingLitera{\sectionHeadingLiteraInternal}

% Стиль заголовка раздела (прописные буквы, без переносов)
\newcommand\sectionHeading[1]{
	\textrm{\noindent{\nohyphens{
		\begin{center}
			\sectionHeadingLitera{#1}
		\end{center}
	}}}
}

% Стиль заголовков подразделов
\newcommand\subsectionHeading[1]{\hspace*{1.25cm}\textrm{\nohyphens{\textbf{#1}}}}

% Начало приложений
\newcommand\startAppendix{%
\setcounter{section}{0}
\renewcommand\thesection{\Asbuk{section}}
\renewcommand\sectionHeadingLitera{}
}

% Команда для генерации заголовка приложения
\newcommand\appendixSection[1]{
\stepcounter{section}
\stepcounter{appendix}
\section*{\sectionHeadingLiteraInternal{Додаток~\thesection}\\ \skipline #1}
\addcontentsline{toc}{section}{\tocsecindent{Додаток~\thesection~#1}}
}

\newcommand\appendixSubsection[1]{
\stepcounter{subsection}
\subsection*{\thesubsection~#1}
}

\newcommand\appendixSubsubsection[1]{
\stepcounter{subsubsection}
\subsubsection*{\thesubsubsection~#1}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Списки

% поддержка продолжения нумерации (например, для библиографии)
\newcounter{saveenum}

\renewcommand\labelitemi{--}
\renewcommand\labelitemii{--}
\renewcommand\labelitemiii{--}
\renewcommand\labelitemiv{--}

\newcommand\liststyleNumberingArabicSpace{%
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\labelenumi{\theenumi}
}

\newcommand\liststyleNumberingArabicLitera{%
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\labelenumi{\theenumi)}
\renewcommand\labelenumii{\theenumii)}
}

\newcommand\liststyleNumberingBibliography{\liststyleNumberingArabicSpace}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Заголовки
% опять

\newlength{\beforesubsectionskip}
\setlength{\beforesubsectionskip}{21pt}
\newcommand\beforesubsection{\vspace*{\beforesubsectionskip}
    \setlength{\beforesubsectionskip}{0mm}}
\newcommand\aftersection{\setlength{\beforesubsectionskip}{21pt}}

% Стили заголовков секций
\renewcommand{\section}{\aftersection\clearpage\vspace*{-2cm}\@startsection % FIXME why 2 cm??
{section}%		% the name
{1}%			% the level
{0mm}%			% the indent
{0.3\baselineskip}%	% the before skip
{0.3\baselineskip}%	% the after skip
{\sectionHeading}%	% the style
}

\renewcommand{\subsection}{\beforesubsection\@startsection
{subsection}%		% the name
{2}%				% the level
{-1.25cm}%			% the indent
{21pt}%{0.3\baselineskip}%	% the before skip
{0.1\baselineskip}%	% the after skip
{\subsectionHeading}%	% the style
}

\renewcommand{\subsubsection}{\@startsection 
{subsubsection}%	% the name
{3}%			% the level
{-1.25cm}%			% the indent
{0.1\baselineskip}%{0.3\baselineskip}%	% the before skip
{0.1\baselineskip}%	% the after skip
{\subsectionHeading}%	% the style
}

% Стили оглавления, [7] http://habrahabr.ru/blogs/latex/48394/
% Here was l@sectionx

\renewcommand{\@dotsep}{1}
\renewcommand{\@pnumwidth}{1em}

% section
\renewcommand*\l@section[2]{%
\ifnum \c@tocdepth >\z@
\addpenalty\@secpenalty
\setlength\@tempdima{1em}%
\begingroup
\@tempdima 1em \relax
\parindent \z@ \rightskip \@pnumwidth
\parfillskip -\@pnumwidth
\leavevmode
\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
{{#1}\nobreak }%
\leaders\hbox{%
$\m@th
\mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
mu$}\hfill
\nobreak%
\hb@xt@\@pnumwidth{\hfil \normalcolor #2}%
\par%
\endgroup
\fi}

% subsection
\renewcommand*\l@subsection[2]{%
\ifnum \c@tocdepth >\z@
\addpenalty\@secpenalty%
\setlength\@tempdima{1em}%
\begingroup
\@tempdima 2em \relax
\parindent \z@ \rightskip \@pnumwidth
\parfillskip -\@pnumwidth
\leavevmode
\advance\leftskip 1em \null\nobreak\hskip -\leftskip 
% 1em вместо \@tempdima чтобы выровнять
{\hspace{0.5cm}{#1}\nobreak }%
\leaders\hbox{%
$\m@th
\mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
mu$}\hfill%
\nobreak%
\hb@xt@\@pnumwidth{\hfil \normalcolor #2}%
\par%
\endgroup
\fi}

% subsubsection
\renewcommand*\l@subsubsection[2]{%
\ifnum \c@tocdepth >\z@
\addpenalty\@secpenalty%
\setlength\@tempdima{1em}% ни на что не влияет???
\begingroup
\@tempdima 2.5em \relax % Сдвиг вправо всей строки вместе с отсутпом 1 см
\parindent \z@ \rightskip \@pnumwidth %  Отступ справа от цифр
\parfillskip -\@pnumwidth %  Отступ точек слева от цифр
\leavevmode
\advance\leftskip 2em \null\nobreak\hskip -\leftskip 
% 2em вместо \@tempdima чтобы выровнять
{\hspace{1cm}{#1}\nobreak }
% Одновременно определяет и сдвиг метки и сдвиг текста обратно!!!!
\leaders\hbox{%
$\m@th
\mkern \@dotsep mu\hbox{.}\mkern \@dotsep%
mu$}\hfill%
\nobreak%
\hb@xt@\@pnumwidth{\hfil \normalcolor #2}%
\par%
\endgroup
\fi}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Рисунки

%% Пропуск строки перед рисунками
\newenvironment{stdfigure}{\@float{figure}[h!] \skipline \centering }
{\end@float}

% СТВУЗ ХПІ 3.01-2010 пункт 6.3.4.6
% команда для продолжения рисунков  
\newcommand{\captioncont}{
\vskip\abovecaptionskip
\centering Продовження рисунку \thefigure \par
\vskip\belowcaptionskip
}

% команда для окончания рисунков
\newcommand{\captionend}{
\vskip\abovecaptionskip
\centering Закінчення рисунку \thefigure \par
\vskip\belowcaptionskip
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Списки
% опять
% нулевой отступ для списков
\setlength{\leftmargin}{0cm}

% 6.2.9 Вложенные списки и нумерации. Сдвиги

% Глобальное хранение отступа первой строки для вложенных списков
\newlength{\globalitemindent}
\newcommand{\addindent}{\addtolength{\globalitemindent}{1.25cm}
    \setlength{\itemindent}{\globalitemindent}}
\newcommand{\delindent}{\addtolength{\globalitemindent}{-1.25cm}}

% Стили отступов списков
\let\old@itemize\itemize
\let\endold@itemize\enditemize
\renewenvironment{itemize}{
\begin{old@itemize}\addindent}
{
\delindent \end{old@itemize}}

% Стили отступов нумерованных списков, перечислений
\let\old@enumerate\enumerate
\let\endold@enumerate\endenumerate
\renewenvironment{enumerate}{
\begin{old@enumerate}\addindent}
{
\delindent \end{old@enumerate}}

% Стили отступов нумерованных списков, перечислений
\setenumerate{fullwidth, noitemsep, topsep=0mm, partopsep=0mm}
\setenumerate[1]{itemindent=\parindent, listparindent=\parindent}
% FIXME bug: listparindent dones't work
\setenumerate[2]{itemindent=2\parindent} % FIXME отступы не по стандарту

% Стили отступов нумерованных списков, перечислений
\setlist{fullwidth, noitemsep, topsep=0mm, partopsep=0mm, itemindent=\parindent,
    listparindent=\parindent}

% Стили отступов списков % FIXME отступы не по стандарту
\setitemize{fullwidth, noitemsep, topsep=0mm, partopsep=0mm}
\setitemize[1]{itemindent=\parindent, listparindent=\parindent} 
% FIXME bug: listparindent doesn't work
\setitemize[2]{itemindent=2\parindent}

% Стандартная команда item
\let\old@item\item

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Формулы
% Стили описаний переменных в формулах
\def\descrLabel{де~}
\newlength{\descrLabelLen}
\settowidth{\descrLabelLen}{~\descrLabel}

\newcommand{\whereItem}[1][1]{%
{\descrLabel}#1~--%
\renewcommand{\item}[1][1]{\setlength{\parindent}{\oldParindent+\descrLabelLen} \par \indent ##1~--}%
}

\newlength{\oldParindent}

\newenvironment{formulaDescription}
{\renewcommand{\item}[1][1]{\whereItem[##1]} \setlength{\oldParindent}{\parindent}}
{\renewcommand{\item}[1][1]{\old@item[##1]} \setlength{\parindent}{\oldParindent}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Список сокращений

\newenvironment{abbrDescription}
{ 
  \renewcommand{\item}[1][1]{
    \old@item[##1]--
  }
  \begin{enumerate}
} 
{
  \end{enumerate}
  \renewcommand{\item}[1][1]{\old@item[##1]} 
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Перечисления предложениями
\newenvironment{longEnumerate}
{ 
  \liststyleNumberingArabicSpace
  \begin{enumerate}
} 
{
  \end{enumerate}
  \liststyleNumberingArabicLitera
}

% команда, необходимая для гибкости ручного добавления записей в Содержание
\newcommand{\tocsecindent}{\hspace{0mm}} 

% VBOLSHUTKIN: фикс для поддержки русской нумерации в EnumItem
\AddEnumerateCounter{\asbuk}{\@asbuk}{b}
\AddEnumerateCounter{\Asbuk}{\@Asbuk}{B}
\SetEnumerateShortLabel{b}{\asbuk*}
\SetEnumerateShortLabel{B}{\Asbuk*}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Нумерация

% Нумерация таблиц и рисунков в пределах раздела
\@addtoreset{figure}{section}
\@addtoreset{table}{section}
\renewcommand{\thefigure}{%
  \ifnum \c@section>\z@ \thesection.\fi \arabic{figure}}
\renewcommand{\thetable}{%
  \ifnum \c@section>\z@ \thesection.\fi \arabic{table}}
  
% Нумерация формул в пределах раздела
 \@addtoreset{equation}{section}
  \renewcommand{\theequation}{%
    \ifnum \c@section>\z@ \thesection.\fi \arabic{equation}}

% 6.3.2.2
% Перенос формул с дублированием знака
\newcommand*{\hm}[1]{#1\nobreak\discretionary{}%
            {\hbox{\mathsurround=0pt #1}}{}}

% Пропуск строки до и после формул
\let\old@equation\equation
\let\endold@equation\endequation

\renewenvironment{equation}{%
  \skipbeforeformula \old@equation
}{%
  \endold@equation \skipafterformula
}

\renewenvironment{equation*}{%
  \skipbeforeformula \old@equation
}{%
  \nonumber\endold@equation \skipafterformula
}


\renewcommand{\@biblabel}[1]{#1} % Номер в библиографии без []
\renewenvironment{thebibliography}[1] % Отступы в библиографии
{

\section*{\refname}\addcontentsline{toc}{section}{\tocsecindent{\refname}}
%     \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%

%\textstyleBibSubheading{\usedsources}

\liststyleNumberingBibliography
\begin{enumerate}
}
{\end{enumerate}
}


% Стили оформления веб-ссылок
%\let\old@url\url FIXME bug: with \uline links cannot be hyphenated
%\renewcommand{\url}[1]{\uline{\old@url{#1}}}
\def\url@urlstyle{%
  \@ifundefined{selectfont}{\def\UrlFont{\rtm}}{\def\UrlFont{}}
}
\urlstyle{url}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Таблицы
\floatsetup[table]{style=plain,capposition=top,captionskip=0pt}

% столбец C - центрированный с переносом слов
\newcolumntype{C}[1]{>{\centering\arraybackslash} m{#1}}

% стили переноса таблиц 

% Определение команды "Толстая горизонтальная линия"
\def\Hline{\hlineB{3}}

% СТВУЗ ХПІ 3.01-2010 6.3.3.4 - заголовок таблицы отделяем неутолщенной линией
% Для утолщенной линии - \Hline, FIXME - толстая линия вылазит за пределы
% таблицы
\def\headerline{\hline} 

% СТВУЗ ХПІ 3.01-2010 6.3.3.7 - при переносе таблицы можем вместо заголвка
% писать номера колонок

% определение команды для повторения 
% FIXME костыль - другие подходы не подошли, так как раскрывают
% макросы \multicolumn раньше времени
\ExplSyntaxOn
\cs_new_eq:NN \Repeat \prg_replicate:nn
\ExplSyntaxOff

\newcounter{mheadcolnumber}
\newcommand{\tnumberhead}[1]{
% вывод в цикле номеров колнок (например, 1 & 2 & 3)
\multicolumn{1}{|c|}{\setcounter{mheadcolnumber}{1}  1} &
\Repeat{#1-2}{
  \multicolumn{1}{c|}{ \stepcounter{mheadcolnumber} \arabic{mheadcolnumber} } &
}
\multicolumn{1}{c|}{#1}
}

\newcommand{\xtabhead}[3]{
\vspace{14pt} % Пустая строка перед таблицей
\topcaption{#2\vspace{7pt}} % FIXME move cspace to caption in general
\tablefirsthead{
  \hline #3 \\ \headerline }
\tablehead{\multicolumn{#1}{l}%
           {\captionsize{Продовження таблиці \thetable}} \\[7pt]
  \hline #3 \\ \continueheaderline }
\tablelasthead{\multicolumn{#1}{l}%
           {\captionsize{Закінчення таблиці \thetable}} \\[7pt]
  \hline #3 \\ \continueheaderline}
\tabletail{}
\tablelasttail{\hline}
}

% Подход с longtable стабильнее, но не поддерживает обрыв таблицы снизу
\newcommand{\longthead}[3]{
\caption{#2} \\ 
  \hline #3 \\ \hline \tnumberhead{#1} \\ \headerline
\endfirsthead
\multicolumn{#1}{l}%
           {\captionsize{Закінчення таблиці \thetable}} \\
  \hline \tnumberhead{#1} \\ \headerline
\endlasthead
\multicolumn{#1}{l}%
           {\captionsize{Продовження таблиці \thetable}} \\
  \hline \tnumberhead{#1} \\ \headerline
\endhead
}

% Унифицированная вставка таблиц (безобразно но единообразно)
\newenvironment{stdtableshort}[4]{%
  \table[h!]%
  \caption{#3}%
  \tabularx{\textwidth}{#2}%
  \hline #4 \\ \headerline
}{ \endtabularx%
  \endtable%
}

\newenvironment{stdtablelong}[4]{%
  \skipline
  \begin{longtable}{#2}
    \longthead{#1}{#3}{#4}
}{%
  \end{longtable}
% 6.3.3.5 Пропуск строки после таблиц
  \skipline
}

\newenvironment{xlongtable}[4]
{
\thead{#1}{#3}{#4}
\begin{xtabular}{#2}
}
{
\end{xtabular}
% 6.3.3.5 Пропуск строки после таблиц
\skipline
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Окончание определения стилевых команд

% двойные кавычки типа ёлочки и лапки
% может лапки такие “бла”? ,,бла''
\newcounter{edqopen}
\setcounter{edqopen}{1}
\newcounter{ldqopen}
\setcounter{ldqopen}{1}
\newcounter{innerquote}
\setcounter{innerquote}{0}
\newcommand{\oedq}{<<\setcounter{edqopen}{0}\setcounter{innerquote}{1}}
\newcommand{\cedq}{>>\setcounter{edqopen}{1}\setcounter{innerquote}{0}}
\newcommand{\oldq}{“\setcounter{ldqopen}{0}}
\newcommand{\cldq}{”\setcounter{ldqopen}{1}}
\newcommand{\edq}{\ifthenelse{\equal{\arabic{edqopen}}{1}}{\oedq}{\cedq}}
\newcommand{\ldq}{\ifthenelse{\equal{\arabic{ldqopen}}{1}}{\oldq}{\cldq}}
\newcommand{\quot}[1][0]{\ifthenelse{{\equal{\arabic{ldqopen}}{0}}\or
    {\equal{#1}{1}\and\equal{\arabic{innerquote}}{1}}}{\ldq}{\edq}}

%page number for toc
\newcounter{tocpage}
\setcounter{tocpage}{2} %the default

% Умолчания
\liststyleNumberingArabicLitera

\makeatother
