<TeXmacs|2.1.4>

<style|<tuple|book|termes-font|number-long-article|stylefileqft|std-frame|maxima>>

<\body>
  <hlink|GO BACK|../notes.tm>

  <doc-data|<doc-title|<with|color|dark cyan|Note on the theory of regularity
  structures>>>

  <\with|color|dark cyan>
    <chapter|Algebraic renormalisation of regularity
    structures<label|Chap:ar>>
  </with>

  This chapter is taken from the paper [Y. Bruned, M. Hairer, L. Zambotti,
  Invent. Math. 215 (2019), no. 3, 1039\U1156].

  <with|color|dark cyan|<section|Rooted forest><label|Sec:ar.1>>

  <\itemize-dot>
    <item>A rooted tree <math|T> is a finite connected simple graph without
    circles with a distinguished vertex <math|\<varrho\><rsub|T>>, called
    <with|font-shape|italic|the root>. We assume that our trees are
    combinatorial, i.e. there is no particular order imposed on edges leaving
    any given vertex.

    <item>Vertices of <math|T> is also called <with|font-shape|italic|nodes>.
    The set of nodes of the tree <math|T> is denoted by <math|N<rsub|T>>, and
    set of edges the tree <math|T> is denoted by
    <math|E<rsub|T>\<subset\>N<rsup|2><rsub|T>>. We endow <math|N<rsub|T>>
    with the partial order <math|\<leqslant\>> where <math|w\<leqslant\>v>
    iff <math|w> is on the unique path connecting <math|v> to the root, and
    we orient edges in <math|E<rsub|T>> so that if
    <math|<around*|(|x,y|)>=<around*|(|x\<rightarrow\>y|)>\<in\>E<rsub|T>>,
    then <math|x\<leqslant\>y>. In this way, we can always view a tree as a
    directed graph.

    <item>
  </itemize-dot>

  <with|color|dark cyan|<section|Bigraded spaces and triangular
  maps><label|Sec:ar.2>>

  <\with|color|dark cyan>
    \;

    <chapter|Phi-four equation in the full sub-critical
    regime><label|Chap:phi4>
  </with>

  In this chapter, we consider the <math|\<Phi\><rsup|4>> equation in the
  full sub-critical regime. The equation is formally given by

  <\equation*>
    <around*|(|\<partial\><rsub|t>-\<Delta\>|)>\<phi\>=-\<phi\><rsup|3>+\<infty\>\<phi\>+\<xi\>,<space|1em><around*|(|t,x|)>\<in\><around*|(|0,1|)>\<times\><around*|{|<around*|\||x|\|>\<leqslant\>1|}>,
  </equation*>

  where the term <math|+\<infty\>\<phi\>> represents the renormalisation (it
  can be quadratic in <math|\<phi\>>) and the noise
  <math|\<xi\>\<in\>C<rsup|-3+\<delta\>>> for some <math|\<delta\>\<gtr\>0>.
  This chapter is a note taken from the paper [A. Chandra, A. Moinat, H.
  Weber, Arch. Ration. Mech. Anal. 247 (2023), no. 3, Paper No. 48].

  <with|color|dark cyan|<section|Preliminaries>><label|Sec:phi4.1>

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

    <item>Define functions <math|m<rsub|<with|font-series|bold|1>>,m<rsub|\<b-up-X\><rsub|i>>,m<rsub|\<Xi\>>:<with|font|cal|T><rsup|ALL><rsub|RHS>\<longrightarrow\>\<bbb-Z\><rsub|\<geqslant\>0>>
    which counts, on any given tree, the number of occurrences of
    <math|<with|font-series|bold|1>,\<b-up-X\><rsub|i>>, and <math|\<Xi\>> as
    leaves in the tree. Denote also by <math|m<rsub|\<b-up-X\>><around*|(|\<tau\>|)>=<big|sum><rsub|i=1><rsup|d>m<rsub|\<b-up-X\><rsub|i>><around*|(|\<tau\>|)>>.

    <item><math|<around*|\||\<tau\>|\|>=-3+m<rsub|\<Xi\>><around*|(|\<tau\>|)>\<delta\>+m<rsub|<with|font-series|bold|1>><around*|(|\<tau\>|)>+2m<rsub|\<b-up-X\>><around*|(|\<tau\>|)>>.

    <item><math|<with|font|cal|W>=<around*|{|\<tau\>\<in\><with|font|cal|T><rsup|ALL><rsub|RHS>;<around*|\||\<tau\>|\|>\<less\>-2|}>>,
    <math|<with|font|cal|W><rsub|PROD>=<with|font|cal|W>\\<around*|{|\<Xi\>|}>>,
    <math|<with|font|cal|V>=<around*|{|\<tau\>\<in\><with|font|cal|><with|font|cal|T><rsup|ALL><rsub|RHS>;-2\<leqslant\><around*|\||\<tau\>|\|>\<leqslant\>0|}>>,
    <math|<with|font|cal|V><rsub|PROD>=<with|font|cal|V>\\Poly>.

    <item><math|<with|font|cal|T><rsub|RHS>=<with|font|cal|W>\<cup\><with|font|cal|V><rsub|PROD>>,
    <math|<with|font|cal|T><rsub|LHS>=<with|font|cal|I><around*|[|<with|font|cal|T><rsub|RHS>|]>\<cup\><with|font|cal|I><around*|[|Poly|]>.>

    <item><math|<with|font|cal|Q>\<subseteq\><with|font|cal|V><rsub|PROD>\<cup\><with|font|cal|W><rsub|PROD>>
    consists of <math|\<tau\>=<with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>>
    s.t. <math|<around*|{|\<tau\><rsub|1>,\<tau\><rsub|2>,\<tau\><rsub|3>|}>\<cap\><around*|{|\<b-up-X\><rsub|1>,\<cdots\>,\<b-up-X\><rsub|d>|}>=\<varnothing\>>
    and <math|<with|font-series|bold|1>\<in\><around*|{|\<tau\><rsub|1>,\<tau\><rsub|2>,\<tau\><rsub|3>|}>>.

    <item><math|<with|font|cal|V><rsub|\<gtr\>1>=<around*|{|\<tau\>\<in\><with|font|cal|V><rsub|PROD>;-1\<less\><around*|\||\<tau\>|\|>\<less\>0|}>>.

    <item><math|<with|font|cal|T><rsub|\<Delta\>>\<assign\><with|font|cal|T><rsub|RHS>\<cup\><with|font|cal|T><rsub|LHS>\<cup\><around*|{|<with|font|cal|I><rsub|i><rsup|+>;1\<leqslant\>i\<leqslant\>d,\<tau\>\<in\><with|font|cal|V><rsub|\<gtr\>1>\<cup\><around*|{|\<b-up-X\><rsub|i>|}>|}>>.

    <item><math|<with|font|cal|T><rsub|cen>\<assign\><with|font|cal|I><around*|[|<with|font|cal|V>|]>\<cup\><around*|{|<with|font|cal|I><rsub|i><rsup|+><around*|(|\<tau\>|)>;\<tau\>\<in\><with|font|cal|V><rsub|\<gtr\>1>\<cup\><around*|{|\<b-up-X\><rsub|i>|}>,1\<leqslant\>i\<leqslant\>d|}>>.

    <item><math|\<Delta\>:<with|font|cal|T><rsub|\<Delta\>>\<longrightarrow\>Vec<around*|(|<with|font|cal|T><rsub|\<Delta\>>|)>\<otimes\>Alg<around*|(|<with|font|cal|T><rsub|cen>|)>>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<Delta\><with|font|cal|I><around*|(|<with|font-series|bold|1>|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|<with|font-series|bold|1>|)>\<otimes\><with|font|cal|I><around*|(|<with|font-series|bold|1>|)>;>>|<row|<cell|\<Delta\><with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|<with|font-series|bold|1>|)>\<otimes\><with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>+<with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>;>>|<row|<cell|\<Delta\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>>|<cell|=>|<cell|<with|font|cal|I><rsub|i><rsup|+><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>;>>|<row|<cell|\<Delta\>w>|<cell|=>|<cell|w\<otimes\>1,>>|<row|<cell|\<Delta\><with|font|cal|I><around*|(|w|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|w|)>\<otimes\>1,<space|1em>w\<in\><with|font|cal|W>;>>|<row|<cell|\<Delta\><with|font|cal|I><around*|(|\<tau\>|)>>|<cell|=>|<cell|<with|font|cal|I><around*|(|<with|font-series|bold|1>|)>\<otimes\><with|font|cal|I><around*|(|\<tau\>|)>+<with|font|cal|I><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<tau\>|)>+<around*|(|<with|font|cal|I>\<otimes\>Id|)>\<Delta\>\<tau\>,<space|1em>\<tau\>\<in\><with|font|cal|V><rsub|PROD>;>>|<row|<cell|\<Delta\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<tau\>|)>>|<cell|=>|<cell|<with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>\<otimes\><with|font|cal|I><rsup|+><rsub|i><around*|(|\<b-up-X\><rsub|i>|)>+<around*|(|<with|font|cal|I><rsup|+><rsub|i>\<otimes\>Id|)>\<Delta\>\<tau\>,<space|1em>\<tau\>\<in\><with|font|cal|V><rsub|\<gtr\>1>;>>|<row|<cell|\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>|)>>|<cell|=>|<cell|\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|1>|)>|)>\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|2>|)>|)>\<Delta\><around*|(|<with|font|cal|I><around*|(|\<tau\><rsub|3>|)>|)>,<space|1em><with|font|cal|I><around*|(|\<tau\><rsub|1>|)><with|font|cal|I><around*|(|\<tau\><rsub|2>|)><with|font|cal|I><around*|(|\<tau\><rsub|3>|)>\<in\><with|font|cal|V><rsub|PROD>.>>>>
    </eqnarray*>
  </itemize-dot>

  <with|color|dark cyan|<appendix|Basic Hopf algebras><label|Chap:bha>>

  This note is extended from the a course called MAGIC 109 given by Dr Y.
  Bazkov, adding some materials from the following resources:

  <\itemize-dot>
    <item>M. E. Sweedler. <with|font-shape|italic|Hopf algebras>, Math.
    Lecture Note Ser. W. A. Benjamin, Inc., New York, 1969, vii+336 pp.
  </itemize-dot>

  <with|color|dark cyan|<section|Informal introdution>>

  <with|color|dark cyan|<subsection|Example \U Symmetries on the real
  line>><label|Sec:ha.1>

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

  <with|color|dark cyan|<subsection|Hopf algebra \U informal introduction>>

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

  <with|color|dark cyan|<section|Linear algebra>>

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
    <associate|Chap:ar|<tuple|1|?>>
    <associate|Chap:bha|<tuple|A|?>>
    <associate|Chap:phi4|<tuple|2|?>>
    <associate|DS|<tuple|A.1.3|?>>
    <associate|DT|<tuple|A.1.2|?>>
    <associate|S-1S|<tuple|A.1.5|?>>
    <associate|STTS|<tuple|A.1.1|?>>
    <associate|Sec:ar.1|<tuple|1.1|?>>
    <associate|Sec:ar.2|<tuple|1.2|?>>
    <associate|Sec:ha.1|<tuple|A.1.1|?>>
    <associate|Sec:phi4.1|<tuple|2.1|?>>
    <associate|T-1T|<tuple|A.1.4|?>>
    <associate|Tab|<tuple|A.1.6|?>>
    <associate|Tfg|<tuple|A.1.7|?>>
    <associate|auto-1|<tuple|1|7>>
    <associate|auto-10|<tuple|A.2|?>>
    <associate|auto-2|<tuple|1.1|7>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-4|<tuple|2|?>>
    <associate|auto-5|<tuple|2.1|?>>
    <associate|auto-6|<tuple|A|?>>
    <associate|auto-7|<tuple|A.1|?>>
    <associate|auto-8|<tuple|A.1.1|?>>
    <associate|auto-9|<tuple|A.1.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Algebraic
      renormalisation of regularity structures>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Rooted forest <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      1.2<space|2spc>Bigraded spaces and triangular maps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Phi-four
      equation in the full sub-critical regime>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      2.1<space|2spc>Preliminaries <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Basic
      Hopf algebras> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      3.1<space|2spc>Informal introdution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      <with|par-left|<quote|1tab>|3.1.1<space|2spc>Example \U Symmetries on
      the real line <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|3.1.2<space|2spc>Hopf algebra \U informal
      introduction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      3.2<space|2spc>Linear algebra <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>
    </associate>
  </collection>
</auxiliary>