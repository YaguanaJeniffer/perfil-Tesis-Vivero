\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{perfil}
\LoadClass[12pt]{article}


%No hyphenation
\hyphenpenalty=10000
\exhyphenpenalty=10000
\sloppy % Makes TeX obey margins by stretching inter word spaces

%No indent
\setlength{\parindent}{0pt}

%Ecuqtion environment
\RequirePackage{amsmath}

%Functions with key=val paramaters
\RequirePackage{keyval}

%No move figueres
\RequirePackage{graphicx}
\RequirePackage{wrapfig}

% Square bullets
\RequirePackage{enumitem}
\setlist[itemize]{label=\rule[0.5ex]{0.6ex}{0.6ex}}

%Landscape sometimes
\RequirePackage{pdflscape}

\RequirePackage[table]{xcolor}

%Multi-line comments as enviroments
\RequirePackage{comment}

%Referencias cruzadas
\RequirePackage{hyperref}
\RequirePackage[nameinlink]{cleveref}

%Longtables with footnotes and titles and refs
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage[online]{threeparttable}
\RequirePackage{threeparttablex}
\RequirePackage{footnote}
\RequirePackage{multirow}
%Change "Table" to "Tabla" in crossreferences
\crefname{table}{Tabla}{Tablas}

%Espaciado 1.5 puntos
\RequirePackage[onehalfspacing]{setspace}


%Márgenes: superior 3cm, inferior 2.5 cm, derecha 2.5 cm, izquierda 4 cm.
%Hoja A4
\RequirePackage[a4paper]{geometry}
\geometry{
	top={30mm},
	bottom={25mm},
	right={25mm},
	left={40mm},
}

%Subtítulos: Sólo con mayúscula la letra inicial, negrillas, sin punto final
\RequirePackage{titlesec}
\titleformat{\section}[block]{\normalfont\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}[block]{\normalfont\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}[block]{\normalfont\bfseries}{\thesubsubsection}{1em}{}

%Citas
\RequirePackage{cite}

%Remove bibliography refname
\RequirePackage{etoolbox}
\patchcmd{\thebibliography}{\section*{\refname}}{}{}{}


%Enviroment nohyphens
\newenvironment{nohyphens}{%
	\par
	\hyphenpenalty=10000
	\exhyphenpenalty=10000
	\sloppy % Makes TeX obey margins by stretching inter word spaces
}

%Rename tables and figures caption
\renewcommand{\figurename}{Figura}
\renewcommand{\tablename}{Tabla}

%Rename toc, lof, lot
\renewcommand{\contentsname}{\hfill\bfseries\uppercase{Índice de contenidos}\hfill}
\renewcommand{\listfigurename}{\hfill\bfseries\uppercase{Índice de figuras}\hfill}
\renewcommand{\listtablename}{\hfill\bfseries\uppercase{Índice de tablas}\hfill}

%Grapichs with tikz
\RequirePackage{array}
\RequirePackage{tikz}
\usetikzlibrary{shapes.multipart}
\usetikzlibrary{arrows.meta}
\usetikzlibrary{positioning}
\usetikzlibrary{shadows}
\usetikzlibrary{calc}


%Arrow types declarations
\makeatletter
\pgfarrowsdeclare{crow's foot}{crow's foot}
{
	\pgfarrowsleftextend{+-.5\pgflinewidth}%
	\pgfarrowsrightextend{+.5\pgflinewidth}%
}
{
	\pgfutil@tempdima=0.6pt%
	\pgfsetdash{}{+0pt}%
	\pgfsetmiterjoin%
	\pgfpathmoveto{\pgfqpoint{0pt}{-9\pgfutil@tempdima}}%
	\pgfpathlineto{\pgfqpoint{-13\pgfutil@tempdima}{0pt}}%
	\pgfpathlineto{\pgfqpoint{0pt}{9\pgfutil@tempdima}}%
	\pgfpathmoveto{\pgfqpoint{0\pgfutil@tempdima}{0\pgfutil@tempdima}}%
	\pgfpathmoveto{\pgfqpoint{-8pt}{-6pt}}% 
	\pgfpathlineto{\pgfqpoint{-8pt}{-6pt}}%  
	\pgfpathlineto{\pgfqpoint{-8pt}{6pt}}% 
	\pgfusepathqstroke%
}

