<TeXmacs|2.1.4>

<style|<tuple|book|termes-font|number-long-article|stylefileqft|std-frame|maxima>>

<\body>
  <hlink|GO BACK|../notes.tm>

  <doc-data|<doc-title|<with|color|dark cyan|Note on the theory of regularity
  structures>>>

  <no-indent><with|color|dark cyan|<strong|Notation.>> <with|color|dark
  cyan|<chapter|Phi-four equation in the full sub-critical
  regime><label|Chap:1>>

  In this chapter, we consider the <math|\<Phi\><rsup|4>> equation in the
  full sub-critical regime. The equation is formally given by

  <\equation*>
    <around*|(|\<partial\><rsub|t>-\<Delta\>|)>\<phi\>=-\<phi\><rsup|3>+\<infty\>\<phi\>+\<xi\>,<space|1em><around*|(|t,x|)>\<in\><around*|(|0,1|)>\<times\><around*|{|<around*|\||x|\|>\<leq\>1|}>,
  </equation*>

  where the term <math|+\<infty\>\<phi\>> represents the renormalisation (it
  can be quadratic in <math|\<phi\>>) and the noise
  <math|\<xi\>\<in\>C<rsup|-3+\<delta\>>> for some <math|\<delta\>\<gtr\>0>.
  This chapter is a note taken from the paper [A. Chandra, A. Moinat, H.
  Weber, Arch. Ration. Mech. Anal. 247 (2023), no. 3, Paper No. 48].

  <with|color|dark cyan|<section|Preliminaries>><label|Sec:1.1>

  We introduce the following ingredients.

  <\itemize-dot>
    <item>An operator <math|<with|font|cal|I><around*|(|\<cdummy\>|)>> to
    represent an abstract Duhamel operator for heat equation.

    <item>Let <math|<with|font|cal|T><rsub|RHS><rsup|ALL>> be the smallest
    set containing the symbols <math|<around*|{|<with|font-series|bold|1>,\<b-up-X\><rsub|1>,\<cdots\>,\<b-up-X\><rsub|d>,\<Xi\>|}>>
    s.t. \P<math|\<tau\><rsub|1>,\<tau\><rsub|2>,\<tau\><rsub|3>\<in\><with|font|cal|T><rsup|ALL><rsub|RHS>\<Longrightarrow\><with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>\<in\><with|font|cal|T><rsup|ALL><rsub|RHS>>\Q.

    <item><math|<with|font|cal|T><rsup|ALL><rsub|LHS>\<assign\><with|font|cal|I><around*|[|<with|font|cal|T><rsup|ALL><rsub|RHS>|]>>.
    We use <math|\<sigma\>> to indicate elements in
    <math|<with|font|cal|T><rsup|ALL><rsub|LHS>>. We call the elements in
    <math|<with|font|cal|T><rsup|ALL><rsub|RHS>\<cup\><with|font|cal|T><rsup|ALL><rsub|LHS>>
    trees. In a given tree, <math|<with|font-series|bold|1>,\<b-up-X\><rsub|1>,\<cdots\>,\<b-up-X\><rsub|d>,\<Xi\>>
    occur in that tree are called leaves in the tree.

    <item><math|Poly\<assign\><around*|{|<with|font-series|bold|1>,\<b-up-X\><rsub|1>,\<cdots\>,\<b-up-X\><rsub|d>|}>>.

    <item>Define functions <math|m<rsub|<with|font-series|bold|1>>,m<rsub|\<b-up-X\><rsub|i>>,m<rsub|\<Xi\>>:<with|font|cal|T><rsup|ALL><rsub|RHS>\<longrightarrow\>\<bbb-Z\><rsub|\<geq\>0>>
    which counts, on any given tree, the number of occurrences of
    <math|<with|font-series|bold|1>,\<b-up-X\><rsub|i>>, and <math|\<Xi\>> as
    leaves in the tree. Denote also by <math|m<rsub|\<b-up-X\>><around*|(|\<tau\>|)>=<big|sum><rsub|i=1><rsup|d>m<rsub|\<b-up-X\><rsub|i>><around*|(|\<tau\>|)>>.

    <item><math|<around*|\||\<tau\>|\|>=-3+m<rsub|\<Xi\>><around*|(|\<tau\>|)>\<delta\>+m<rsub|<with|font-series|bold|1>><around*|(|\<tau\>|)>+2m<rsub|\<b-up-X\>><around*|(|\<tau\>|)>>.

    <item><math|<with|font|cal|W>=<around*|{|\<tau\>\<in\><with|font|cal|T><rsup|ALL><rsub|RHS>;<around*|\||\<tau\>|\|>\<less\>-2|}>>,
    <math|<with|font|cal|W><rsub|PROD>=<with|font|cal|W>\\<around*|{|\<Xi\>|}>>,
    <math|<with|font|cal|V>=<around*|{|\<tau\>\<in\><with|font|cal|><with|font|cal|T><rsup|ALL><rsub|RHS>;-2\<leq\><around*|\||\<tau\>|\|>\<leq\>0|}>>,
    <math|<with|font|cal|V><rsub|PROD>=<with|font|cal|V>\\Poly>.

    <item><math|<with|font|cal|T><rsub|RHS>=<with|font|cal|W>\<cup\><with|font|cal|V><rsub|PROD>>,
    <math|<with|font|cal|T><rsub|LHS>=<with|font|cal|I><around*|[|<with|font|cal|T><rsub|RHS>|]>\<cup\><with|font|cal|I><around*|[|Poly|]>.>

    <item><math|<with|font|cal|Q>\<subseteq\><with|font|cal|V><rsub|PROD>\<cup\><with|font|cal|W><rsub|PROD>>
    consists of <math|\<tau\>=<with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>>
    s.t. <math|<around*|{|\<tau\><rsub|1>,\<tau\><rsub|2>,\<tau\><rsub|3>|}>\<cap\><around*|{|\<b-up-X\><rsub|1>,\<cdots\>,\<b-up-X\><rsub|d>|}>=\<varnothing\>>
    and <math|<with|font-series|bold|1>\<in\><around*|{|\<tau\><rsub|1>,\<tau\><rsub|2>,\<tau\><rsub|3>|}>>.

    <item><math|<with|font|cal|V><rsub|\<gtr\>1>=<around*|{|\<tau\>\<in\><with|font|cal|V><rsub|PROD>;-1\<less\><around*|\||\<tau\>|\|>\<less\>0|}>>.

    <item><math|<with|font|cal|T><rsub|\<Delta\>>\<assign\><with|font|cal|T><rsub|RHS>\<cup\><with|font|cal|T><rsub|LHS>\<cup\><around*|{|<with|font|cal|I><rsub|i><rsup|+>;1\<leq\>i\<leq\>d,\<tau\>\<in\><with|font|cal|V><rsub|\<gtr\>1>\<cup\><around*|{|\<b-up-X\><rsub|i>|}>|}>>.

    <item><math|<with|font|cal|T><rsub|cen>\<assign\><with|font|cal|I><around*|[|<with|font|cal|V>|]>\<cup\><around*|{|<with|font|cal|I><rsub|i><rsup|+><around*|(|\<tau\>|)>;\<tau\>\<in\><with|font|cal|V><rsub|\<gtr\>1>\<cup\><around*|{|\<b-up-X\><rsub|i>|}>,1\<leq\>i\<leq\>d|}>>.

    <item><math|\<Delta\>:<with|font|cal|T><rsub|\<Delta\>>\<longrightarrow\>Vec<around*|(|<with|font|cal|T><rsub|\<Delta\>>|)>\<otimes\>Alg<around*|(|<with|font|cal|T><rsub|cen>|)>>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<Delta\><with|font|cal|I><around*|(|<with|font-series|bold|1>|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|<with|font-series|bold|1>|)>\<otimes\><with|font|cal|I><around*|(|<with|font-series|bold|1>|)>;>>|<row|<cell|\<Delta\><with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|<with|font-series|bold|1>|)>\<otimes\><with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>+<with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>;>>|<row|<cell|\<Delta\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>>|<cell|=>|<cell|<with|font|cal|I><rsub|i><rsup|+><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>;>>|<row|<cell|\<Delta\>w>|<cell|=>|<cell|w\<otimes\>1,>>|<row|<cell|\<Delta\><with|font|cal|I><around*|(|w|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|w|)>\<otimes\>1,<space|1em>w\<in\><with|font|cal|W>;>>|<row|<cell|\<Delta\><with|font|cal|I><around*|(|\<tau\>|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|<with|font-series|bold|1>|)>\<otimes\><with|font|cal|I><around*|(|\<tau\>|)>+<with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<tau\>|)>+<around*|(|<with|font|cal|I>\<otimes\>Id|)>\<Delta\>\<tau\>,<space|1em>\<tau\>\<in\><with|font|cal|V><rsub|PROD>;>>|<row|<cell|\<Delta\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<tau\>|)>>|<cell|=>|<cell|<with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>+<around*|(|<with|font|cal|I><rsup|+><rsub|i>\<otimes\>Id|)>\<Delta\>\<tau\>,<space|1em>\<tau\>\<in\><with|font|cal|V><rsub|\<gtr\>1>;>>|<row|<cell|\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>|)>>|<cell|=>|<cell|\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|1>|)>|)>\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|2>|)>|)>\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|3>|)>|)>,<space|1em><with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>\<in\><with|font|cal|V><rsub|PROD>.>>>>
    </eqnarray*>
  </itemize-dot>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|math-font|math-termes>
    <associate|page-medium|automatic>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Chap:1|<tuple|1|?>>
    <associate|Sec:1.1|<tuple|1.1|?>>
    <associate|auto-1|<tuple|1|7>>
    <associate|auto-2|<tuple|1.1|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Phi-four
      equation in the full sub-critical regime>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Preliminaries <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>
    </associate>
  </collection>
</auxiliary>