<TeXmacs|2.1.4>

<style|<tuple|generic|termes-font|british>>

<\body>
  <hlink|GO BACK|../notes.tm>

  <doc-data|<doc-title|Note on Hopf Algebra>>

  <\folded>
    \;
  <|folded>
    This note is extended from the a course called MAGIC 109 given by Dr Y.
    Bazkov, adding some materials from the following resources:

    <\itemize-dot>
      <item>M. E. Sweedler. <with|font-shape|italic|Hopf algebras>, Math.
      Lecture Note Ser. W. A. Benjamin, Inc., New York, 1969, vii+336 pp.
    </itemize-dot>
  </folded>

  <section|Informal introdution>

  <subsection|Example \U Symmetries on the real line><label|S:1.1>

  We intend to study the intrinsic geometric property of the real line
  <math|\<bbb-R\>> by looking at how functions on the real line can
  transform. For more algebraic setting, we only consider polynomials over
  real variable. Let us look at the following transforms.

  Given a real number <math|a> and <math|f> is a function on the real line,
  we define the following <with|font-shape|italic|translation by <math|a>>:

  <\equation*>
    <around*|(|T<rsub|a>f|)><around*|(|x|)>=f<around*|(|x-a|)>.
  </equation*>

  Define also the <with|font-shape|italic|reflection>

  <\equation*>
    <around*|(|S f|)><around*|(|x|)>=f<around*|(|-x|)>,
  </equation*>

  and the <with|font-shape|italic|derivative>

  <\equation*>
    <around*|(|D f|)><around*|(|x|)>=f<rprime|'><around*|(|x|)>.
  </equation*>

  The translation, reflection, derivative are not independent from each
  other. In fact, there are some relations:

  <\equation>
    <label|STTS>S T<rsub|a>=T<rsub|-a>S,
  </equation>

  <\equation>
    <label|DT>D T<rsub|a>=T<rsub|a>D,
  </equation>

  <\equation>
    <label|DS>D S=-S D.
  </equation>

  <\render-proof|Proof of <eqref|STTS>>
    <math|S<around*|(|T<rsub|a> f|)><around*|(|x|)>=T<rsub|a>f<around*|(|-x|)>=f<around*|(|-x-a|)>=T<rsub|-a><around*|(|S
    f|)><around*|(|x|)>.>
  </render-proof>

  Also,

  <\equation>
    <label|T-1T>T<rsub|a><rsup|-1>=T<rsub|-a>,
  </equation>

  <\equation>
    <label|S-1S>S<rsup|-1>=S,
  </equation>

  <\equation>
    <label|Tab>T<rsub|a+b>=T<rsub|a>T<rsub|b>
  </equation>

  Now we write down the relation (<reference|STTS>)-(<reference|DT>)-(<reference|DS>)-(<reference|T-1T>)-(<reference|S-1S>)-(<reference|Tab>)
  for <math|T<rsub|a>>, <math|S>, and <math|D>, so these transformations live
  their own lifes without the mention of the functions they act on. But the
  algebraic structure given by (<reference|STTS>)-(<reference|DT>)-(<reference|DS>)-(<reference|T-1T>)-(<reference|S-1S>)-(<reference|Tab>)
  is too \Pblank\Q, it does not contain enough information for us to
  effectively work with these abstract symbols as symmetries of the function
  space on the real line. What is missing here is how the operators
  <math|T<rsub|a>>, <math|S>, and <math|D> behave when we apply them to a
  product of functions. Given functions <math|f> and <math|g>,

  <\equation>
    <label|Tfg>T<rsub|a><around*|(|f\<nosymbol\>\<cdummy\>g|)>=<around*|(|T<rsub|a>f|)><around*|(|T<rsub|a>g|)>.
  </equation>

  To get rid of the mention of <math|f> and <math|g> in (<reference|Tfg>), we
  introduce a new symbolic notation <with|font-shape|italic|coproduct>
  <math|\<Delta\>>, satisfying

  <\equation*>
    \<Delta\>T<rsub|a>=T<rsub|a>\<otimes\>T<rsub|a>.
  </equation*>

  Likewise, we also require

  <\equation*>
    \<Delta\>S=S\<otimes\>S,
  </equation*>

  and the Leibniz rule

  <\equation*>
    \<Delta\>D=D\<otimes\>1+1\<otimes\>D.
  </equation*>

  The meaning of <math|\<Delta\>> will become clear later in this note.

  <subsection|Hopf algebra \U informal introduction>

  A Hopf algebra <math|H>, roughly speeking, is a collection of operators
  which has\ 

  <\itemize-dot>
    <item>rules for multiplication (i.e., how to compose operators);

    <item>rules for coproduct (i.e., how an operator acts on a product of
    functions);

    <item>rules for <with|font-shape|italic|The Antipode> (roughly an
    analogue of inverse in group).
  </itemize-dot>

  In the example we study in Subsection <reference|S:1.1>, we say that the
  operators <math|T<rsub|a>>, <math|S>, and <math|D> generate some Hopf
  algebra. However, these operators are known even from 19 centrary, what is
  the point to rename them? Hopf algebras gain an advantage over groups when
  we need symmetries of a noncommutative space. The noncommuting objects upon
  which we want to act can be thought of as \Pfunctions\Q on a mythical
  \Pquantum group\Q.

  <section|Linear algebra>

  We consider vector space <math|<around*|(|V,+|)>> over field
  <math|\<bbb-C\>> (sometimes we might use <math|\<bbb-R\>> or
  <math|\<bbb-Q\>>). Recall that a linearly independent set
  <math|A\<subset\>V> is such that for any
  <math|a<rsub|1>,\<ldots\>,a<rsub|n>\<in\>A>,
  <math|\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>\<in\>\<bbb-C\>>,
  <math|\<lambda\><rsub|1>a<rsub|1>+\<cdots\>+\<lambda\><rsub|n>a<rsub|n>=0>
  implies <math|\<lambda\><rsub|1>=\<cdots\>=\<lambda\><rsub|n>=0>. Given a
  subset of <math|V>, say <math|A>, the span of <math|A> is defined by
  <math|span<around*|(|A|)>=<around*|{|\<lambda\><rsub|1>a<rsub|1>+\<cdots\>+\<lambda\><rsub|n>a<rsub|n>;n\<geqslant\>0,a<rsub|1>,\<ldots\>,a<rsub|n>\<in\>A,\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>\<in\>\<bbb-C\>|}>>.
  A basis <math|B> of <math|V> is linearly independent subset of <math|A>
  such that <math|span<around*|(|B|)>=V>. By using Zorn's lemma, one can
  prove that every vector space has a basis. All bases of <math|V> are of the
  same cardinality which is denoted by <math|dim <around*|(|V|)>>. \ We can
  also argue that every set is a basis of some vector space. Indeed, let
  <math|X> be a set, and let

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<bbb-C\>X>|<cell|=>|<cell|<around*|{|<text|formal
    linear combinations of elements of >X|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|\<alpha\><rsub|1>x<rsub|1>+\<cdots\>+\<alpha\><rsub|n>x<rsub|n>;n\<geqslant\>0,x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>X,\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<in\>\<bbb-C\>|}>.>>>>
  </eqnarray*>

  Moreover, we can identify <math|x> in <math|X> with an element in
  <math|\<bbb-C\>X>, which is <math|1\<cdummy\>x>, and one can check that
  under this identification the set <math|X> becomes a basis of
  <math|\<bbb-C\>X>. This fits a philosophy we have to adhere in this note:
  everything is vector space; everything map is a linear map.

  It is time to state the first result in this note, a result that we will
  used later.

  <\proposition>
    <dueto|linear extension from basis>Let <math|B> be a basis of vector
    space <math|V>, <math|W> a vector space, and
    <math|\<ell\>:B\<longrightarrow\>W> a function. Then there exists a
    unique linear map <math|<with|font|cal|L>:V\<longrightarrow\>W> such that
    <math|<around*|\<nobracket\>|<with|font|cal|L>|\|><rsub|B>=\<ell\>>.
  </proposition>

  We will need a number of constructions which allows us to create new vector
  spaces from the existing ones. For example, direct product and direct sum
  of vector spaces <math|V<rsub|1>,V<rsub|2>,\<ldots\>> means

  <\equation*>
    <big|prod><rsub|k\<geqslant\>1>V<rsub|k>=<around*|{|<around*|(|v<rsub|1>,v<rsub|2>,\<ldots\>|)>:v<rsub|k>\<in\>V<rsub|k><text|
    for all >k|}>
  </equation*>

  and

  <\equation*>
    <big|oplus><rsub|k\<geqslant\>1>V<rsub|k>=<around*|{|<around*|(|v<rsub|1>,v<rsub|2>,\<ldots\>|)>\<in\><big|prod><rsub|k\<geqslant\>1>V<rsub|k>:v<rsub|k>=0<text|
    for all but finitely many >k|}>
  </equation*>

  respectively. Let us note that for any <math|n>, <math|V<rsub|n>> is a
  subspace of <math|<big|oplus><rsub|k\<geqslant\>1>V<rsub|k>>. Let us also
  remark that direct product and direct sum can be defined for an uncountable
  family of vector spaces. However, we only consider countable familys in
  this note.

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|13>
    <associate|math-font|math-termes>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|DS|<tuple|3|1>>
    <associate|DT|<tuple|2|1>>
    <associate|S-1S|<tuple|5|2>>
    <associate|S:1.1|<tuple|1.1|1>>
    <associate|STTS|<tuple|1|1>>
    <associate|T-1T|<tuple|4|2>>
    <associate|Tab|<tuple|6|2>>
    <associate|Tfg|<tuple|7|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|2|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Informal
      introdution> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Example \U Symmetries on the
      real line <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Hopf algebra \U informal
      introduction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Linear
      algebra> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>