\pgfarrowsdeclare{omany}{omany}
{
	\pgfarrowsleftextend{+-.5\pgflinewidth}%
	\pgfarrowsrightextend{+.5\pgflinewidth}%
}
{
	\pgfutil@tempdima=0.6pt%
	\pgfsetdash{}{+0pt}%
	\pgfsetmiterjoin%
	\pgfpathmoveto{\pgfqpoint{0pt}{-9\pgfutil@tempdima}}%
	\pgfpathlineto{\pgfqpoint{-13\pgfutil@tempdima}{0pt}}%
	\pgfpathlineto{\pgfqpoint{0pt}{9\pgfutil@tempdima}}%
	\pgfpathmoveto{\pgfqpoint{0\pgfutil@tempdima}{0\pgfutil@tempdima}}%  
	\pgfpathmoveto{\pgfqpoint{0\pgfutil@tempdima}{0\pgfutil@tempdima}}%
	\pgfpathmoveto{\pgfqpoint{-6pt}{-6pt}}% 
	\pgfusepathqstroke%
	\pgfsetfillcolor{white}
	\pgfpathcircle{\pgfpoint{-11.5pt}{0}} {3.5pt}
	\pgfusepathqfillstroke%
}

\pgfarrowsdeclare{one}{one}
{
	\pgfarrowsleftextend{+-.5\pgflinewidth}%
	\pgfarrowsrightextend{+.5\pgflinewidth}%
}
{
	\pgfutil@tempdima=0.6pt%
	\pgfsetdash{}{+0pt}%
	\pgfsetmiterjoin%
	\pgfpathmoveto{\pgfqpoint{0\pgfutil@tempdima}{0\pgfutil@tempdima}}%
	\pgfpathmoveto{\pgfqpoint{-6pt}{-6pt}}% 
	\pgfpathlineto{\pgfqpoint{-6pt}{-6pt}}%  
	\pgfpathlineto{\pgfqpoint{-6pt}{6pt}}% 
	\pgfpathmoveto{\pgfqpoint{0\pgfutil@tempdima}{0\pgfutil@tempdima}}%
	\pgfpathmoveto{\pgfqpoint{-8pt}{-6pt}}% 
	\pgfpathlineto{\pgfqpoint{-8pt}{-6pt}}%  
	\pgfpathlineto{\pgfqpoint{-8pt}{6pt}}%    
	\pgfusepathqstroke%
}



\pgfarrowsdeclare{oone}{oone}
{
	\pgfarrowsleftextend{+-.5\pgflinewidth}%
	\pgfarrowsrightextend{+.5\pgflinewidth}%
}
{
	\pgfutil@tempdima=0.6pt%
	%\advance\pgfutil@tempdima by.25\pgflinewidth%
	\pgfsetdash{}{+0pt}%
	\pgfsetmiterjoin%
	\pgfpathmoveto{\pgfqpoint{0\pgfutil@tempdima}{0\pgfutil@tempdima}}%
	\pgfpathmoveto{\pgfqpoint{-4pt}{-6pt}}% 
	\pgfpathlineto{\pgfqpoint{-4pt}{-6pt}}%  
	\pgfpathlineto{\pgfqpoint{-4pt}{6pt}}% 
	\pgfsetfillcolor{white}
	\pgfpathcircle{\pgfpoint{-11.5pt}{0}} {3.5pt}
	\pgfusepathqfillstroke%
}
\makeatother

