<TeXmacs|2.1.1>

<style|generic>

<\body>
  <\show-preamble>
    \;
  </show-preamble>

  <\ignore>
    <doc-data|<doc-title|BHPZ renormalisation in regularity structures>>

    A rooted tree <math|T> a finite tree (a finite connected simple graph
    without cycle) with a distinguish node, called root
    <math|\<varrho\><rsub|T>>.

    Denote by <math|N<rsub|T>> the set of nodes of the tree <math|T>, and by
    <math|E<rsub|T>\<subset\>N<rsub|T><rsup|2>> the set of nodes of the tree
    <math|T>.\ 

    Endow <math|N<rsub|T>> with the partial order <math|\<leq\>> where
    <math|w\<leq\>v> if and only if <math|w> is on the unique path connecting
    <math|v> to the root. <math|<around*|(|x,y|)>=<around*|(|x\<rightarrow\>y|)>\<in\>E<rsub|T>>,
    then <math|x\<leq\>y>.

    Given a finite set <math|\<frak-L\>>. A typed tree is
    <math|\<frak-t\>:E<rsub|T>\<rightarrow\>\<frak-L\>>.\ 

    A forest is a finite simple graph (with nodes <math|N<rsub|F>> and edges
    <math|E<rsub|F>>) without cycle. Typed forest.

    Colored forest <math|<around*|(|F,<wide|F|^>:N<rsub|F>\<cup\>E<rsub|F>\<rightarrow\>\<bbb-N\>|)>>
    such that <math|i<around*|(|x,y|)>\<gtr\>0> implies
    <math|i<around*|(|x|)>=i<around*|(|y|)>=i<around*|(|x,y|)>>.

    Denote by <math|<wide|F|^><rsub|i>\<assign\><around*|(|<wide|N|^><rsub|i>,<wide|E|^><rsub|i>|)>>
    for <math|i\<gtr\>0>.\ 

    <math|<wide|E|^><rsub|i>=<wide|F|^><rsup|-1><around*|(|i|)>\<cap\>E<rsub|F>>,
    <math|<wide|N|^><rsub|i>=<wide|F|^><rsup|-1><around*|(|i|)>\<cap\>N<rsub|F>>,
    <math|<wide|E|^>=\<cup\><rsub|i\<gtr\>0><wide|E|^><rsub|i>>.

    Forest product <math|<around*|(|F,<wide|F|^>|)>\<cdummy\><around*|(|G,<wide|G|^>|)>=<around*|(|<around*|(|N<rsub|F>\<sqcup\>N<rsub|G>,E<rsub|F>\<sqcup\>E<rsub|G>|)>,<wide|F|^>+<wide|G|^>|)>.>

    <\definition>
      Denote by <math|\<frak-F\>> the 5-tuple
      <math|<around*|(|F,<wide|F|^>,\<frak-n\>,\<frak-o\>,\<frak-e\>|)>>.

      <\itemize-dot>
        <item><math|\<frak-n\>:N<rsub|F>\<rightarrow\>\<bbb-N\><rsup|d>>;

        <item><math|\<frak-o\>:E<rsub|F>\<rightarrow\>\<bbb-Z\><rsup|d>\<oplus\>\<bbb-Z\><around*|(|\<frak-L\>|)>>;

        <item><math|\<frak-e\>:E<rsub|F>\<setminus\><wide|E|^>\<rightarrow\>\<bbb-N\><rsup|d>>.
      </itemize-dot>
    </definition>

    <section|Bigraded spaces and trianglar maps>

    <\definition>
      For a collection of vector spaces <math|<around*|{|V<rsub|n>;n\<in\>\<bbb-N\><rsup|2>|}>>.

      <\equation*>
        V=<below|\<boxplus\>|n\<in\>\<bbb-N\><rsup|2>>V<rsub|n><space|1em>\<boxplus\>
      </equation*>

      as the space of all formal sums <math|<big|sum><rsub|n\<in\>\<bbb-N\><rsup|2>>v<rsub|n>>
      with <math|v<rsub|n>\<in\>V<rsub|n>> and such that there exists
      <math|k\<in\>\<bbb-N\>> such that <math|v<rsub|n>=0> as soon as
      <math|n<rsub|2>\<gtr\>k>.
    </definition>

    \;

    Given two bigraded spaces <math|V> and <math|W>. Denote by

    <math|<inactive|<big|>>>

    <\equation*>
      V<wide|\<otimes\>|^>W\<assign\><below|<inactive|<big|plus>>|n\<in\>\<bbb-N\><rsup|2>><around*|(|<big|oplus>|)>
    </equation*>

    \;
  </ignore>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|15>
    <associate|page-medium|automatic>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Bigraded
      spaces and trianglar maps> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>