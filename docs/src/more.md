# another chapter

another chapter blah blah

## test inserting tex file

Another tex file can be inserted using _\input_ in _raw_ latex format as follows

```@raw latex
\input{probando.tex}
```

The search directory is the same as the current .md file.

## test inserting figures in pdf using raw latex


including the pdf
```@raw latex
\includegraphics[width=0.5\textwidth]{drawing.pdf}
```

including a pdf_tex

```@raw latex
\def\svgwidth{0.5\textwidth}
\input{drawing.pdf_tex}
```



## test inserting figures in html using raw html

```@raw html
<svg style="display: block; margin: 0 auto;" width="5em" heigth="5em">
	<circle cx="2.5em" cy="2.5em" r="2em" stroke="black" stroke-width=".1em" fill="red" />
</svg>
```