%Tikz styles
\tikzset{%
mylabel/.style={font=\footnotesize},
pics/entity/.style n args={3}{code={%
				\node[draw, rectangle split, rectangle split parts=2, text height=1.5ex, minimum width = 8em, text centered ] (#1)
				{#2 \nodepart[align=left, font=\scriptsize]{second}
					\begin{tabular}{ l | l }
						#3
					\end{tabular}
				};%
			}},
pics/class_entity/.style n args={4}{code={%
				\node[draw,
					rectangle split,
					rectangle split parts=3,
					text height=1.5ex,
				] (#2)
				{{\bfseries #2}
					\nodepart{second}
					\begin{tabular}{>{\raggedright\arraybackslash}p{#1}}
						#3
					\end{tabular}
					\nodepart{third}
					\begin{tabular}{>{\raggedright\arraybackslash}p{#1}}
						#4
					\end{tabular}
				};%
			}},
pics/entitynoatt/.style n args={2}{code={%
				\node[draw,
					text height=1.5ex,
					text width=8.5em,
					text centered
				] (#1)
				{#2};%
			}},
association/.style={
		-
	},
inheritance/.style={
-{Triangle[open, scale=2]}
},
realization/.style={
dashed, -{Triangle[open, scale=2]}
},
dependency/.style={
dashed, -{Straight Barb[scale=2]}
},
aggregation/.style={
		{Diamond[open, scale=2]}-
	},
composition/.style={
		{Diamond[scale=2]}-
	},
zig zag to/.style={
		to path={(\tikztostart) -| ($(\tikztostart)!#1!(\tikztotarget)$) |- (\tikztotarget)}
	},
zig zag to/.default=0.5,
one to one/.style={
		one-one, zig zag to
	},
one to oone/.style={% One to Optional-one
		one-oone, zig zag to
	},
oone to none/.style={% Optional-one to none
		oone-, zig zag to
	},
oone to oone/.style={% Optional one to Optional-one
		oone-oone, zig zag to
	},
one to many/.style={
		one-crow's foot, zig zag to,
	},
one to omany/.style={
		one-omany, zig zag to
	},
one to none/.style={
		one-, zig zag to
	},
}


\RequirePackage{pgfkeys}
\pgfkeys{
	/story/.is family, /story,
	default/.style = {
			leyenda = Leyenda,
			numero = (Identificador de la
			Historia de Usuario).,
			usuario = (Persona a cargo).,
			nombre =  (Nombre general asignado a la historia de usuario).,
			prioridad = {(Nivel de
					importancia: Baja, Media, Alta).},
			riesgo = {(Nivel de riesgo
					que representa: Baja, Media, Alta).},
			puntos = (Días
			estimados asignados para el
			desarrollo).,
			iteracion = (Número de
			iteración asignada).,
			descripcion = {Se debe identificar las entidades y campos correspondientes para
					la base de datos.},
			observaciones = {Se debe identificar sus respectivas claves primarias y claves
					foráneas en las tablas}
		},
	leyenda/.estore in = \leyenda,
	etiqueta/.estore in = \etiqueta,
	numero/.estore in = \numero,
	usuario/.estore in = \usuario,
	nombre/.estore in = \nombre,
	prioridad/.estore in = \prioridad,
	riesgo/.estore in = \riesgo,
	puntos/.estore in = \puntos,
	iteracion/.estore in = \iteracion,
	descripcion/.estore in = \descripcion,
	observaciones/.estore in = \observaciones,
}
\newcommand{\story}[1]{
	\pgfkeys{/story, default, #1}%
	\begin{ThreePartTable}
		\begin{TableNotes}[flushleft]
			\centering
			\item Elaborado por: el investigador
		\end{TableNotes}
		\begin{longtable}{ | p{0.38\textwidth} | p{0.52\textwidth} |}
			\caption{\leyenda}
			\label{\etiqueta}                                                                  \\
			\hline
			\multicolumn{2}{|c|}{\textbf{Historia de Usuario}}                                 \\
			\hline
			\textbf{N\'umero: }\numero                & \textbf{Usuario: }\usuario             \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Nombre de la historia: }\nombre}                      \\
			\hline
			\textbf{Prioridad en negocio: }\prioridad & \textbf{Riesgo de desarrollo: }\riesgo \\
			\hline
			\textbf{Puntos estimados: }\puntos        & \textbf{Iteraci\'on asignada:
			}\iteracion                                                                        \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Programador responsable: } Richard Carri\'on}         \\
			\hline
			\multicolumn{2}{|p{0.9\textwidth}|}{\textbf{Descripci\'on: }\descripcion}          \\
			\hline
			\multicolumn{2}{|p{0.9\textwidth}|}{\textbf{Observaciones: }\observaciones}        \\
			\hline
			\insertTableNotes
		\end{longtable}
	\end{ThreePartTable}
}


