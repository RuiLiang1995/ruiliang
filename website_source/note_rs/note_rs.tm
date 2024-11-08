<TeXmacs|2.1.1>

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

  <with|color|dark cyan|<section|Preliminaries>><label|Sec:1.1>

  We introduce following ingredients.

  <\itemize-dot>
    <item>An operator <math|<with|font|cal|I><around*|(|\<cdummy\>|)>> to
    represent an abstract Duhamel operator for heat equation.

    <item>Let <math|<with|font|cal|T><rsub|RHS><rsup|ALL>> be the smallest
    set containing the symbols <math|<around*|{|<with|font-series|bold|1>,\<b-up-X\><rsub|1>,\<cdots\>,\<b-up-X\><rsub|d>,\<Xi\>|}>>
    s.t. \P<math|\<tau\><rsub|1>,\<tau\><rsub|2>,\<tau\><rsub|3>\<in\><with|font|cal|T><rsup|ALL><rsub|RHS>\<Longrightarrow\><with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>\<in\><with|font|cal|T><rsup|ALL><rsub|RHS>>\Q.

    <item><math|<with|font|cal|T><rsup|ALL><rsub|LHS>\<assign\><with|font|cal|I><around*|[|<with|font|cal|T><rsup|ALL><rsub|RHS>|]>>.
  </itemize-dot>
</body>

<\initial>
  <\collection>
    <associate|math-font|math-termes>
    <associate|page-medium|automatic>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|2.2.10|<tuple|1.2.10|9>>
    <associate|2.2.11|<tuple|1.2.11|9>>
    <associate|2.2.14|<tuple|1.2.14|10>>
    <associate|2.2.15|<tuple|1.2.15|10>>
    <associate|2.2.16|<tuple|1.2.16|10>>
    <associate|2.2.18|<tuple|1.2.18|10>>
    <associate|2.2.19|<tuple|1.2.19|10>>
    <associate|2.2.20|<tuple|1.2.20|10>>
    <associate|2.2.21|<tuple|1.2.21|10>>
    <associate|2.2.22|<tuple|1.2.22|11>>
    <associate|2.2.23|<tuple|1.2.23|11>>
    <associate|2.2.24|<tuple|1.2.24|11>>
    <associate|2.2.26|<tuple|1.2.26|11>>
    <associate|2.2.6|<tuple|1.2.6|9>>
    <associate|2.3.10|<tuple|1.3.10|12>>
    <associate|2.3.11|<tuple|1.3.11|12>>
    <associate|2.3.13|<tuple|1.3.13|13>>
    <associate|2.3.2|<tuple|1.3.2|11>>
    <associate|2.3.4|<tuple|1.3.4|12>>
    <associate|2.3.5|<tuple|1.3.5|12>>
    <associate|2.3.6|<tuple|1.3.6|12>>
    <associate|2.3.7|<tuple|1.3.7|12>>
    <associate|2.3.8|<tuple|1.3.8|12>>
    <associate|2.3.9|<tuple|1.3.9|12>>
    <associate|2.4.1|<tuple|1.4.1|13>>
    <associate|2.4.12|<tuple|1.4.12|15>>
    <associate|2.4.13|<tuple|1.4.13|15>>
    <associate|2.4.14|<tuple|1.4.14|15>>
    <associate|2.4.15|<tuple|1.4.15|?>>
    <associate|2.4.17|<tuple|1.4.17|?>>
    <associate|2.4.18|<tuple|1.4.18|15>>
    <associate|2.4.22|<tuple|1.4.22|?>>
    <associate|2.4.24|<tuple|1.4.24|15>>
    <associate|2.4.26|<tuple|1.4.26|15>>
    <associate|2.4.3|<tuple|1.4.3|14>>
    <associate|2.4.8|<tuple|1.4.8|14>>
    <associate|2.4.9|<tuple|1.4.9|14>>
    <associate|2.5.1|<tuple|1.5.1|16>>
    <associate|2.5.10|<tuple|1.5.10|18>>
    <associate|2.5.11|<tuple|1.5.11|18>>
    <associate|2.5.12|<tuple|1.5.12|18>>
    <associate|2.5.3|<tuple|1.5.3|17>>
    <associate|2.5.5|<tuple|1.5.5|17>>
    <associate|2.5.6|<tuple|1.5.6|17>>
    <associate|2.5.7|<tuple|1.5.7|17>>
    <associate|2.5.8|<tuple|1.5.8|17>>
    <associate|Chap:1|<tuple|1|?>>
    <associate|Chap:2|<tuple|1|7>>
    <associate|Sec:1.1|<tuple|1.1|?>>
    <associate|Sec:2.1|<tuple|1.1|7>>
    <associate|Sec:2.2|<tuple|1.2|8>>
    <associate|Sec:2.3|<tuple|1.3|11>>
    <associate|Sec:2.4|<tuple|1.4|13>>
    <associate|Sec:2.5|<tuple|1.5|16>>
    <associate|Tab:2.1|<tuple|1.5.1|18>>
    <associate|auto-1|<tuple|1|7>>
    <associate|auto-2|<tuple|1.1|7>>
    <associate|auto-3|<tuple|1.2|8>>
    <associate|auto-4|<tuple|1.3|11>>
    <associate|auto-5|<tuple|1.4|13>>
    <associate|auto-6|<tuple|1.5|16>>
    <associate|auto-7|<tuple|1.5.1|18>>
    <associate|auto-8|<tuple|1.5.1|20>>
    <associate|auto-9|<tuple|1.5.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1.5.1>|>
        \ Standard four-momenta and their associated little groups for
        different categories of four-momenta are discussed. In this context,
        <with|mode|<quote|math>|\<kappa\>> represents an arbitrary positive
        energy, for instance, 1 eV. The little groups are generally
        straightforward to understand: <with|mode|<quote|math>|S
        O<around*|(|3|)>> is the regular three-dimensional rotation group
        that comprises Lorentz transformations which keep a zero-momentum
        particle stationary. Meanwhile, <with|mode|<quote|math>|S
        O<around*|(|2,1|)>> and <with|mode|<quote|math>|S O<around*|(|3,1|)>>
        are Lorentz groups in (2+1)-dimensions and (3+1)-dimensions,
        respectively. The group <with|mode|<quote|math>|I S O<around*|(|2|)>>
        is the set of transformations in Euclidean geometry, which includes
        both rotations and translations in two dimensions. Its role as the
        little group for cases where <with|mode|<quote|math>|p<rsup|2>=0>
        will be elaborated on later.
      </surround>|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Relativistic
      Quantum Mechanics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Quantum Mechanics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      1.2<space|2spc>Symmetries <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      1.3<space|2spc>Quantum Lorentz Transformations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      1.4<space|2spc>The Poincaré Algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      1.5<space|2spc>One-Particle States <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      <with|par-left|<quote|1tab>|1.5.1<space|2spc>Mass Positive-Definite
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.5.2<space|2spc>Mass Zero
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>