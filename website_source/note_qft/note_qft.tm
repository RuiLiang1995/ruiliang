<TeXmacs|2.1.1>

<style|<tuple|book|termes-font|number-long-article|stylefileqft|std-frame|maxima>>

<\body>
  <hlink|GO BACK|../notes.tm>

  <doc-data|<doc-title|<with|color|dark cyan|Note on Weinberg's textbooks on
  QFT>>>

  <no-indent><with|color|dark cyan|<strong|Notation.>> The Latin indices such
  as <math|i>, <math|j>, <math|k>, etc., typically span the three spatial
  coordinate labels, commonly denoted as 1, 2, 3. On the other hand, Greek
  indices like <math|\<mu\>>, <math|\<nu\>>, and so forth, usually range over
  the four spacetime coordinate labels, specifically 1, 2, 3, 0, where
  <math|x<rsup|0>> represents the time coordinate. Indices that appear twice
  are usually summed unless specified otherwise. The spacetime metric,
  denoted by <math|\<eta\><rsub|\<mu\>\<nu\>>>, is a diagonal matrix with
  elements <math|\<eta\><rsub|11>=\<eta\><rsub|22>=\<eta\><rsub|33>=1> and
  <math|\<eta\><rsub|00>=-1>. The d'Alembertian is represented as
  <math|\<box\>> and defined by the equation
  <math|\<box\>\<equiv\>\<eta\><rsup|\<mu\>\<nu\>><frac|\<partial\>|\<partial\>x<rsup|\<mu\>>><frac|\<partial\>|\<partial\>x<rsup|\<nu\>>>=\<nabla\><rsup|2>-<frac|\<partial\><rsup|2>|\<partial\>t<rsup|2>>>,
  where <math|\<nabla\><rsup|2>> is the Laplacian given by
  <math|<frac|\<partial\><rsup|2>|\<partial\>x<rsup|i>\<partial\>x<rsup|i>>>.
  The \<#2018\> Levi-Civita tensor,\<#2019\> symbolized by
  <math|\<epsilon\><rsup|\<mu\>\<nu\>\<rho\>\<sigma\>>>, is an entirely
  antisymmetric entity with <math|\<epsilon\><rsup|0123>=+1>. Spatial vectors
  in three dimensions are marked by boldface characters. A unit vector
  corresponding to any vector is shown with a hat, as in
  <math|<wide|\<b-up-v\>|^>\<equiv\>\<b-up-v\>/<around*|\||\<b-up-v\>|\|>>. A
  dot over a variable signifies its time derivative. The Dirac matrices
  <math|\<gamma\><rsub|\<mu\>>> adhere to
  <math|\<gamma\><rsub|\<mu\>>\<gamma\><rsub|\<nu\>>+\<gamma\><rsub|\<nu\>>\<gamma\><rsub|\<mu\>>=2\<eta\><rsub|\<mu\>\<nu\>>>,
  and <math|\<gamma\><rsub|5>=i\<gamma\><rsub|0>\<gamma\><rsub|1>\<gamma\><rsub|2>\<gamma\><rsub|3>>,
  while <math|\<beta\>=i\<gamma\><rsup|0>>. The step function
  <math|\<theta\><around*|(|s|)>> yields a value of +1 when <math|s\<gtr\>0>
  and 0 when <math|s\<less\>0>. For a matrix or vector <math|A>, the complex
  conjugate, transpose, and Hermitian adjoint are represented by
  <math|A<rsup|\<ast\>>>, <math|A<rsup|\<top\>>>, and
  <math|A<rsup|\<dag\>>=A<rsup|\<ast\>\<top\>>> respectively. The Hermitian
  adjoint of an operator <math|O> is marked as <math|O<rsup|\<dag\>>>, except
  when an asterisk emphasizes that a vector or matrix of operators is not
  transposed. Terms like +H.c. or +c.c. appended to equations indicate the
  addition of the Hermitian adjoint or complex conjugate of preceding terms.
  A Dirac spinor <math|u> with a bar over it is defined as
  <math|<wide|u|\<bar\>>=u<rsup|\<dag\>>\<beta\>>. Apart from in Chapter
  <reference|Chap:1>, units are normalized such that <math|\<hbar\>> and the
  speed of light are set to one. The fine structure constant is represented
  as <math|\<alpha\>>, calculated as <math|e<rsup|2>/4\<pi\>>, approximately
  <math|1/137>, where <math|-e> is the rationalized charge of the electron.
  Parenthetical numbers next to quoted numerical figures signify the
  uncertainty in the last digits. Unless otherwise stated, experimental data
  is sourced from \<#2018\>Review of Particle Properties,\<#2019\> Phys. Rev.
  D50, 1173 (1994).<with|color|dark cyan|<chapter|Relativistic Quantum
  Mechanics><label|Chap:2>>

  The perspective presented argues that quantum field theory exists in its
  current form due to its unique capability to harmonize quantum mechanics
  with special relativity, under some conditions. Our initial endeavor is to
  explore how symmetries, such as Lorentz invariance, manifest within a
  quantum context in the following aspects.

  <\equation*>
    <with|ornament-shape|rounded|<decorated|<tree|<tree|<decorated|<tabular*|<tformat|<cwith|1|1|2|2|cell-valign|c>|<table|<row|<cell|<decorated|<tree|<decorated|<text|Quantum
    mechanics>>|<tree|<decorated|<text|Symmetry>>|<tree|<decorated|<tabular*|<tformat|<table|<row|<cell|<text|<tformat|<cwith|1|1|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-halign|c>|<table|<row|<cell|The
    fundamental theorem of Wigner>>|<row|<cell|(the symmetry representation
    theorem)>>>>>>>>>>>|<tree|<decorated|<text|Projective
    representations>>|<tree|<decorated|<text|Universal covering
    space>>|<decorated|<text|Ordinary representations>>>>>>>>>|<cell|<decorated|<tree|<decorated|<text|Special
    relativity>>|<text|><decorated|<text|Poincaré
    algebra>>>>>>>>>>|<tree|<decorated|<text|Hilbert space as representation
    space of the Poincaré group>>|<tree|<decorated|<text|How Poincaré group
    acts on the one particle states>>|<decorated|<text|Irreducible
    representations of the Poincaré group>>>>>|<decorated|<text|Particle>>>>>
  </equation*>

  <with|color|dark cyan|<section|Quantum Mechanics>><label|Sec:2.1>

  Quantum field theory rests on the same foundational quantum mechanics
  developed by Schrödinger, Heisenberg, Pauli, Born, and other pioneers in
  1925\U1926.\ 

  \;

  <\enumerate-roman>
    <item>Physical states are represented by rays in complex Hilbert space
    (the inner product is denoted be <math|<around*|(|\<cdummy\>,\<cdummy\>|)>>
    with the first slot antilinear (conjugate-linear) and the second slot
    linear). Here, a \ <with|font-shape|italic|ray> is a set of normalized
    vectors (i.e. <math|<around*|(|\<Psi\>,\<Psi\>|)>=1>) with <math|\<Psi\>>
    and <math|\<Psi\><rprime|'>> belonging to the same ray if
    <math|\<Psi\><rprime|'>=\<xi\>\<Psi\>>, where <math|\<xi\>> is an
    arbitrary complex number with <math|<around*|\||\<xi\>|\|>=1>.

    <item>Observables are represented by Hermitian operators. A state
    represented by a ray <math|\<cal-R\>> has a definite value
    <math|\<alpha\>> for the observable represented by an operator <math|A>
    if vectors <math|\<Psi\>> belonging to this ray are eigenvectors of
    <math|A> with eigenvalue <math|\<alpha\>>:

    <\equation*>
      A\<Psi\>=\<alpha\>\<Psi\><space|1em><text|for >\<Psi\><text| in
      >\<cal-R\>.
    </equation*>

    <item>If a system is in a state represented by a ray <math|\<cal-R\>>,
    and an experiment is done to test whether it is in any one of the
    different states represented by mutually orthogonal rays
    <math|\<cal-R\><rsub|1>,\<cal-R\><rsub|2>,\<ldots\>> (for instance, by
    measuring one or more observables) then the probability of finding it in
    the state represented by <math|\<cal-R\><rsub|n>> is

    <\equation*>
      P<around*|(|\<cal-R\>\<rightarrow\>\<cal-R\><rsub|n>|)>=<around*|\||<around*|(|\<Psi\>,\<Psi\><rsub|n>|)>|\|><rsup|2>,
    </equation*>

    where <math|\<Psi\>> and <math|\<Psi\><rsub|n>> are any vectors belongs
    to rays <math|\<cal-R\>> and <math|\<cal-R\><rsub|n>>, respectively.
  </enumerate-roman>

  <with|color|dark cyan|<section|Symmetries>><label|Sec:2.2>

  A symmetry transformation can be thought of as a shift in perspective that
  does not affect the outcomes of potential experiments. If an observer
  <math|O> perceives a system in a state denoted by a ray <math|\<cal-R\>> or
  <math|\<cal-R\><rsub|1>> or <math|\<cal-R\><rsub|2>><text-dots>, a
  corresponding observer <math|O\<prime\>> scrutinizing the same system would
  view it in a different state, symbolized by a ray
  <math|\<cal-R\><rprime|'>> or <math|\<cal-R\><rsub|1><rprime|'>> or
  <math|\<cal-R\><rsub|2><rprime|'>><text-dots>, respectively. However, both
  observers must ascertain the same probabilities:

  <\equation>
    P<around*|(|\<cal-R\>\<rightarrow\>\<cal-R\><rsub|n>|)>=P<around*|(|\<cal-R\><rprime|'>\<rightarrow\>\<cal-R\><rprime|'><rsub|n>|)>.
  </equation>

  This condition is necessary but <with|font-shape|italic|not sufficient> for
  a ray transformation to qualify as a symmetry; additional conditions will
  be elaborated upon in the following chapter. Wigner proved a significant
  theorem in the early 1930s, stating that for any such transformation
  <math|\<cal-R\>\<rightarrow\>\<cal-R\><rprime|'>>, an operator <math|U> can
  be defined in the Hilbert space. If <math|\<Psi\>> is a vector in ray
  <math|\<cal-R\>>, then <math|U\<Psi\>> belongs to ray
  <math|\<cal-R\><rprime|'>>. The operator <math|U> can either be unitary and
  linear:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|(|U\<Phi\>,U\<Psi\>|)>=<around*|(|\<Phi\>,\<Psi\>|)>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|U<around*|(|\<xi\>\<Phi\>+\<eta\>\<Psi\>|)>=\<xi\>U\<Phi\>+\<eta\>U\<Psi\><eq-number>>>>>
  </eqnarray*>

  or antiunitary and antilinear:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|(|U\<Phi\>,U\<Psi\>|)>=<around*|(|\<Phi\>,\<Psi\>|)><rsup|\<ast\>>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|U<around*|(|\<xi\>\<Phi\>+\<eta\>\<Psi\>|)>=\<xi\><rsup|\<ast\>>U\<Phi\>+\<eta\><rsup|\<ast\>>U\<Psi\><eq-number>>>>>
  </eqnarray*>

  for all <math|\<Phi\>,\<Psi\>> in the Hilbert space.

  This finding is called the fundamental theorem of Wigner and the proof is
  the following:

  <\render-theorem|The fundamental theorem of Wigner (1931)>
    <\em>
      Let <math|H> be a Hilbert space and let

      <\equation*>
        \<cal-R\><above|\<longmapsto\>|T>\<cal-R\><rprime|'>
      </equation*>

      be a bijection satisying
    </em>

    <\equation*>
      <around*|\||<around*|(|\<Psi\><rsub|1><rprime|'>,\<Psi\><rsub|2><rprime|'>|)>|\|>=<around*|\||<around*|(|\<Psi\><rsub|1>,\<Psi\><rsub|2>|)>|\|>
    </equation*>

    <\em>
      for all rays <math|\<cal-R\><rsub|1>> and <math|\<cal-R\><rsub|2>>; and
      vectors \ <math|\<Psi\><rsub|1>\<in\>\<cal-R\><rsub|1>>,
      <math|\<Psi\><rsub|1><rprime|'>\<in\>\<cal-R\><rsub|1><rprime|'>=T<around*|(|\<cal-R\><rsub|1>|)>>,
      <math|\<Psi\><rsub|2>\<in\>\<cal-R\><rsub|2>>, and
      <math|\<Psi\><rsub|2><rprime|'>\<in\>\<cal-R\><rsub|2><rprime|'>=T<around*|(|\<cal-R\><rsub|2>|)>>.
      Then there exists an operator <math|U> acting on <math|H> such that

      <\equation*>
        U<around*|(|\<Psi\>|)>\<in\>T<around*|(|\<cal-R\>|)>
      </equation*>

      for all ray <math|\<cal-R\>> and all <math|\<Psi\>\<in\>\<cal-R\>>; and
      that either <math|U> is unitary and linear or antiunitary and
      antilinear.
    </em>
  </render-theorem>

  <\proof>
    \;
  </proof>

  As previously stated, the adjoint of a linear operator <math|L> is
  determined by

  <\equation>
    <label|2.2.6><around*|(|\<Phi\>,L<rsup|\<dag\>>\<Psi\>|)>\<equiv\><around*|(|L\<Phi\>,\<Psi\>|)>.
  </equation>

  This definition does not apply to an antilinear operator since the
  right-hand side of <eqref|2.2.6> would be linear in <math|\<Phi\>>, while
  the left-hand side is antilinear in <math|\<Phi\>>. For an antilinear
  operator <math|A>, the adjoint is instead specified as:

  <\equation>
    <around*|(|\<Phi\>,A<rsup|\<dag\>>\<Psi\>|)>\<equiv\><around*|(|A\<Phi\>,\<Psi\>|)><rsup|\<ast\>>=<around*|(|\<Psi\>,A\<Phi\>|)>.
  </equation>

  Given this definition, the criteria for either unitarity or antiunitarity
  can both be expressed as:

  <\equation>
    U<rsup|\<dag\>>=U<rsup|-1>.
  </equation>

  There exists a trivial symmetry transformation
  \<cal-R\>\<rightarrow\>\<cal-R\>, represented by the identity operator
  <math|U=1>. This operator is naturally unitary and linear. Continuity
  dictates that any symmetry operation (like a rotation, translation, or
  Lorentz transformation) that can be reduced to a trivial transformation by
  continuously adjusting certain parameters (such as angles, distances, or
  velocities) must be characterized by a linear unitary operator <math|U>, as
  opposed to one that is antilinear and antiunitary. (Symmetries represented
  by antiunitary antilinear operators are less common in physics; they all
  entail a reversal in the direction of time flow. See Section
  <reference|Sec:2.6> for more details.)

  Specifically, a symmetry transformation that is nearly trivial on an
  infinitesimal scale can be depicted by a linear unitary operator that is
  infinitesimally close to the identity operator:

  <\equation>
    U=1+i\<epsilon\>t
  </equation>

  Here, <math|\<epsilon\>> is a real infinitesimal. For <math|U> to be both
  unitary and linear, <math|t> needs to be Hermitian and linear, making it a
  potential observable. In fact, many (if not all) physical observables, like
  angular momentum or momentum, are derived from symmetry transformations in
  this manner.

  The set of symmetry transformations possesses specific characteristics that
  categorize it as a group. If <math|T<rsub|1>> is a transformation
  converting rays <math|\<cal-R\><rsub|n>> to
  <math|\<cal-R\><rsub|n><rprime|'>>, and <math|T<rsub|2>> is another
  transformation that maps <math|\<cal-R\><rsub|n><rprime|'>> to
  <math|\<cal-R\><rsub|n><rprime|''>>, then the outcome of executing both
  transformations consecutively is yet another symmetry transformation,
  denoted as <math|T<rsub|2>T<rsub|1>>, that transforms
  <math|\<cal-R\><rsub|n>> into <math|\<cal-R\><rsub|n><rprime|''>>.
  Additionally, any symmetry transformation <math|T> that changes
  <math|\<cal-R\><rsub|n>> into <math|\<cal-R\><rsub|n><rprime|'>> has an
  inverse, expressed as <math|T<rsup|-1>>, which reverts
  <math|\<cal-R\><rsub|n><rprime|'>> back to <math|\<cal-R\><rsub|n>>.
  Moreover, there exists an identity transformation, <math|T=1>, which leaves
  rays unaltered.

  The unitary or antiunitary operators <math|U<around|(|T|)>> that correspond
  to these symmetry transformations emulate this group structure, albeit with
  added complexity because <math|U<around*|(|T|)>> operators act on vectors
  in Hilbert space instead of on rays. If <math|T<rsub|1>> transforms
  <math|\<cal-R\><rsub|n>> into <math|\<cal-R\><rsub|n><rprime|'>>, then
  applying <math|U<around*|(|T<rsub|1>|)>> to a vector <math|\<Psi\><rsub|n>>
  in <math|\<cal-R\><rsub|n>> must result in a vector
  <math|U<around*|(|T<rsub|1>|)>\<Psi\><rsub|n>> in
  <math|\<cal-R\><rsub|n><rprime|'>>. If <math|T<rsub|2>> then maps this ray
  to <math|\<cal-R\><rsub|n><rprime|''>>,
  <math|U<around*|(|T<rsub|2>|)>U<around*|(|T<rsub|1>|)>\<Psi\><rsub|n>> must
  also belong to <math|\<cal-R\><rsub|n><rprime|''>>, as must
  <math|U<around*|(|T<rsub|2>T<rsub|1>|)>\<Psi\><rsub|n>>. Therefore, the
  vectors can only differ by a phase factor
  <math|\<phi\><rsub|n><around*|(|T<rsub|2>,T<rsub|1>|)>>, as given by:

  <\equation>
    <label|2.2.10>U<around*|(|T<rsub|2>|)>U<around*|(|T<rsub|1>|)>\<Psi\><rsub|n>=e<rsup|i\<phi\><rsub|n><around*|(|T<rsub|2>,T<rsub|1>|)>>U<around*|(|T<rsub|2>T<rsub|1>|)>\<Psi\><rsub|n>.
  </equation>

  Moreover, barring a notable exception, the linearity (or antilinearity) of
  <math|U<around*|(|T|)>> specifies that these phases are state-independent.
  To prove this, let us consider two non-proportional vectors
  <math|\<Psi\><rsub|A>> and <math|\<Psi\><rsub|B>> and apply Equation
  <eqref|2.2.10> to the state:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|e<rsup|i\<phi\><rsub|A
    B>>U<around*|(|T<rsub|2>T<rsub|1>|)><around*|(|\<Psi\><rsub|A>+\<Psi\><rsub|B>|)>=U<around*|(|T<rsub|2>|)>U<around*|(|T<rsub|1>|)><around*|(|\<Psi\><rsub|A>+\<Psi\><rsub|B>|)>>>|<row|<cell|>|<cell|>|<cell|<hspace|3.219cm>=U<around*|(|T<rsub|2>|)>U<around*|(|T<rsub|1>|)>\<Psi\><rsub|A>+U<around*|(|T<rsub|2>|)>U<around*|(|T<rsub|1>|)>\<Psi\><rsub|B>>>|<row|<cell|>|<cell|>|<cell|<hspace|3.219cm>=e<rsup|i\<phi\><rsub|A>>U<around*|(|T<rsub|2>T<rsub|1>|)>\<Psi\><rsub|A>+e<rsup|i\<phi\><rsub|B>>U<around*|(|T<rsub|2>T<rsub|1>|)>\<Psi\><rsub|B>.<eq-number><label|2.2.11>>>>>
  </eqnarray*>

  Every unitary or antiunitary operator has an inverse (its adjoint), which
  is also either unitary or antiunitary. Upon left-multiplying Equation
  <eqref|2.2.11> by <math|U<rsup|-1><around*|(|T<rsub|2>T<rsub|1>|)>>, we
  arrive at:

  <\equation>
    e<rsup|\<pm\>i\<phi\><rsub|A B>><around*|(|\<Psi\><rsub|A>+\<Psi\><rsub|B>|)>=e<rsup|\<pm\>i\<phi\><rsub|A>>\<Psi\><rsub|A>+e<rsup|\<pm\>i\<phi\><rsub|B>>\<Psi\><rsub|B>,
  </equation>

  As <math|\<Psi\><rsub|A>> and <math|\<Psi\><rsub|B>> are linearly
  independent, it follows that

  <\equation>
    e<rsup|i\<phi\><rsub|A B>>=e<rsup|i\<phi\><rsub|A>>=e<rsup|i\<phi\><rsub|B>>.
  </equation>

  Consequently, the phase in Equation <eqref|2.2.10> is state-independent,
  leading to the operator relation:

  <\equation>
    <label|2.2.14>U<around*|(|T<rsub|2>|)>U<around*|(|T<rsub|1>|)>=e<rsup|i\<phi\><around*|(|T<rsub|2>,T<rsub|1>|)>>U<around*|(|T<rsub|2>T<rsub|1>|)>.
  </equation>

  When <math|\<phi\>=0>, this indicates that <math|U<around*|(|T|)>>
  constitutes a representation of the group of symmetry transformations. For
  arbitrary phases <math|\<phi\><around*|(|T<rsub|2>,T<rsub|1>|)>>, we refer
  to it as a \<#2018\>projective representation\<#2019\> or a representation
  \<#2018\>up to a phase\<#2019\>. Whether the Lie group structure allows for
  state vectors to furnish an ordinary or projective representation can not
  be inferred from the group structure alone but will become apparent later.

  The exception to the reasoning that concluded in Equation <eqref|2.2.14>
  lies in the possibility that the system may not be preparable in a state
  represented by <math|\<Psi\><rsub|A>+\<Psi\><rsub|B>>. For example, it is
  generally considered unfeasible to prepare a system in a superposition of
  states with total angular momenta that are integers and half-integers. In
  such scenarios, we refer to the presence of a \<#2018\>superselection
  rule\<#2019\> between different categories of states. As a result, the
  phases <math|\<phi\><around*|(|T<rsub|2>,T<rsub|1>|)>> could be contingent
  on which class of states the operators <math|U<around*|(|T<rsub|2>|)>U<around*|(|T<rsub|1>|)>>
  and <math|U<around*|(|T<rsub|2>,T<rsub|1>|)>> are acting upon. Further
  details about these phases and projective representations will be discussed
  in Section <reference|Sec:2.7>. It will be shown that any symmetry group
  featuring projective representations can be extended (without altering its
  physical meaning) to allow for all its representations to be
  non-projective, i.e., with <math|\<phi\>=0>. Until we reach Section
  <reference|Sec:2.7>, we will proceed with the assumption that such an
  extension has been applied, and will take <math|\<phi\>=0> in
  <eqref|2.2.14>. Also, the existence of spinor is partially derived from the
  phase ambiguity that arises when taking absolute values and the fact that
  the homotopy class of the homogeneous Lorentz group.

  In physics, a specific type of group known as a connected Lie group holds
  special significance. These are groups comprised of transformations
  <math|T<around*|(|\<theta\>|)>>, defined by a finite collection of real,
  continuous parameters, symbolized as <math|\<theta\><rsup|a>>. Each group
  element is linked to the identity element through a continuous path within
  the group itself. The multiplication rule for the group is expressed as

  <\equation>
    <label|2.2.15>T<around*|(|<wide|\<theta\>|\<bar\>>|)>T<around*|(|\<theta\>|)>=T<around*|(|f<around*|(|<wide|\<theta\>|\<bar\>>,\<theta\>|)>|)>
  </equation>

  where <math|f<rsup|a><around*|(|<wide|\<theta\>|\<bar\>>,\<theta\>|)>> is a
  function of both <math|<wide|\<theta\>|\<bar\>>> and <math|\<theta\>>. If
  <math|\<theta\><rsup|a>=0> denotes the coordinates of the identity, then

  <\equation>
    <label|2.2.16>f<rsup|a><around*|(|\<theta\>,0|)>=f<rsup|a><around*|(|0,\<theta\>|)>=\<theta\><rsup|a>.
  </equation>

  must hold true. In the case of such continuous groups, the transformations
  must be represented in the physical Hilbert space by unitary operators
  <math|U<around*|(|T<around*|(|\<theta\>|)>|)>>, rather than antiunitary
  ones. These unitary operators, at least in a finite vicinity of the
  identity, can be expressed by a power series as

  <\equation>
    U<around*|(|T<around*|(|\<theta\>|)>|)>=1+i\<theta\><rsup|a>t<rsub|a>+<small|<frac|1|2>>\<theta\><rsup|b>\<theta\><rsup|c>t<rsub|b
    c>+\<cdots\>,
  </equation>

  Here, <math|t<rsub|a>,t<rsub|b c>=t<rsub|c b>>, and so on, are Hermitian
  operators independent of <math|\<theta\>>. Assuming that
  <math|U<around*|(|T<around*|(|\<theta\>|)>|)>> provides a standard
  (non-projective) representation of the transformation group, meaning

  <\equation>
    <label|2.2.18>U<around*|(|T<around*|(|<wide|\<theta\>|\<bar\>>|)>|)>U<around*|(|T<around*|(|\<theta\>|)>|)>=U<around*|(|T<around*|(|f<around*|(|<wide|\<theta\>|\<bar\>>,\<theta\>|)>|)>|)>.
  </equation>

  we can expand this in terms of <math|\<theta\><rsup|a>> and
  <math|<wide|\<theta\>|\<bar\>><rsup|a>>. In accordance with Equation
  <eqref|2.2.16>, the second-order expansion of
  <math|f<rsup|a><around*|(|<wide|\<theta\>|\<bar\>>,\<theta\>|)>> should be

  <\equation>
    <label|2.2.19>f<rsup|a><around*|(|<wide|\<theta\>|\<bar\>>,\<theta\>|)>=\<theta\><rsup|a>+<wide|\<theta\>|\<bar\>><rsup|a>+f<rsup|a><rsub|
    <text| \ \ >b c><wide|\<theta\>|\<bar\>><rsup|b>\<theta\><rsup|c>+\<cdots\>
  </equation>

  Here, <math|f<rsub|b c><rsup|a>> are real coefficients. Note that the
  presence of any <math|\<theta\><rsup|2>> or
  <math|<wide|\<theta\>|\<bar\>><rsup|2>> terms would be in conflict with
  Equation <eqref|2.2.16>. Following this, Equation <eqref|2.2.18> can be
  articulated as:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|[|1+i<wide|\<theta\>|\<bar\>><rsup|a>t<rsub|a>+<small|<frac|1|2>><wide|\<theta\>|\<bar\>><rsup|b><wide|\<theta\>|\<bar\>><rsup|c>t<rsub|b
    c>+\<cdots\>|]>\<times\><around*|[|1+i\<theta\><rsup|a>t<rsub|a>+<small|<frac|1|2>>\<theta\><rsup|b>\<theta\><rsup|c>t<rsub|b
    c>+\<cdots\>|]>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=1+i<around*|(|\<theta\><rsup|a>+<wide|\<theta\>|\<bar\>><rsup|a>+f<rsup|a><rsub|<text|
    \ \ >b c><wide|\<theta\>|\<bar\>><rsup|b>\<theta\><rsup|c>+\<cdots\>|)>t<rsub|a>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+<small|<frac|1|2>><around*|(|\<theta\><rsup|b>+<wide|\<theta\>|\<bar\>><rsup|b>+\<cdots\>|)><around*|(|\<theta\><rsup|c>+<wide|\<theta\>|\<bar\>><rsup|c>+\<cdots\>|)>t<rsub|b
    c>+\<cdots\><eq-number><label|2.2.20>>>>>
  </eqnarray*>

  On both sides of Equation <eqref|2.2.20>, terms of order 1,
  <math|\<theta\>>, <math|<wide|\<theta\>|\<bar\>>>,
  <math|\<theta\><rsup|2>>, and <math|<wide|\<theta\>|\<bar\>><rsup|2>>
  correspond without issue. However, when focusing on the
  <math|<wide|\<theta\>|\<bar\>>\<theta\>> terms, a non-trivial condition
  emerges:

  <\equation>
    <label|2.2.21>t<rsub|b c>=-t<rsub|b>t<rsub|c>-i f<rsup|a><rsub|<text|
    \ \ >b c>t<rsub|a>.
  </equation>

  This reveals that if we know the group structure, specifically the function
  <math|f<around*|(|\<theta\>,<wide|\<theta\>|\<bar\>>|)>> and its
  corresponding quadratic coefficient <math|f<rsub|b c><rsup|a>>, we can
  determine the second-order terms of <math|U<around*|(|T<around*|(|\<theta\>|)>|)>>
  using the first-order generators <math|t<rsub|a>>. However, there's a
  requirement for consistency: the operator <math|t<rsub|b c>> has to be
  symmetric in <math|b> and <math|c>, as it's the second derivative of
  <math|U<around*|(|T<around*|(|\<theta\>|)>|)>> with respect to
  <math|\<theta\><rsup|b>> and <math|\<theta\><rsup|c>>. Therefore, Equation
  <eqref|2.2.21> necessitates that

  <\equation>
    <label|2.2.22><around*|[|t<rsub|b>,t<rsub|c>|]>=i C<rsup|a><rsub|<text|
    \ >b c>t<rsub|a>,
  </equation>

  where <math|C<rsub|b c><rsup|a>> are a set of real constants termed as
  structure constants, defined by

  <\equation>
    <label|2.2.23>C<rsup|a><rsub|<text| \ >b
    c>\<equiv\>-f<rsup|a><rsub|<text| \ \ >b c>+f<rsup|a><rsub|<text| \ \ >c
    b>.
  </equation>

  This kind of commutation relationship is termed a Lie algebra. In a later
  section, we will essentially demonstrate that this commutation relation
  <eqref|2.2.22> is the sole condition needed to perpetuate this computation.
  In other words, the complete power series for
  <math|U<around*|(|T<around*|(|\<theta\>|)>|)>> can be generated from an
  endless chain of equations like Equation <eqref|2.2.21>, as long as we are
  aware of the first-order terms, namely the generators <math|t<rsub|a>>.
  While this does not mean <math|U<around*|(|T<around*|(|\<theta\>|)>|)>>
  operators are uniquely identified for all <math|\<theta\><rsup|a>> based
  solely on <math|t<rsub|a>>, it does signify that they are uniquely
  specified within a finite vicinity of the identity coordinate
  <math|\<theta\><rsup|a>=0>, such that Equation <eqref|2.2.15> holds true if
  <math|\<theta\>,<wide|\<theta\>|\<bar\>>> and
  <math|f<around*|(|\<theta\>,<wide|\<theta\>|\<bar\>>|)>> lie within this
  region. The discussion about extending this to all <math|\<theta\><rsup|a>>
  will take place in a subsequent section.

  There is a particular scenario of considerable relevance that will recur
  frequently in our discussions. Assume the function
  <math|f<around*|(|\<theta\>,<wide|\<theta\>|\<bar\>>|)>> is simply additive
  for some or all of the coordinates <math|\<theta\><rsup|a>>, as expressed
  by:

  <\equation>
    <label|2.2.24>f<rsup|a><around*|(|\<theta\>,<wide|\<theta\>|\<bar\>>|)>=\<theta\><rsup|a>+<wide|\<theta\>|\<bar\>><rsup|a>.
  </equation>

  This situation is applicable, for example, in the context of spacetime
  translations or for rotations about a single fixed axis (but not for both
  simultaneously). In this special case, the coefficients <math|f<rsub|b
  c><rsup|a>> from Equation <eqref|2.2.19> become zero, and likewise, the
  structure constants in Equation <eqref|2.2.23> also vanish. Consequently,
  the generators are commutative, denoted by:

  <\equation>
    <around*|[|t<rsub|b>,t<rsub|c>|]>=0.
  </equation>

  Such a group is termed as Abelian. Under these conditions, computing
  <math|U<around*|(|T<around*|(|\<theta\>|)>|)>> for all
  <math|\<theta\><rsup|a>> becomes straightforward. According to Equations
  <eqref|2.2.18> and <eqref|2.2.24>, for any integer <math|N>, we can
  express:

  <\equation*>
    U<around*|(|T<around*|(|\<theta\>|)>|)>=<around*|[|U<around*|(|T<around*|(|<frac|\<theta\>|N>|)>|)>|]><rsup|N>.
  </equation*>

  By taking the limit as <math|N> approaches infinity and retaining only the
  first-order term in <math|U<around*|(|T<around*|(|\<theta\>/N|)>|)>>, we
  obtain:

  <\equation*>
    U<around*|(|T<around*|(|\<theta\>|)>|)>=lim<rsub|N\<rightarrow\>\<infty\>><around*|[|1+<frac|i|N>\<theta\><rsup|a>t<rsub|a>|]><rsup|N>
  </equation*>

  and consequently,

  <\equation>
    <label|2.2.26>U<around*|(|T<around*|(|\<theta\>|)>|)>=exp<around*|(|i
    t<rsub|a>\<theta\><rsup|a>|)>.
  </equation>

  <with|color|dark cyan|<section|Quantum Lorentz
  Transformations>><label|Sec:2.3>

  Einstein's principle of relativity asserts the equivalence of specific
  'inertial' frames of reference, setting it apart from the Galilean
  principle of relativity adhered to by Newtonian mechanics. The distinction
  comes from the transformation equations that link coordinate systems across
  different inertial frames. Given that <math|x<rsup|\<mu\>>> represents the
  coordinates in one inertial frame\Vwhere
  <math|x<rsup|1>,x<rsup|2>,x<rsup|3>> are Cartesian spatial coordinates and
  <math|x<rsup|0>=t> is a time coordinate (assuming the speed of light equals
  one)\Vthe coordinates <math|x<rsup|\<prime\>\<mu\>>> in another inertial
  frame must satisfy:

  <\equation>
    \<eta\><rsub|\<mu\>\<nu\>>d x<rprime|'><rsup|\<mu\>>d
    x<rprime|'><rsup|\<nu\>>=\<eta\><rsub|\<mu\>\<nu\>>d x<rsup|\<mu\>>d
    x<rsup|\<nu\>>
  </equation>

  or, alternatively,

  <\equation>
    <label|2.3.2>\<eta\><rsub|\<mu\>\<nu\>><frac|\<partial\>x<rprime|'><rsup|\<mu\>>|\<partial\>x<rsup|\<rho\>>><frac|\<partial\>x<rprime|'><rsup|\<nu\>>|\<partial\>x<rsup|\<sigma\>>>=\<eta\><rsub|\<rho\>\<sigma\>>.
  </equation>

  In these equations, <math|\<eta\><rsub|\<mu\>\<nu\>>> is a diagonal matrix
  with elements defined as:

  <\equation>
    \<eta\><rsub|11>=\<eta\><rsub|22>=\<eta\><rsub|33>=+1,<space|1em>\<eta\><rsub|00>=-1
  </equation>

  The summation convention applies: any index like <math|\<mu\>> and
  <math|\<nu\>> in Equation <eqref|2.3.2> appearing twice, once as a
  superscript and once as a subscript, is summed over.

  These transformations have the unique feature that the speed of light
  remains consistent\Vin our chosen units, equal to one\Vacross all inertial
  frames. A light wave with unit speed satisfies
  <math|<around*|\||d\<b-up-x\>/d t|\|>=1>, or in terms of the equation
  <math|\<eta\><rsub|\<mu\>\<nu\>>d x<rsup|\<mu\>>d
  x<rsup|\<nu\>>=d\<b-up-x\><rsup|2>-d t<rsup|2>=0>, which also implies
  <math|\<eta\><rsub|\<mu\>\<nu\>>d x<rprime|'><rsup|\<mu\>>d
  x<rprime|'><rsup|\<nu\>>=0> and thus <math|<around*|\||d
  \<b-up-x\><rprime|'>/d t|\|>=1>.

  Any coordinate transformation <math|x<rsup|\<mu\>>\<rightarrow\>x<rsup|\<prime\>\<mu\>>>
  fulfilling Eq. <eqref|2.3.2> is linear, as denoted by:

  <\equation>
    <label|2.3.4>x<rprime|'><rsup|\<mu\>>=\<Lambda\><rsup|\<mu\>><rsub|<text|
    > \<nu\>>x<rsup|\<nu\>>+a<rsup|\<mu\>>
  </equation>

  Here, <math|a<rsup|\<mu\>>> are arbitrary constants, and
  <math|\<Lambda\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>> is a
  constant matrix that meets the criteria:

  <\equation>
    <label|2.3.5>\<eta\><rsub|\<mu\>\<nu\>>\<Lambda\><rsup|\<mu\>><rsub|<text|
    >\<rho\>>\<Lambda\><rsup|\<nu\>><rsub|<text|
    >\<sigma\>>=\<eta\><rsub|\<rho\>\<sigma\>>.
  </equation>

  For certain applications, it's advantageous to express the Lorentz
  transformation condition using an alternate formulation. The matrix
  <math|\<eta\><rsub|\<mu\>\<nu\>>> possesses an inverse, designated as
  <math|\<eta\><rsup|\<mu\>\<nu\>>>, which coincidentally has the same
  diagonal components: <math|\<eta\><rsup|00>=\<minus\>1> and
  <math|\<eta\><rsup|11>=\<eta\><rsup|22>=\<eta\><rsup|33>=+1>.

  By judiciously inserting parentheses and multiplying Eq. <eqref|2.3.5> by
  <math|\<eta\><rsup|\<sigma\>\<tau\>>\<Lambda\><rsub|<with|mode|text|<nbsp>>\<tau\>><rsup|\<kappa\>>>,
  we get:

  <\equation*>
    \<eta\><rsub|\<mu\>\<nu\>>\<Lambda\><rsup|\<mu\>><rsub|<text|
    >\<rho\>><around*|(|\<Lambda\><rsup|\<nu\>><rsub|<text|
    >\<sigma\>>\<Lambda\><rsup|\<kappa\>><rsub|<text|
    >\<tau\>>\<eta\><rsup|\<sigma\>\<tau\>>|)>=\<Lambda\><rsup|\<kappa\>><rsub|<text|
    >\<rho\>>=\<eta\><rsub|\<mu\>\<nu\>>\<eta\><rsup|\<nu\>\<kappa\>>\<Lambda\><rsup|\<mu\>><rsub|<text|
    >\<rho\>>.
  </equation*>

  Further multiplying by the inverse of the matrix
  <math|\<eta\><rsub|\<mu\>\<nu\>>\<Lambda\><rsub|<with|mode|text|<nbsp>>\<rho\>><rsup|\<mu\>>>
  yields:

  <\equation>
    <label|2.3.6>\<Lambda\><rsup|\<nu\>><rsub|<text|
    >\<sigma\>>\<Lambda\><rsup|\<kappa\>><rsub|<text|
    >\<tau\>>\<eta\><rsup|\<sigma\>\<tau\>>=\<eta\><rsup|\<nu\>\<kappa\>>.
  </equation>

  These transformations constitute a group. When we initially apply a Lorentz
  transformation as per Eq. (<reference|2.3.4>), and then follow it with
  another Lorentz transformation <math|x<rsup|\<prime\>\<mu\>>\<rightarrow\>x<rsup|\<prime\>\<prime\>\<mu\>>>,
  such that

  <\equation*>
    x<rprime|''><rsup|\<mu\>>=<wide|\<Lambda\>|\<bar\>><rsup|\<mu\>><rsub|<text|
    >\<rho\>>x<rprime|'><rsup|\<rho\>>+<wide|a|\<bar\>><rsup|\<mu\>>=<wide|\<Lambda\>|\<bar\>><rsup|\<mu\>><rsub|<text|
    >\<rho\>><around*|(|\<Lambda\><rsup|\<rho\>><rsub|<text|
    >\<nu\>>x<rsup|\<nu\>>+a<rsup|\<rho\>>|)>+<wide|a|\<bar\>><rsup|\<mu\>>,
  </equation*>

  we find that the overall transformation effect is identical to performing a
  Lorentz transformation <math|x<rsup|\<mu\>>\<rightarrow\>x<rsup|\<prime\>\<prime\>\<mu\>>>
  as described by

  <\equation>
    <label|2.3.7>x<rprime|''><rsup|\<mu\>>=<around*|(|<wide|\<Lambda\>|\<bar\>><rsup|\<mu\>><rsub|<text|
    >\<rho\>>\<Lambda\><rsup|\<rho\>><rsub|<text|
    >\<nu\>>|)>x<rsup|\<nu\>>+<around*|(|<wide|\<Lambda\>|\<bar\>><rsup|\<mu\>><rsub|<text|
    >\<rho\>>a<rsup|\<rho\>>+<wide|a|\<bar\>><rsup|\<nu\>>|)>.
  </equation>

  Here, it's worth noting that if <math|\<Lambda\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>>
  and <math|<wide|\<Lambda\>|\<bar\>><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>>
  both meet the conditions of Eq. (<reference|2.3.5>),
  <math|<wide|\<Lambda\>|\<bar\>><rsub|<with|mode|text|<nbsp>>\<rho\>><rsup|\<mu\>>\<Lambda\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<rho\>>>
  will also be a Lorentz transformation. The bar notation is simply used to
  distinguish one Lorentz transformation from another. Correspondingly, the
  transformations <math|T<around*|(|\<Lambda\>,a|)>> on physical states obey
  the composition law

  <\equation>
    <label|2.3.8>T<around*|(|<wide|\<Lambda\>|\<bar\>>,<wide|a|\<bar\>>|)>T<around*|(|\<Lambda\>,a|)>=T<around*|(|<wide|\<Lambda\>|\<bar\>>\<Lambda\>,<wide|\<Lambda\>|\<bar\>>a+<wide|a|\<bar\>>|)>.
  </equation>

  Calculating the determinant of Eq. (<reference|2.3.5>), we arrive at

  <\equation>
    <label|2.3.9><around*|(|Det\<Lambda\>|)><rsup|2>=1
  </equation>

  This implies that <math|\<Lambda\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>>
  has an inverse, denoted as <math|<around*|(|\<Lambda\><rsup|\<minus\>1>|)><rsub|<with|mode|text|<nbsp>>\<rho\>><rsup|\<nu\>>>,
  which as per Eq. (<reference|2.3.5>) takes the form

  <\equation>
    <label|2.3.10><around*|(|\<Lambda\><rsup|-1>|)><rsup|\<rho\>><rsub|<text|
    \ >\<nu\>>=\<Lambda\><rsub|\<nu\>><rsup|<text|
    \ \ >\<rho\>>\<equiv\>\<eta\><rsub|\<nu\>\<mu\>>\<eta\><rsup|\<rho\>\<sigma\>>\<Lambda\><rsup|\<mu\>><rsub|<text|
    \ >\<sigma\>>.
  </equation>

  According to Eq. (<reference|2.3.8>), the inverse of the transformation
  <math|T<around*|(|\<Lambda\>,a|)>> turns out to be
  <math|T<around*|(|\<Lambda\><rsup|\<minus\>1>,\<minus\>\<Lambda\><rsup|\<minus\>1>a|)>>,
  and naturally, the identity transformation is represented by
  <math|T<around*|(|1,0|)>>.

  Based on the dialogue in the prior section, the transformations
  <math|T<around*|(|\<Lambda\>,a|)>> give rise to a unitary linear
  transformation acting on vectors in the physical Hilbert space, represented
  as <math|\<Psi\>\<rightarrow\>U<around*|(|\<Lambda\>,a|)>\<Psi\>>. These
  operators <math|U> obey a composition law articulated as

  <\equation>
    <label|2.3.11>U*<around*|(|<wide|\<Lambda\>|\<bar\>>,<wide|a|\<bar\>>|)>U<around*|(|\<Lambda\>,a|)>=U<around*|(|<wide|\<Lambda\>|\<bar\>>\<Lambda\>,<wide|\<Lambda\>|\<bar\>>a+<wide|a|\<bar\>>|)>.
  </equation>

  It's worth noting that to prevent the emergence of a phase factor on the
  right-hand side of Eq. (<reference|2.3.11>), it's generally required to
  extend the Lorentz group. The suitable extension for accomplishing this is
  discussed in Section <reference|Sec:2.7>.

  The complete set of transformations <math|T<around*|(|\<Lambda\>,a|)>> is
  formally referred to as the inhomogeneous Lorentz group, also known as the
  Poincaré group. This group has several significant subgroups. First,
  transformations with <math|a<rsup|\<mu\>>=0> naturally constitute a
  subgroup, described by

  <\equation>
    T<around*|(|<wide|\<Lambda\>|\<bar\>>,0|)>T<around*|(|\<Lambda\>,0|)>=T<around*|(|<wide|\<Lambda\>|\<bar\>>\<Lambda\>,0|)>,
  </equation>

  which is termed the homogeneous Lorentz group. Additionally, from Eq.
  (<reference|2.3.9>), it's evident that <math|<with|mode|text|Det>\<Lambda\>>
  can be either <math|+1> or <math|\<minus\>1>; transformations having
  <math|<with|mode|text|Det>\<Lambda\>=+1> inherently make up a subgroup of
  either the homogeneous or inhomogeneous Lorentz groups. Further scrutiny of
  the 00-components of Eqs. (<reference|2.3.5>) and (<reference|2.3.6>)
  yields

  <\equation>
    <label|2.3.13><around*|(|\<Lambda\><rsup|0><rsub|<text|
    \ >0>|)><rsup|2>=1+\<Lambda\><rsup|i><rsub|<text|
    \ >0>\<Lambda\><rsup|i><rsub|<text| \ >0>=1+\<Lambda\><rsup|0><rsub|<text|
    \ >i>\<Lambda\><rsup|0><rsub|<text| \ >i>.
  </equation>

  where <math|i> ranges over 1, 2, and 3. This shows that either
  <math|\<Lambda\><rsub|<with|mode|text| >0><rsup|0>\<geq\>+1> or
  <math|\<Lambda\><rsub|<with|mode|text| >0><rsup|0>\<leq\>\<minus\>1>.
  Transformations where <math|\<Lambda\><rsub|<with|mode|text|
  >0><rsup|0>\<geq\>+1> constitute a subgroup. Observe that if
  <math|\<Lambda\><rsub|<with|mode|text| >\<nu\>><rsup|\<mu\>>> and
  <math|<wide|\<Lambda\>|\<bar\>><rsub|<with|mode|text|
  >\<nu\>><rsup|\<mu\>>> are two such matrices <math|\<Lambda\>>, then

  <\equation*>
    <around*|(|<wide|\<Lambda\>|\<bar\>>\<Lambda\>|)><rsup|0><rsub|<text|
    \ >0>=<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >0>\<Lambda\><rsup|0><rsub|<text| \ >0>+<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >1>\<Lambda\><rsup|1><rsub|<text| \ >0>+<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >2>\<Lambda\><rsup|2><rsub|<text| \ >0>+<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >3>\<Lambda\><rsup|3><rsub|<text| \ >0>;
  </equation*>

  According to Eq. (<reference|2.3.13>), the three-vector
  <math|<around*|(|\<Lambda\><rsub|<with|mode|text|
  >0><rsup|1>,\<Lambda\><rsub|<with|mode|text|
  >0><rsup|2>,\<Lambda\><rsub|<with|mode|text| >0><rsup|3>|)>> has a length
  of <math|<sqrt|<around*|(|\<Lambda\><rsub|<with|mode|text|
  >0><rsup|0>|)><rsup|2>\<minus\>1>>, and similarly, the three-vector
  <math|<around*|(|<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
  \ >1>,<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
  \ >2>,<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text| \ >3>|)>> has a length
  of <math|<sqrt|<around*|(|<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
  \ >0>|)><rsup|2>-1>>. Therefore, the scalar product of these two
  three-vectors has an upper limit given by

  <\equation>
    <around*|\||<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >1>\<Lambda\><rsup|1><rsub|<text| \ >0>+<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >2>\<Lambda\><rsup|2><rsub|<text| \ >0>+<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >3>\<Lambda\><rsup|3><rsub|<text| \ >0>|\|>\<leq\><sqrt|<around*|(|\<Lambda\><rsup|0><rsub|<text|
    \ >0>|)><rsup|2>-1><sqrt|<around*|(|<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >0>|)><rsup|2>-1>,
  </equation>

  leading to

  <\equation*>
    <around*|(|<wide|\<Lambda\>|\<bar\>>\<Lambda\>|)><rsup|0><rsub|<text|
    \ >0>\<geq\><wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >0>\<Lambda\><rsup|0><rsub|<text| \ >0>-<sqrt|<around*|(|\<Lambda\><rsup|0><rsub|<text|
    \ >0>|)><rsup|2>-1><sqrt|<around*|(|<wide|\<Lambda\>|\<bar\>><rsup|0><rsub|<text|
    \ >0>|)><rsup|2>-1>\<geq\>1.
  </equation*>

  This subgroup, characterized by <math|<with|mode|text|Det>\<Lambda\>=+1>
  and <math|\<Lambda\><rsub|<with|mode|text| >0><rsup|0>\<geq\>+1>, is
  identified as the proper orthochronous Lorentz group. As one cannot
  smoothly transition from <math|<with|mode|text|Det>\<Lambda\>=+1> to
  <math|<with|mode|text|Det>\<Lambda\>=\<minus\>1>, or from
  <math|\<Lambda\><rsub|<with|mode|text| >0><rsup|0>\<geq\>+1> to
  <math|\<Lambda\><rsub|<with|mode|text| >0><rsup|0>\<leq\>\<minus\>1>, any
  Lorentz transformation derived from the identity through a continuous
  variation of parameters must share the same sign for
  <math|<with|mode|text|Det>\<Lambda\>> and
  <math|\<Lambda\><rsub|<with|mode|text| >0><rsup|0>> as the identity, and
  thus must be a member of the proper orthochronous Lorentz group.

  Every Lorentz transformation falls into one of two categories: it is either
  proper and orthochronous, or it can be expressed as the composition of an
  element from the proper orthochronous Lorentz group and one of the discrete
  transformations <math|\<cal-P\>> or <math|\<cal-T\>> or
  <math|\<cal-P\>\<cal-T\>>. Here, <math|\<cal-P\>> represents the space
  inversion, which has non-zero elements given by

  <\equation>
    \<cal-P\><rsup|0><rsub|<text| \ >0>=1,<text|
    >\<cal-P\><rsup|1><rsub|<text| \ >1>=\<cal-P\><rsup|2><rsub|<text|
    \ >2>=\<cal-P\><rsup|3><rsub|<text| \ >3>=-1,
  </equation>

  while <math|\<cal-T\>> stands for the time-reversal matrix, with non-zero
  elements defined as

  <\equation>
    \<cal-T\><rsup|0><rsub|<text| \ \ \ >0>=-1.<text|
    >\<cal-T\><rsup|1><rsub|<text| \ \ \ >1>=\<cal-T\><rsup|2><rsub|<text|
    \ \ \ >2>=\<cal-T\><rsup|3><rsub|<text| \ \ \ >3>=1.
  </equation>

  Therefore, a comprehensive understanding of the entire Lorentz group can be
  achieved by studying its proper orthochronous subgroup, along with the
  concepts of space inversion and time-reversal. The exploration of space
  inversion and time-reversal will be carried out separately in Section
  <reference|Sec:2.6>. Until that point, our focus will remain on either the
  homogeneous or inhomogeneous proper orthochronous Lorentz group.

  <with|color|dark cyan|<section|The Poincaré Algebra>><label|Sec:2.4>

  As discussed in Section <reference|Sec:2.2>, many essential attributes of
  any Lie symmetry group are encapsulated in the properties of the elements
  in the vicinity of the identity element. In the context of the
  inhomogeneous Lorentz group, the identity transformation is given by
  <math|\<Lambda\><rsub|<with|mode|text| >\<nu\>><rsup|\<mu\>>=\<delta\><rsub|<with|mode|text|
  >\<nu\>><rsup|\<mu\>>> and <math|a<rsup|\<mu\>>=0>. Therefore, we aim to
  explore transformations that can be written as

  <\equation>
    <label|2.4.1>\<Lambda\><rsup|\<mu\>><rsub|<text|
    >\<nu\>>=\<delta\><rsup|\<mu\>><rsub|<text|
    \ >\<nu\>>+\<omega\><rsup|\<mu\>><rsub|<text|
    \ >\<nu\>>,<text|<space|1em>>a<rsup|\<mu\>>=\<epsilon\><rsup|\<mu\>>,
  </equation>

  where both <math|\<omega\><rsub|<with|mode|text| >\<nu\>><rsup|\<mu\>>> and
  <math|\<epsilon\><rsup|\<mu\>>> are infinitesimal. The Lorentz condition,
  expressed as equation (<reference|2.3.5>), can be rewritten as

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|\<eta\><rsub|\<rho\>\<sigma\>>=\<eta\><rsub|\<mu\>\<nu\>><around*|(|\<delta\><rsup|\<mu\>><rsub|<text|
    \ >\<rho\>>+\<omega\><rsup|\<mu\>><rsub|<text|
    \ >\<rho\>>|)><around*|(|\<delta\><rsup|v><rsub|<text|
    \ >\<sigma\>>+\<omega\><rsup|v><rsub|<text|
    \ >\<sigma\>>|)>>>|<row|<cell|>|<cell|>|<cell|<hspace|0.5cm>=\<eta\><rsub|\<sigma\>\<rho\>>+\<omega\><rsub|\<sigma\>\<rho\>>+\<omega\><rsub|\<rho\>\<sigma\>>+O<around*|(|\<omega\><rsup|2>|)>.>>>>
  </eqnarray*>

  In this book, we adopt the convention that indices can be raised or lowered
  by contracting with <math|\<eta\><rsub|\<mu\>\<nu\>>> or
  <math|\<eta\><rsup|\<mu\>\<nu\>>>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|\<omega\><rsub|\<sigma\>\<rho\>>\<equiv\>\<eta\><rsub|\<mu\>\<sigma\>>\<omega\><rsup|\<mu\>><rsub|<text|
    \ >\<rho\>>>>|<row|<cell|>|<cell|>|<cell|<hspace|0.01cm>\<omega\><rsup|\<mu\>><rsub|<text|
    \ >\<rho\>>\<equiv\>\<eta\><rsup|\<mu\>\<sigma\>>\<omega\><rsub|\<sigma\>\<rho\>>.>>>>
  </eqnarray*>

  If we retain only the first-order terms in <math|\<omega\>\<omega\>> in the
  Lorentz condition (<reference|2.3.5>), we find that this condition
  simplifies to the antisymmetry of <math|\<omega\><rsub|\<mu\>\<nu\>>>:

  <\equation>
    \<omega\><rsub|\<mu\>\<nu\>>=-\<omega\><rsub|\<nu\>\<mu\>>.
  </equation>

  An antisymmetric second-rank tensor in four dimensions has
  <math|<around*|(|4\<times\>3|)>/2=6> independent components. Coupled with
  the four components of <math|\<epsilon\><rsup|\<mu\>>>, an inhomogeneous
  Lorentz transformation is thus characterized by <math|6+4=10> parameters.

  Because <math|U(1,0)> maps any ray onto itself, it must be proportional to
  the unit operator, and by a choice of phase may be made equal to it.
  Excluding the presence of superselection rules, we can eliminate the chance
  that this proportionality factor varies depending on the state acted upon
  by <math|U(1,0)>. This exclusion follows the same logic we applied in
  Section <reference|Sec:2.2> to dismiss the idea that phases in projective
  representations of symmetry groups might depend on the states they act
  upon. In cases where superselection rules are relevant, it could be
  necessary to adjust the phase factors of <math|U(1,0)> depending on the
  sector it acts on.

  For an infinitesimal Lorentz transformation as described by equation
  (<reference|2.4.1>), <math|U(1+\<omega\>, \<epsilon\>)> must be equal to
  the unit operator <math|\<b-1\>> augmented by terms that are linear in
  <math|\<omega\><rsub|\<rho\>\<sigma\>>> and
  <math|\<epsilon\><rsub|\<rho\>>>. We express this relationship as

  <\equation>
    <label|2.4.3>U<around*|(|1+\<omega\>,\<epsilon\>|)>=1+<small|<frac|1|2>>i\<omega\><rsub|\<rho\>\<sigma\>>J<rsup|\<rho\>\<sigma\>>-i\<epsilon\><rsub|\<rho\>>P<rsup|\<rho\>>+\<cdots\>.
  </equation>

  In this equation, <math|J<rsup|\<rho\>\<sigma\>>> and
  <math|P<rsup|\<rho\>>> are operators that are independent of
  <math|\<omega\>> and <math|\<epsilon\>>, and the ellipsis signifies terms
  of higher order in <math|\<omega\>> and/or <math|\<epsilon\>>. For
  <math|U(1+\<omega\>, \<epsilon\>)> to be unitary, operators
  <math|J<rsup|\<rho\>\<sigma\>>> and <math|P<rsup|\<rho\>>> must be
  Hermitian:

  <\equation>
    J<rsup|\<rho\>\<sigma\>\<dag\>>=J<rsup|\<rho\>\<sigma\>>,<text|<space|1em>>P<rsup|\<rho\>\<dag\>>=P<rsup|\<rho\>>.
  </equation>

  (Yes, the generators of boosts are observables.) Given that
  <math|\<omega\><rsub|\<rho\>\<sigma\>>> is antisymmetric, its coefficient
  <math|J<rsup|\<rho\>\<sigma\>>> can also be taken to be antisymmetric:

  <\equation>
    J<rsup|\<rho\>\<sigma\>>=-J<rsup|\<sigma\>\<rho\>>.
  </equation>

  As we will elaborate on later, <math|P<rsup|1>,P<rsup|2>>, and
  <math|P<rsup|3>> are the components of the momentum operators;
  <math|J<rsup|23>,J<rsup|31>>, and <math|J<rsup|12>> are the angular
  momentum vector components; and <math|P<rsup|0>> is the energy operator or
  Hamiltonian. These identifications of angular-momentum generators are
  necessitated by the commutation relations of <math|J<rsup|\<mu\>\<nu\>>>.
  However, the commutation relations don't prescribe a definite sign for
  <math|P<rsup|\<mu\>>> and <math|\<minus\>P<rsup|\<mu\>>>, making the sign
  choice for the <math|\<epsilon\><rsub|\<rho\>>P<rsup|\<rho\>>> term in
  equation (<reference|2.4.3>) a matter of convention. The alignment of this
  choice with the standard definition of the Hamiltonian <math|P<rsup|0>>
  will be clarified in Section <reference|Sec:3.1>.

  We turn our attention to the Lorentz transformation characteristics of
  <math|J<rsup|\<rho\>\<sigma\>>> and <math|P<rsup|\<rho\>>>. We focus on the
  composite expression

  <\equation*>
    U<around*|(|\<Lambda\>,a|)>U<around*|(|1+\<omega\>,\<epsilon\>|)>U<rsup|-1><around*|(|\<Lambda\>,a|)>,
  </equation*>

  where <math|\<Lambda\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>>
  and <math|a<rsup|\<mu\>>> are parameters of a new transformation, distinct
  from <math|\<omega\>> and <math|\<epsilon\>>. According to Equation
  (<reference|2.3.11>), the operation <math|U<around*|(|\<Lambda\><rsup|\<minus\>1>,\<minus\>\<Lambda\><rsup|\<minus\>1>a|)>U<around*|(|\<Lambda\>,a|)>>
  results in <math|U<around*|(|1,0|)>>, signifying that
  <math|U<around*|(|\<Lambda\><rsup|\<minus\>1>,\<minus\>\<Lambda\><rsup|\<minus\>1>a|)>>
  serves as the inverse of <math|U<around*|(|\<Lambda\>,a|)>>. Consequently,
  from (<reference|2.3.11>), we obtain:

  <\equation>
    U<around*|(|\<Lambda\>,a|)>U<around*|(|1+\<omega\>,\<epsilon\>|)>U<rsup|-1><around*|(|\<Lambda\>,a|)>=U<around*|(|\<Lambda\><around*|(|1+\<omega\>|)>\<Lambda\><rsup|-1>,\<Lambda\>\<epsilon\>-\<Lambda\>\<omega\>\<Lambda\><rsup|-1>a|)>.
  </equation>

  To the first order in <math|\<omega\>> and <math|\<epsilon\>>, this leads
  to:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|U<around*|(|\<Lambda\>,a|)><around*|[|<small|<frac|1|2>>\<omega\><rsub|\<rho\>\<sigma\>>J<rsup|\<rho\>\<sigma\>>-\<epsilon\><rsub|\<rho\>>P<rsup|\<rho\>>|]>U<rsup|-1><around*|(|\<Lambda\>,a|)>=<small|<frac|1|2>><around*|(|\<Lambda\>\<omega\>\<Lambda\><rsup|-1>|)><rsub|\<mu\>\<nu\>>J<rsup|\<mu\>\<nu\>>>>|<row|<cell|>|<cell|>|<cell|<hspace|5.5cm>-<around*|(|\<Lambda\>\<epsilon\>-\<Lambda\>\<omega\>\<Lambda\><rsup|-1>a|)><rsub|\<mu\>>P<rsup|\<mu\>>.<eq-number>>>>>
  </eqnarray*>

  By matching the coefficients of <math|\<omega\><rsub|\<rho\>\<sigma\>>> and
  <math|\<epsilon\><rsub|\<rho\>>> on both sides of the equation and
  employing (<reference|2.3.10>), we arrive at:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|U<around*|(|\<Lambda\>,a|)>J<rsup|\<rho\>\<sigma\>>U<rsup|-1><around*|(|\<Lambda\>,a|)>=\<Lambda\><rsub|\<mu\>><rsup|<text|
    \ \ >\<rho\>>\<Lambda\><rsub|\<nu\>><rsup|<text|
    \ \ >\<sigma\>><around*|(|J<rsup|\<mu\>\<nu\>>-a<rsup|\<mu\>>P<rsup|\<nu\>>+a<rsup|\<nu\>>P<rsup|\<mu\>>|)>,<eq-number><label|2.4.8>>>|<row|<cell|>|<cell|>|<cell|<hspace|0.09cm>U<around*|(|\<Lambda\>,a|)>P<rsup|\<rho\>>U<rsup|-1><around*|(|\<Lambda\>,a|)>=\<Lambda\><rsub|\<mu\>><rsup|<text|
    \ \ >\<rho\>>P<rsup|\<mu\>>.<eq-number><label|2.4.9>>>>>
  </eqnarray*>

  In the case of homogeneous Lorentz transformations where
  <math|a<rsup|\<mu\>>=0>, these transformation laws simply indicate that
  <math|J<rsup|\<mu\>\<nu\>>> behaves as a tensor and <math|P<rsup|\<mu\>>>
  as a vector. For pure translations, where
  <math|\<Lambda\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>=\<delta\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>>,
  these rules convey that <math|P<rsup|\<rho\>>> remains invariant under
  translation, while <math|J<rsup|\<rho\>\<sigma\>>> does not. Specifically,
  the alteration in the spatial components of <math|J<rsup|\<rho\>\<sigma\>>>
  due to a spatial translation corresponds to the conventional change in
  angular momentum when the point of reference for measuring angular momentum
  is shifted.

  Next, we consider the application of rules (<reference|2.4.8>) and
  (<reference|2.4.9>) to an infinitesimal transformation. Specifically, we
  take <math|\<Lambda\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>=\<delta\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>+\<omega\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>>
  and <math|a<rsup|\<mu\>>=\<epsilon\><rsup|\<mu\>>>, where the
  infinitesimals <math|\<omega\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>>
  and <math|\<epsilon\><rsup|\<mu\>>> are not related to the earlier
  <math|\<omega\>> and <math|\<epsilon\>>. Utilizing Equation
  (<reference|2.4.3>) and retaining only first-order terms in
  <math|\<omega\><rsub|<with|mode|text|<nbsp>>\<nu\>><rsup|\<mu\>>> and
  <math|\<epsilon\><rsup|\<mu\>>>, Equations (<reference|2.4.8>) and
  (<reference|2.4.9>) simplify to:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|i<around*|[|<small|<frac|1|2>>\<omega\><rsub|\<mu\>\<nu\>>J<rsup|\<mu\>\<nu\>>-\<epsilon\><rsub|\<mu\>>P<rsup|\<mu\>>,J<rsup|\<rho\>\<sigma\>>|]>=\<omega\><rsub|\<mu\>><rsup|<text|
    \ >\<rho\>>J<rsup|\<mu\>\<sigma\>>+\<omega\><rsub|\<nu\>><rsup|<text|
    \ >\<sigma\>>J<rsup|\<rho\>\<nu\>>-\<epsilon\><rsup|\<rho\>>P<rsup|\<sigma\>>+\<epsilon\><rsup|\<sigma\>>P<rsup|\<rho\>>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|<hspace|0.098cm>i<around*|[|<small|<frac|1|2>>\<omega\><rsub|\<mu\>\<nu\>>J<rsup|\<mu\>\<nu\>>-\<epsilon\><rsub|\<mu\>>P<rsup|\<mu\>>,P<rsup|\<rho\>>|]>=\<omega\><rsub|\<mu\>><rsup|<text|
    \ >\<rho\>>P<rsup|\<mu\>>.<eq-number>>>>>
  </eqnarray*>

  By isolating the coefficients of <math|\<omega\><rsub|\<mu\>\<nu\>>> and
  <math|\<epsilon\><rsub|\<mu\>>> on both sides of these equations, we derive
  the commutation relations:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|i<around*|[|J<rsup|\<mu\>\<nu\>>,J<rsup|\<rho\>\<sigma\>>|]>=\<eta\><rsup|\<nu\>\<rho\>>J<rsup|\<mu\>\<sigma\>>-\<eta\><rsup|\<mu\>\<rho\>>J<rsup|\<nu\>\<sigma\>>-\<eta\><rsup|\<sigma\>\<mu\>>J<rsup|\<rho\>\<nu\>>+\<eta\><rsup|\<sigma\>\<nu\>>J<rsup|\<rho\>\<mu\>>,<eq-number><label|2.4.12>>>|<row|<cell|>|<cell|>|<cell|<hspace|0.1cm>i<around*|[|P<rsup|\<mu\>>,J<rsup|\<rho\>\<sigma\>>|]>=\<eta\><rsup|\<mu\>\<rho\>>P<rsup|\<sigma\>>-\<eta\><rsup|\<mu\>\<sigma\>>P<rsup|\<rho\>>,<eq-number><label|2.4.13>>>|<row|<cell|>|<cell|>|<cell|<hspace|0.3cm><around*|[|P<rsup|\<mu\>>,P<rsup|\<rho\>>|]>=0.<eq-number><label|2.4.14>>>>>
  </eqnarray*>

  These equations define the Lie algebra of the Poincaré group.

  In quantum mechanics, particular importance is given to those operators
  that are conserved, meaning they commute with the energy operator
  <math|H=P<rsup|0>>. A review of Equations (<reference|2.4.13>) and
  (<reference|2.4.14>) reveals that these conserved operators include the
  momentum three-vector

  <\equation>
    <label|2.4.15>\<b-up-P\>=<around*|{|P<rsup|1>,P<rsup|2>,P<rsup|3>|}>
  </equation>

  and the angular-momentum three-vector

  <\equation>
    \<b-up-J\>=<around*|{|J<rsup|23>,J<rsup|31>,J<rsup|12>|}>
  </equation>

  as well as the energy <math|P<rsup|0>> itself. The other generators
  constitute what is termed the 'boost' three-vector

  <\equation>
    <label|2.4.17>\<b-up-K\>=<around*|{|J<rsup|10>,J<rsup|20>,J<rsup|30>|}>\<backassign\><around*|{|K<rsub|1>,K<rsub|2>,K<rsub|3>|}>.
  </equation>

  These are not conserved, which is why their eigenvalues are not employed to
  characterize physical states. Expressed in a three-dimensional notation,
  the commutation relations (<reference|2.4.12>), (<reference|2.4.13>), and
  (<reference|2.4.14>) can be represented as:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,J<rsub|j>|]>=i\<epsilon\><rsub|i
    j k>J<rsub|k>,<eq-number><label|2.4.18>>>|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,K<rsub|j>|]>=i\<epsilon\><rsub|i
    j k>K<rsub|k>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|<around*|[|K<rsub|i>,K<rsub|j>|]>=-i\<epsilon\><rsub|i
    j k>J<rsub|k>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,P<rsub|j>|]>=i\<epsilon\><rsub|i
    j k>P<rsub|k>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|<around*|[|K<rsub|i>,P<rsub|j>|]>=i
    H\<delta\><rsub|i j>,<eq-number><label|2.4.22>>>|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,H|]>=<around*|[|P<rsub|i>,H|]>=<around*|[|H,H|]>=0,<eq-number>>>|<row|<cell|>|<cell|>|<cell|<around*|[|K<rsub|i>,H|]>=i
    P<rsub|i>,<eq-number><label|2.4.24>>>>>
  </eqnarray*>

  Here, <math|i,j,k,\<ldots\>> take the values 1, 2, and 3, and
  <math|\<epsilon\><rsub|i j k>> is the completely antisymmetric quantity
  where <math|\<epsilon\><rsub|123>=+1>. The commutation relation
  (<reference|2.4.18>) is identified as belonging to the angular-momentum
  operator.

  Let us prove <eqref|2.4.22> and <eqref|2.4.24>. From <math|H=P<rsup|0>>,
  <eqref|2.4.13>, <eqref|2.4.15>, and <eqref|2.4.17>, we have

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|i<around*|[|P<rsup|j>,J<rsup|i0>|]>=\<eta\><rsup|j
    i>P<rsup|0>-\<eta\><rsup|j0>P<rsup|i>=\<delta\><rsub|i
    j>H<space|1em>\<Longrightarrow\><space|1em><around*|[|K<rsub|i>,P<rsub|j>|]>=i\<delta\><rsub|i
    j>,>>|<row|<cell|>|<cell|>|<cell|i<around*|[|P<rsup|0>,J<rsup|i0>|]>=\<eta\><rsup|0i>P<rsup|0>-\<eta\><rsup|00>P<rsup|i>=P<rsup|i><space|1em>\<Longrightarrow\><space|1em><around*|[|K<rsub|i>,H|]>=i
    P<rsub|i>.>>>>
  </eqnarray*>

  The subgroup of pure translations <math|T<around*|(|1,a|)>> is a part of
  the inhomogeneous Lorentz group, and its group multiplication rule, as
  defined by (<reference|2.3.7>), is

  <\equation>
    T<around*|(|1,<wide|a|\<bar\>>|)>T<around*|(|1,a|)>=T<around*|(|1,<wide|a|\<bar\>>+a|)>.
  </equation>

  This multiplication rule is additive, similar to what is described in
  Equation (<reference|2.2.24>). Employing Equation (<reference|2.4.3>) and
  revisiting the arguments that led to Equation (<reference|2.2.26>), we
  determine that finite translations in the physical Hilbert space are
  represented as

  <\equation>
    <label|2.4.26>U<around*|(|1,a|)>=exp<around*|(|-i
    P<rsup|\<mu\>>a<rsub|\<mu\>>|)>.
  </equation>

  Likewise, a rotation <math|R<rsub|\<b-theta\>>> through an angle
  <math|<around*|\||\<b-theta\>|\|>> around the direction specified by
  <math|\<b-theta\>> is represented in the physical Hilbert space as

  <\equation>
    U<around*|(|R<rsub|\<b-theta\>>,0|)>=exp<around*|(|i\<b-up-J\>\<cdummy\>\<b-theta\>|)>.
  </equation>

  \;

  Contrasting the Poincaré algebra with the Lie algebra of the Galilean
  group, the symmetry group for Newtonian mechanics, offers fascinating
  insights. While it is possible to derive the Galilean algebra beginning
  with its transformation rules and using the same methodology we used for
  the Poincaré algebra, a simpler path exists. Since we already possess Eqs.
  (<reference|2.4.18>)-(<reference|2.4.24>), we can more conveniently obtain
  the Galilean algebra as the Inönü-Wigner contraction of the Poincaré
  algebra in the low-velocity limit. For a set of particles with an average
  mass <math|m> and velocity <math|v>, we anticipate the momentum and
  angular-momentum operators to be of the order <math|\<b-up-J\>\<sim\>1>,
  <math|\<b-up-P\>\<sim\>m v>. On the flip side, the energy operator <math|H>
  is composed of a total mass <math|M> and a non-mass energy <math|W>
  (kinetic and potential), which are of the order <math|M\<sim\>m>,
  <math|W\<sim\>m v<rsup|2>>. Examining Eqs.
  (<reference|2.4.18>)-(<reference|2.4.24>) reveals that in the limit where
  <math|v\<ll\>1>, the commutation relations simplify to:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,J<rsub|j>|]>=i\<epsilon\><rsub|i
    j k>J<rsub|k>,<space|1em><around*|[|J<rsub|i>,K<rsub|j>|]>=i\<epsilon\><rsub|i
    j k>K<rsub|k>,<space|1em><around*|[|K<rsub|i>,K<rsub|j>|]>=0,>>|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,P<rsub|j>|]>=i\<epsilon\><rsub|i
    j k>P<rsub|k>,<space|1em><around*|[|K<rsub|i>,P<rsub|j>|]>=i
    M\<delta\><rsub|i j>,>>|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,W|]>=<around*|[|P<rsub|i>,W|]>=0,<space|1em><around*|[|K<rsub|i>,W|]>=i
    P<rsub|i>,>>|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|i>,M|]>=<around*|[|P<rsub|i>,M|]>=<around*|[|K<rsub|i>,M|]>=<around*|[|W,M|]>=0,>>>>
  </eqnarray*>

  where <math|\<b-up-K\>> scales as <math|1/v>. It's noteworthy that in
  Hilbert space, the sequence of operations involving a translation
  <math|\<b-up-x\>\<rightarrow\>\<b-up-x\>+\<b-up-a\>> and a 'boost'
  <math|\<b-up-x\>\<rightarrow\>\<b-up-x\>+\<b-up-v\>t> does not yield the
  expected transformation <math|\<b-up-x\>\<rightarrow\>\<b-up-x\>+\<b-up-v\>t+\<b-up-a\>>.
  Instead, we have:

  <\equation*>
    exp<around*|(|i\<b-up-K\>\<cdummy\>\<b-up-v\>|)>
    exp<around*|(|-i\<b-up-P\>\<cdummy\>\<b-up-a\>|)>=exp<around*|(|i
    M\<b-up-a\>\<cdummy\>\<b-up-v\>/2|)> exp<around*|(|i<around*|(|\<b-up-K\>\<cdummy\>\<b-up-v\>-\<b-up-P\>\<cdummy\>\<b-up-a\>|)>|)>.
  </equation*>

  The emergence of the phase factor <math|exp<around*|(|i
  M\<b-up-a\>\<cdummy\>\<b-up-v\>/2|)>> indicates that we are dealing with a
  projective representation, which comes with a superselection rule that
  precludes the mixing of states with different masses. In this aspect, the
  mathematical framework of the Poincaré group is less complex than that of
  the Galilean group. Nonetheless, it is entirely feasible to extend the
  Galilean group formally by introducing an additional generator to its Lie
  algebra. This new generator would commute with all existing generators and
  have eigenvalues corresponding to the masses of the different states. In
  such a scenario, physical states would be represented through an ordinary,
  rather than projective, representation of the augmented symmetry group.
  While this might seem like a minor change in notation, it effectively
  eliminates the necessity for a mass superselection rule within the
  reinterpreted Galilean group.

  <with|color|dark cyan|<section|One-Particle States>><label|Sec:2.5>

  We turn our attention to the categorization of single-particle states based
  on their transformation properties under the inhomogeneous Lorentz group.\ 

  Given that the components of the energy-momentum four-vector commute among
  themselves, it is logical to represent physical state-vectors using
  eigenvectors of the four-momentum. To do this, we introduce a label
  <math|\<sigma\>> to account for any additional degrees of freedom, leading
  us to consider state-vectors <math|\<Psi\><rsub|p,\<sigma\>>> such that

  <\equation>
    <label|2.5.1>P<rsup|\<mu\>>\<Psi\><rsub|p,\<sigma\>>=p<rsup|\<mu\>>\<Psi\><rsub|p,\<sigma\>>.
  </equation>

  For more complex states, like those comprising multiple free particles, the
  label <math|\<sigma\>> would need to accommodate both continuous and
  discrete values. In this discussion, we are focusing solely on one-particle
  states, whose definition includes that the label <math|\<sigma\>> is purely
  discrete. It is worth noting that specific bound states of two or more
  particles, like the ground state of a hydrogen atom, are also considered
  one-particle states in this context. While such states are not elementary
  particles, the distinction between composite and elementary particles is
  irrelevant for our current purposes.

  Equations <around*|(|<reference|2.5.1>|)> and
  <around*|(|<reference|2.4.26>|)> inform us about the transformation
  behavior of these states under homogeneous Lorentz transformations.

  Applying equation <around*|(|<reference|2.4.9>|)>, we find that when a
  quantum homogeneous Lorentz transformation
  <math|U<around*|(|\<Lambda\>,0|)>> or equivalently
  <math|U<around*|(|\<Lambda\>|)>> acts on <math|\<Psi\><rsub|p,\<sigma\>>>,
  it yields a four-momentum eigenvector with eigenvalue <math|\<Lambda\>p>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|P<rsup|\<mu\>>U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>=U<around*|(|\<Lambda\>|)><around*|[|U<rsup|-1><around*|(|\<Lambda\>|)>P<rsup|\<mu\>>U<around*|(|\<Lambda\>|)>|]>\<Psi\><rsub|p,\<sigma\>>=U<around*|(|\<Lambda\>|)><around*|(|\<Lambda\><rsup|-1><rsub|\<rho\>><rsup|\<mu\>>P<rsup|\<rho\>>|)>\<Psi\><rsub|p,\<sigma\>>>>|<row|<cell|>|<cell|>|<cell|<hspace|1.9cm>=\<Lambda\><rsup|\<mu\>><rsub|<text|
    >\<rho\>>p<rsup|\<rho\>>U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>.<eq-number>>>>>
  </eqnarray*>

  Therefore, <math|U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>> must
  be expressible as a linear combination of state-vectors
  <math|\<Psi\><rsub|\<Lambda\>p,\<sigma\><rsup|\<prime\>>>>:

  <\equation>
    <label|2.5.3>U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>=<big|sum><rsub|\<sigma\><rprime|'>>C<rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|\<Lambda\>,p|)>\<Psi\><rsub|\<Lambda\>p,\<sigma\><rprime|'>>.
  </equation>

  Generally, one might be able to construct suitable linear combinations of
  <math|\<Psi\><rsub|p,\<sigma\>>> such that the matrix
  <math|C<rsub|\<sigma\><rsup|\<prime\>>\<sigma\>><around*|(|\<Lambda\>,p|)>>
  becomes block-diagonal. In other words, <math|\<Psi\><rsub|p,\<sigma\>>>
  with <math|\<sigma\>> values within a single block could constitute a
  representation of the inhomogeneous Lorentz group on their own. It makes
  sense to associate the states of a particular particle type with components
  of an irreducible representation of the inhomogeneous Lorentz group,
  meaning it can't be further broken down in this manner.

  It should be noted that different types of particles may be related to
  isomorphic representations, which means their matrices
  <math|C<rsub|\<sigma\><rsup|\<prime\>>\<sigma\>><around*|(|\<Lambda\>,p|)>>
  could be identical or transformed into one another by a similarity
  transformation. In certain scenarios, particle types might be defined as
  irreducible representations of larger groups, which include the
  inhomogeneous proper orthochronous Lorentz group as a subgroup. For
  example, for massless particles whose interactions are invariant under
  space inversion, it's common to treat all components of an irreducible
  representation of the inhomogeneous Lorentz group as a single particle
  type.

  The next step in our investigation is to elucidate the structure of the
  coefficients <math|C<rsub|\<sigma\><rsup|\<prime\>>\<sigma\>><around*|(|\<Lambda\>,p|)>>
  in irreducible representations of the inhomogeneous Lorentz group.

  For our objectives, it's crucial to recognize that the only functions of
  <math|p<rsup|\<mu\>>> left invariant by all proper orthochronous Lorentz
  transformations <math|\<Lambda\><rsub|\<nu\>><rsup|\<mu\>>> are the
  invariant square <math|p<rsup|2>\<equiv\>\<eta\><rsub|\<mu\>\<nu\>>p<rsup|\<mu\>>p<rsup|\<nu\>>>,
  and for <math|p<rsup|2>\<leq\>0>, also the sign of <math|p<rsup|0>>.
  Therefore, for each specific value of <math|p<rsup|2>>, and when
  <math|p<rsup|2>\<leq\>0>, each sign of <math|p<rsup|0>>, we can select a
  'standard' four-momentum denoted as <math|k<rsup|\<mu\>>>. Any
  <math|p<rsup|\<mu\>>> within this category can then be represented as

  <\equation>
    p<rsup|\<mu\>>=L<rsup|\<mu\>><rsub|<text|
    \ >\<nu\>><around*|(|p|)>k<rsup|\<nu\>>,
  </equation>

  \ where <math|L<rsub|<text| \ >\<nu\>><rsup|\<mu\>>> is a particular
  standard Lorentz transformation depending on <math|p<rsup|\<mu\>>> and,
  implicitly, on our chosen standard <math|k<rsup|\<mu\>>>. Consequently, the
  states <math|\<Psi\><rsub|p,\<sigma\>>> having momentum <math|p> can be
  defined as

  <\equation>
    <label|2.5.5>\<Psi\><rsub|p,\<sigma\>>\<equiv\>N<around*|(|p|)>U<around*|(|L<around*|(|p|)>|)>\<Psi\><rsub|k,\<sigma\>>,
  </equation>

  where <math|N<around*|(|p|)>> is a numerical normalization factor, the
  specifics of which will be determined later. Up to this juncture, no
  details have been provided about how the <math|\<sigma\>> labels are
  connected across varying momenta; Equation (<reference|2.5.5>) now
  addresses this absence.

  When applying an arbitrary homogeneous Lorentz transformation
  <math|U<around*|(|\<Lambda\>|)>> to equation (<reference|2.5.5>), we
  obtain:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>=N<around*|(|p|)>U<around*|(|\<Lambda\>L<around*|(|p|)>|)>\<Psi\><rsub|k,\<sigma\>>>>|<row|<cell|>|<cell|>|<cell|<space|5em><hspace|0.03399cm>=N<around*|(|p|)>U<around*|(|L<around*|(|\<Lambda\>p|)>|)>U<around*|(|L<rsup|-1><around*|(|\<Lambda\>p|)>\<Lambda\>L<around*|(|p|)>|)>\<Psi\><rsub|k,\<sigma\>>.<eq-number><label|2.5.6>>>>>
  </eqnarray*>

  The purpose of this last step is to show that the Lorentz transformation
  <math|L<rsup|\<minus\>1><around*|(|\<Lambda\>p|)>\<Lambda\>L<around*|(|p|)>>
  first maps <math|k> to <math|L<around*|(|p|)>k=p>, then to
  <math|\<Lambda\>p>, and finally back to <math|k>. This transformation
  belongs to a subgroup within the homogeneous Lorentz group, characterized
  by Lorentz transformations <math|W<rsup|\<mu\>><rsub|<text| \ >\<nu\>>>
  that keep <math|k<rsup|\<mu\>>> invariant:

  <\equation>
    <label|2.5.7>W<rsup|\<mu\>><rsub|<text|
    \ >\<nu\>>k<rsup|\<nu\>>=k<rsup|\<mu\>>.
  </equation>

  \ This subgroup is termed the little group. For any <math|W> that satisfies
  Equation (<reference|2.5.7>), we find that:

  <\equation>
    <label|2.5.8>U<around*|(|W|)>\<Psi\><rsub|k,\<sigma\>>=<big|sum><rsub|\<sigma\><rprime|'>>D<rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|W|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>.
  </equation>

  The coefficients <math|D<around*|(|W|)>> serve as a representation of the
  little group. Specifically, for any elements <math|<wide|W|\<bar\>>>,
  <math|W> the relationship

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<big|sum><rsub|\<sigma\><rprime|'>>D<rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|<wide|W|\<bar\>>W|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>=U<around*|(|<wide|W|\<bar\>>W|)>\<Psi\><rsub|k,\<sigma\>>=U<around*|(|<wide|W|\<bar\>>|)>U<around*|(|W|)>\<Psi\><rsub|k,\<sigma\>>>>|<row|<cell|>|<cell|>|<cell|<space|2em>=U<around*|(|<wide|W|\<bar\>>|)><big|sum><rsub|\<sigma\><rprime|''>>D<rsub|\<sigma\><rprime|''>\<sigma\>><around*|(|W|)>\<Psi\><rsub|k,\<sigma\><rprime|''>>=<big|sum><rsub|\<sigma\><rprime|'>\<sigma\><rprime|''>>D<rsub|\<sigma\><rprime|''>\<sigma\>><around*|(|W|)>D<rsub|\<sigma\><rprime|'>\<sigma\><rprime|''>><around*|(|<wide|W|\<bar\>>|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>>>>>
  </eqnarray*>

  is satisfied, and hence

  <\equation>
    D<rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|<wide|W|\<bar\>>W|)>=<big|sum><rsub|\<sigma\><rprime|''>>D<rsub|\<sigma\><rprime|'>\<sigma\><rprime|''>><around*|(|<wide|W|\<bar\>>|)>D<rsub|\<sigma\><rprime|''>\<sigma\>><around*|(|W|)>.
  </equation>

  Particularly, we can apply Equation (<reference|2.5.8>) to the little-group
  transformation

  <\equation>
    <label|2.5.10>W<around*|(|\<Lambda\>,p|)>\<equiv\>L<rsup|-1><around*|(|\<Lambda\>p|)>\<Lambda\>L<around*|(|p|)>
  </equation>

  resulting in:

  <\equation*>
    U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>=N<around*|(|p|)><big|sum><rsub|\<sigma\><rprime|'>>D<rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|W<around*|(|\<Lambda\>,p|)>|)>U<around*|(|L<around*|(|\<Lambda\>p|)>|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>,
  </equation*>

  or, recalling definition (<reference|2.5.5>):

  <\equation>
    <label|2.5.11>U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>=<around*|(|<frac|N<around*|(|p|)>|N<around*|(|\<Lambda\>p|)>>|)><big|sum><rsub|\<sigma\><rprime|'>>D<rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|W<around*|(|\<Lambda\>,p|)>|)>\<Psi\><rsub|\<Lambda\>p,\<sigma\><rprime|'>>.
  </equation>

  Aside from normalization issues, the task of identifying the coefficients
  <math|C<rsub|\<sigma\><rprime|'>\<sigma\>>> in transformation rule
  (<reference|2.5.3>) has now been distilled down to finding the
  representations of the little group. This technique, which involves
  deriving representations of a larger group like the inhomogeneous Lorentz
  group from the representations of its little group, is known as the method
  of induced representations.

  <\big-table>
    <tabular|<tformat|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|3|3|cell-rborder|0ln>|<cwith|2|2|1|-1|cell-bborder|0ln>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|3|3|1|2|cell-tborder|0ln>|<cwith|2|2|1|2|cell-bborder|0ln>|<cwith|3|3|1|2|cell-bborder|0ln>|<cwith|4|4|1|2|cell-tborder|0ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|2|2|cell-rborder|0ln>|<cwith|3|3|3|3|cell-lborder|0ln>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|7|7|1|-1|cell-tborder|0ln>|<cwith|6|6|1|-1|cell-bborder|0ln>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|7|7|1|1|cell-lborder|0ln>|<cwith|7|7|3|3|cell-rborder|0ln>|<table|<row|<cell|>|<cell|Standard
    <math|k<rsup|\<mu\>>>>|<cell|Little Group>>|<row|<cell|(a)
    <math|p<rsup|2>=-M<rsup|2>\<less\>0,p<rsup|0>\<gtr\>0>>|<cell|<math|(0,0,0,M)>>|<cell|<math|S
    O<around*|(|3|)>>>>|<row|<cell|(b) <math|p<rsup|2>=-M<rsup|2>\<less\>0,p<rsup|0>\<less\>0>>|<cell|<math|(0,0,0,-M)>>|<cell|<math|S
    O<around*|(|3|)>>>>|<row|<cell|(c) <math|p<rsup|2>=0>,
    <math|p<rsup|0>\<gtr\>0>>|<cell|<math|<around*|(|0,0,\<kappa\>,\<kappa\>|)>>>|<cell|<math|I
    S O<around*|(|2|)>>>>|<row|<cell|(d) <math|p<rsup|2>=0>,
    <math|p<rsup|0>\<less\>0>>|<cell|<math|<around*|(|0,0,\<kappa\>,-\<kappa\>|)>>>|<cell|<math|I
    S O<around*|(|2|)>>>>|<row|<cell|(e) <math|p<rsup|2>=N<rsup|2>\<gtr\>0>>|<cell|<math|<around*|(|0,0,N,0|)>>>|<cell|<math|S
    O<around*|(|2,1|)>>>>|<row|<cell|(f) <math|p<rsup|\<mu\>>=0>>|<cell|<math|<around*|(|0,0,0,0|)>>>|<cell|<math|S
    O<around*|(|3,1|)>>>>>>>
  <|big-table>
    <label|Tab:2.1> Standard four-momenta and their associated little groups
    for different categories of four-momenta are discussed. In this context,
    <math|\<kappa\>> represents an arbitrary positive energy, for instance, 1
    eV. The little groups are generally straightforward to understand:
    <math|S O<around*|(|3|)>> is the regular three-dimensional rotation group
    that comprises Lorentz transformations which keep a zero-momentum
    particle stationary. Meanwhile, <math|S O<around*|(|2,1|)>> and <math|S
    O<around*|(|3,1|)>> are Lorentz groups in (2+1)-dimensions and
    (3+1)-dimensions, respectively. The group <math|I S O<around*|(|2|)>> is
    the set of transformations in Euclidean geometry, which includes both
    rotations and translations in two dimensions. Its role as the little
    group for cases where <math|p<rsup|2>=0> will be elaborated on later.
  </big-table>

  Table <reference|Tab:2.1> provides a suitable selection for the standard
  four-momentum <math|k<rsup|\<mu\>>> along with the associated little group
  for different categories of four-momenta.

  Out of the six categories of four-momenta, only types (a), (c), and (f)
  have any recognized implications for physical states. For class (f) \V
  where <math|p<rsup|\<mu\>>=0>\Vit pertains to the vacuum state, which is
  essentially unchanged by <math|U<around*|(|\<Lambda\>|)>>. Our subsequent
  discussion will be confined to cases (a) and (c), which correspond to
  particles with mass <math|M\<gtr\>0> and massless particles, respectively.

  Now is an appropriate time to discuss the normalization of these states.
  Employing the standard orthonormalization procedure from quantum mechanics,
  we can select states with standard momentum <math|k<rsup|\<mu\>>> to be
  orthonormal as denoted by the equation:

  <\equation>
    <label|2.5.12><around*|(|\<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>,\<Psi\><rsub|k,\<sigma\>>|)>=\<delta\><rsup|3><around*|(|\<b-up-k\><rprime|'>-\<b-up-k\>|)>\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>>.
  </equation>

  (Let me remark that <math|k> is the standard momentum and
  <math|k<rprime|'>> runs over all possibilities such that
  <math|k<rprime|'><rsup|2>=k<rsup|2>>, so, for example, we can not use
  <eqref|2.5.12> to calculate <math|<around*|(|\<Psi\><rsub|<around*|(|0,0,0,M+1|)>,\<sigma\>>,\<Psi\><rsub|<around*|(|0,0,0,M|)>,\<sigma\>>|)>>.
  Also <math|\<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>> and
  <math|\<Psi\><rsub|k,\<sigma\>>> are normalized such that <eqref|2.5.12>
  holds) The presence of the delta function arises because
  <math|\<Psi\><rsub|k,\<sigma\>>> and <math|\<Psi\><rsub|k<rsup|\<prime\>>,\<sigma\><rsup|\<prime\>>>>
  are eigenstates of a Hermitian operator with eigenvalues <math|\<b-up-k\>>
  and <math|\<b-up-k\><rprime|'>>, respectively. As a direct outcome, the
  representation of the little group in Eqs. (<reference|2.5.8>) and
  (<reference|2.5.11>) must be unitary<rsup|>.

  <\equation>
    D<rsup|\<dag\>><around*|(|W|)>=D<rsup|-1><around*|(|W|)>.
  </equation>

  For <math|p<rsup|2>\<gtr\>0> and <math|p<rsup|\<mu\>>=0>, the little groups
  <math|S O<around*|(|2,1|)>> and <math|S O<around*|(|3,1|)>> do not possess
  any non-trivial finite-dimensional unitary representations. Hence, if there
  were states with a specific momentum <math|p<rsup|\<mu\>>> having
  <math|p<rsup|2>\<gtr\>0> or <math|p<rsup|\<mu\>>=0> that non-trivially
  transform under the little group, an infinite number of such states would
  be required.

  Regarding the scalar products for generic momenta, the unitarity of the
  operator <math|U<around*|(|\<Lambda\>|)>> as expressed in Eqs.
  (<reference|2.5.5>) and (<reference|2.5.11>) provides the following formula
  for the scalar product:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|(|\<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>,\<Psi\><rsub|p,\<sigma\>>|)>=N<around*|(|p|)><around*|(|U<rsup|-1><around*|(|L<around*|(|p|)>|)>\<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>,\<Psi\><rsub|k,\<sigma\>>|)>>>|<row|<cell|>|<cell|>|<cell|<hspace|1.85cm>=N<around*|(|p|)><around*|(|U<rsup|-1><around*|(|L<around*|(|p|)>|)><around*|(|<frac|N<around*|(|p<rprime|'>|)>|N<around*|(|L<rsup|-1><around*|(|p|)>p<rprime|'>|)>>U<around*|(|L<around*|(|p|)>|)>\<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>|)>,\<Psi\><rsub|k,\<sigma\>>|)>>>|<row|<cell|>|<cell|>|<cell|<hspace|1.85cm>=<frac|N<around*|(|p|)>N<rsup|\<ast\>><around*|(|p<rprime|'>|)>|N<rsup|\<ast\>><around*|(|L<rsup|-1><around*|(|p|)>p<rprime|'>|)>>\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>>\<delta\><rsup|3><around*|(|\<b-up-k\><rprime|'>-\<b-up-k\>|)>>>>>
  </eqnarray*>

  Here, <math|k<rprime|'>\<equiv\>L<rsup|\<minus\>1><around*|(|p|)>p<rprime|'>>
  (Hence, <math|k<rprime|'>=L<rsup|-1><around*|(|p|)>L<around*|(|p<rprime|'>|)>k>).
  (Let me remark that <math|N<around*|(|p<rprime|'>|)>> here is just the one
  in

  <\equation*>
    \<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>=N<around*|(|p<rprime|'>|)>U<around*|(|L<around*|(|p<rprime|'>|)>|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>,
  </equation*>

  although here we use

  <\equation*>
    \<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>=<frac|N<around*|(|p<rprime|'>|)>|N<around*|(|L<rsup|-1><around*|(|p|)>p<rprime|'>|)>>U<around*|(|L<around*|(|p|)>|)>\<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>.
  </equation*>

  This is correct as

  <\equation*>
    \<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>=N<around*|(|k<rprime|'>|)>U<around*|(|L<around*|(|k<rprime|'>|)>|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>=N<around*|(|L<rsup|-1><around*|(|p|)>p<rprime|'>|)>U<around*|(|L<rsup|-1><around*|(|p|)>L<around*|(|p<rprime|'>|)>|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>,
  </equation*>

  which gives

  <\equation*>
    \<Psi\><rsub|k,\<sigma\><rprime|'>>=<frac|1|N<around*|(|L<rsup|-1><around*|(|p|)>p<rprime|'>|)>>U<around*|(|L<rsup|-1><around*|(|p|)>L<around*|(|p<rprime|'>|)>|)><rsup|-1>\<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>,
  </equation*>

  thereby getting

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|\<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>=N<around*|(|p<rprime|'>|)>U<around*|(|L<around*|(|p<rprime|'>|)>|)>\<Psi\><rsub|k,\<sigma\><rprime|'>>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=N<around*|(|p<rprime|'>|)>U<around*|(|L<around*|(|p<rprime|'>|)>|)><frac|1|N<around*|(|L<rsup|-1><around*|(|p|)>p<rprime|'>|)>>U<around*|(|L<rsup|-1><around*|(|p|)>L<around*|(|p<rprime|'>|)>|)><rsup|-1>\<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<frac|N<around*|(|p<rprime|'>|)>|N<around*|(|L<rsup|-1><around*|(|p|)>p<rprime|'>|)>>U<around*|(|L<around*|(|p|)>|)>\<Psi\><rsub|k<rprime|'>,\<sigma\><rprime|'>>.>>>>
  </eqnarray*>

  Since <math|k=L<rsup|\<minus\>1><around*|(|p|)>p> as well, the delta
  function <math|\<delta\><rsup|3><around*|(|k\<minus\>k<rprime|'>|)>> is
  proportional to <math|\<delta\><rsup|3><around*|(|p\<minus\>p<rprime|'>|)>>.
  The presence of <math|\<delta\><around*|(|\<b-up-k\><rprime|'>-\<b-up-k\>|)>>
  implies that only the coefficient when <math|p=p<rprime|'>> matters, as
  otherwise the inner product vanishes. Hence, with
  <math|N<around*|(|k|)>=1>, we have

  <\equation>
    <around*|(|\<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>,\<Psi\><rsub|p,\<sigma\>>|)>=<around*|\||N<around*|(|p|)>|\|><rsup|2>\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>>\<delta\><rsup|3><around*|(|\<b-up-k\><rprime|'>-\<b-up-k\>|)>.
  </equation>

  The next step involves determining the proportionality factor that links
  <math|\<delta\><rsup|3><around*|(|k\<minus\>k<rprime|'>|)>> to
  <math|\<delta\><rsup|3><around|(|p\<minus\>p\<prime\>|)>>.

  When integrating an arbitrary scalar function <math|f<around*|(|p|)>> over
  four-momenta subject to <math|\<minus\>p<rsup|2>=M<rsup|2>\<geq\>0> and
  <math|p<rsup|0>\<gtr\>0> (corresponding to cases (a) or (c)), the
  Lorentz-invariant integral takes the form:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<big|int>d<rsup|4>p
    \<delta\><around*|(|p<rsup|2>+M<rsup|2>|)>\<theta\><around*|(|p<rsup|0>|)>f<around*|(|p|)>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<big|int>d<rsup|3>\<b-up-p\>
    d p<rsup|0>\<delta\><around*|(|<around*|(|p<rsup|0>|)><rsup|2>-\<b-up-p\><rsup|2>-M<rsup|2>|)>\<theta\><around*|(|p<rsup|0>|)>f<around*|(|\<b-up-p\>,p<rsup|0>|)>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<big|int>d<rsup|3>\<b-up-p\><frac|f<around*|(|\<b-up-p\>,<sqrt|\<b-up-p\><rsup|2>+M<rsup|2>>|)>|2<sqrt|\<b-up-p\><rsup|2>+M<rsup|2>>>>>>>
  </eqnarray*>

  Here, <math|\<theta\><around*|(|p<rsup|0>|)>> is the step function:
  <math|\<theta\><around*|(|x|)>=1> for <math|x\<geq\>0> and
  <math|\<theta\><around*|(|x|)>=0> for <math|x\<less\>0>.

  When integrating over the 'mass shell' <math|p<rsup|2>+M<rsup|2>=0>, the
  invariant volume element becomes:

  <\equation>
    d<rsup|3>\<b-up-p\>/<sqrt|\<b-up-p\><rsup|2>+M<rsup|2>>.
  </equation>

  By the definition of the delta function,

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|F<around*|(|\<b-up-p\>|)>=<big|int>F<around*|(|\<b-up-p\><rprime|'>|)>\<delta\><rsup|3><around*|(|\<b-up-p\>-\<b-up-p\><rprime|'>|)>d<rsup|3>\<b-up-p\><rprime|'>>>|<row|<cell|>|<cell|>|<cell|<hspace|0.7cm>=<big|int>F<around*|(|\<b-up-p\><rprime|'>|)><around*|[|<sqrt|\<b-up-p\><rprime|'><rsup|2>+M<rsup|2>>\<delta\><rsup|3><around*|(|\<b-up-p\><rprime|'>-\<b-up-p\>|)>|]><frac|d<rsup|3>\<b-up-p\><rprime|'>|<sqrt|\<b-up-p\><rprime|'><rsup|2>+M<rsup|2>>>,>>>>
  </eqnarray*>

  we find that the invariant delta function is

  <\equation>
    <sqrt|\<b-up-p\><rprime|'><rsup|2>+M<rsup|2>>\<delta\><rsup|3><around*|(|\<b-up-p\><rprime|'>-\<b-up-p\>|)>=p<rsup|0>\<delta\><rsup|3><around*|(|\<b-up-p\><rprime|'>-\<b-up-p\>|)>.
  </equation>

  Given that <math|p\<prime\>> and <math|p> are connected to
  <math|k\<prime\>> and <math|k> through a Lorentz transformation
  <math|L<around*|(|p|)>>, we arrive at the following equation:

  <\equation*>
    p<rsup|0>\<delta\><rsup|3><around*|(|\<b-up-p\><rprime|'>-\<b-up-p\>|)>=k<rsup|0>\<delta\><rsup|3><around*|(|\<b-up-k\><rprime|'>-\<b-up-k\>|)>
  </equation*>

  Consequently, the scalar product becomes:

  <\equation>
    <around*|(|\<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>,\<Psi\><rsub|p,\<sigma\>>|)>=<around*|\||N<around*|(|p|)>|\|><rsup|2>\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|<frac|p<rsup|0>|k<rsup|0>>|)>\<delta\><rsup|3><around*|(|\<b-up-p\><rprime|'>-\<b-up-p\>|)>.
  </equation>

  The normalization constant <math|N<around*|(|p|)>> is occasionally set to
  <math|N<around*|(|p|)>=1>. However, in doing so, one would need to account
  for the <math|p<rsup|0>/k<rsup|0>> term in scalar products. In this
  context, we will use the more common convention where:

  <\equation>
    N<around*|(|p|)>=<sqrt|k<rsup|0>/p<rsup|0>>
  </equation>

  With this choice, the scalar product simplifies to:

  <\equation>
    <around*|(|\<Psi\><rsub|p<rprime|'>,\<sigma\><rprime|'>>,\<Psi\><rsub|p,\<sigma\>>|)>=\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>>\<delta\><rsup|3><around*|(|\<b-up-p\><rprime|'>-\<b-up-p\>|)>.
  </equation>

  Next, we turn our attention to the two physically relevant cases: particles
  with mass <math|M\<gtr\>0> and particles with zero mass.

  <with|color|dark cyan|<subsection|Mass Positive-Definite>>

  In this context, the little group is represented by the three-dimensional
  rotation group. Its unitary representations can be decomposed into a direct
  sum of irreducible unitary representations, denoted by
  <math|D<rsub|\<sigma\><rsup|\<prime\>>\<sigma\>><rsup|<around*|(|j|)>><around*|(|R|)>>,
  having dimensions of <math|2j+1>, where <math|j> takes values 0,
  <math|<small|<frac|1|2>>>, 1, etc. These representations can be constructed
  from the standard matrices for infinitesimal rotations <math|R<rsub|i
  k>=\<delta\><rsub|i k>+\<Theta\><rsub|i k>>, where <math|\<Theta\><rsub|i
  k>=\<minus\>\<Theta\><rsub|k i>> is infinitesimal. The representation is
  given by:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|D<rsup|<around*|(|j|)>><rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|1+\<Theta\>|)>=\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>>+<frac|i|2>\<Theta\><rsub|i
    k><around*|(|J<rsup|<around*|(|j|)>><rsub|i
    k>|)><rsub|\<sigma\><rprime|'>\<sigma\>>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|<around*|(|J<rsup|<around*|(|j|)>><rsub|23>\<pm\>i
    J<rsup|<around*|(|j|)>><rsub|31>|)><rsub|\<sigma\><rprime|'>\<sigma\>>=<around*|(|J<rsup|<around*|(|j|)>><rsub|1>\<pm\>i
    J<rsup|<around*|(|j|)>><rsub|2>|)><rsub|\<sigma\><rprime|'>\<sigma\>>>>|<row|<cell|>|<cell|>|<cell|=\<delta\><rsub|\<sigma\><rprime|'>,\<sigma\>\<pm\>1><sqrt|<around*|(|j\<mp\>\<sigma\>|)><around*|(|j\<pm\>\<sigma\>+1|)>>,<eq-number>>>|<row|<cell|>|<cell|>|<cell|<around*|(|J<rsup|<around*|(|j|)>><rsub|12>|)><rsub|\<sigma\><rprime|'>\<sigma\>>=<around*|(|J<rsup|<around*|(|j|)>><rsub|3>|)><rsub|\<sigma\><rprime|'>\<sigma\>>=\<sigma\>\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>>,<eq-number>>>>>
  </eqnarray*>

  where <math|\<sigma\>> varies over the set
  <math|j,j\<minus\>1,\<ldots\>,\<minus\>j>. <math|\<sigma\>> gives the
  component of angular momentum in the three-axis. For a particle having mass
  <math|M\<gtr\>0> and spin <math|j>, Equation (<reference|2.5.11>) is
  transformed to:

  <\equation>
    U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>=<sqrt|<frac|<around*|(|\<Lambda\>p|)><rsup|0>|p<rsup|0>>><big|sum><rsub|\<sigma\><rprime|'>>D<rsup|<around*|(|j|)>><rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|W<around*|(|\<Lambda\>,p|)>|)>\<Psi\><rsub|\<Lambda\>p,\<sigma\><rprime|'>>,
  </equation>

  Here, the little-group element <math|W<around*|(|\<Lambda\>,p|)>> \V often
  referred to as the Wigner rotation \V is given by Equation
  (<reference|2.5.10>) as:

  <\equation*>
    W<around*|(|\<Lambda\>,p|)>=L<rsup|-1><around*|(|\<Lambda\>p|)>\<Lambda\>L<around*|(|p|)>.
  </equation*>

  Let

  <\equation*>
    \<gamma\>=<frac|1|<sqrt|1-<around*|\||\<b-up-v\>|\|><rsup|2>>>
  </equation*>

  be the Lorentz factor (w.r.t the particle with 4-momentum
  <math|<around*|(|0,0,0,M|)>>). Note that the relativistic mass with
  4-momentum <math|p> (w.r.t the particle with 4-momentum
  <math|<around*|(|0,0,0,M|)>>) is

  <\equation*>
    M<around*|(|p|)>=\<gamma\>M.
  </equation*>

  Hence, together with\ 

  <\equation*>
    \<b-up-p\>=M<around*|(|p|)>\<b-up-v\>.
  </equation*>

  we can rewrite the Lorentz factor to be

  <\equation*>
    \<gamma\>=<frac|1|<sqrt|1-<frac|\<b-up-p\><rsup|2>|\<gamma\><rsup|2>M<rsup|2>>>>,
  </equation*>

  which gives

  <\equation*>
    \<gamma\>=<frac|<sqrt|M<rsup|2>+\<b-up-p\><rsup|2>>|M>.
  </equation*>

  Let

  <\equation*>
    <wide|p|^><rsub|i>=<frac|p<rsub|i>|<around*|\||\<b-up-p\>|\|>>.
  </equation*>

  Then a choice of <math|L<around*|(|p|)>> that take
  <math|k=<around*|(|0,0,0,M|)>> to <math|p> could be

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|L<rsup|i><rsub|<text|
    \ >k>=\<delta\><rsub|i k>+<around*|(|\<gamma\>-1|)><wide|p|^><rsub|i><wide|p|^><rsub|k>,>>|<row|<cell|>|<cell|>|<cell|L<rsup|i><rsub|<text|
    \ >0>=L<rsup|0><rsub|<text| \ >i>=<wide|p|^><rsub|i><sqrt|\<gamma\><rsup|2>-1>,>>|<row|<cell|>|<cell|>|<cell|L<rsup|0><rsub|<text|
    \ >0>=\<gamma\>.>>>>
  </eqnarray*>

  Then from this we can determine the Wigner rotation and hence the
  representation with spin <math|j>, <math|D<rsup|<around*|(|j|)>><rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|W<around*|(|\<Lambda\>,p|)>|)>>.

  <with|color|dark cyan|<subsection|Mass Zero>>

  Note that an infinitesimal rotation around the two-axis
  <math|\<alpha\>J<rsub|2>> followed by an infinitesimal boost along the
  one-axis <math|\<alpha\>K<rsub|1>> leaves <math|<around*|(|0,0,1,1|)>>
  unchange as

  <\equation*>
    <around*|(|0,0,1,1|)><above|\<longmapsto\>|\<alpha\>J<rsub|2>><around*|(|\<alpha\>,0,1,1|)><above|\<longmapsto\>|\<alpha\>K<rsub|1>><around*|(|\<alpha\>-\<alpha\>,0,1,1|)>.
  </equation*>

  Also an infinitesimal rotation around the two-axis
  <math|-\<beta\>J<rsub|1>> followed by an infinitesimal boost along the
  one-axis <math|\<beta\>K<rsub|2>> leaves <math|<around*|(|0,0,1,1|)>>
  unchange. And clearly, an infinitesimal rotation around the three axis
  <math|\<theta\>J<rsub|3>> leaves <math|(0,0,1,1)>. Hence, an infinitesimal
  small group transformation can be rewritten as

  <\equation*>
    U<around*|(|W<around*|(|\<theta\>,\<alpha\>,\<beta\>|)>|)>=1+i\<alpha\>A+i\<beta\>B+i\<theta\>J<rsub|3>,
  </equation*>

  where

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|A=J<rsub|2>+K<rsub|1>,>>|<row|<cell|>|<cell|>|<cell|B=-J<rsub|1>+K<rsub|2>.>>>>
  </eqnarray*>

  We see that the commutators for these generators are

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|3>,A|]>=i
    B,>>|<row|<cell|>|<cell|>|<cell|<around*|[|J<rsub|3>,B|]>=-i
    A,>>|<row|<cell|>|<cell|>|<cell|<around*|[|A,B|]>=0.>>>>
  </eqnarray*>

  Hence, we simultaneously diagonalized <math|A> and <math|B> by their
  eigenstates <math|\<Psi\><rsub|k,a,b>> such that

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|A\<Psi\><rsub|k,a,b>=a\<Psi\><rsub|k,a,b>,>>|<row|<cell|>|<cell|>|<cell|B\<Psi\><rsub|k,a,b>=b\<Psi\><rsub|k,a,b>.>>>>
  </eqnarray*>

  However, if one of <math|a> and <math|b> is not zero, then we can find a
  continuum of spectrum of <math|A> and <math|B>, i.e.

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|A
    U<rsup|-1><around*|(|R<around*|(|\<theta\><rprime|'>|)>|)>\<Psi\><rsub|k,a,b>=<around*|(|a
    cos \<theta\><rprime|'>-b sin \<theta\><rprime|'>|)>U<rsup|-1><around*|(|R<around*|(|\<theta\><rprime|'>|)>|)>\<Psi\><rsub|k,a,b>,>>|<row|<cell|>|<cell|>|<cell|B
    U<rsup|-1><around*|(|R<around*|(|\<theta\><rprime|'>|)>|)>\<Psi\><rsub|k,a,b>=<around*|(|a
    sin \<theta\><rprime|'>+b cos \<theta\><rprime|'>|)>U<rsup|-1><around*|(|R<around*|(|\<theta\><rprime|'>|)>|)>\<Psi\><rsub|k,a,b>,>>>>
  </eqnarray*>

  where

  <\equation*>
    R<around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|cos
    \<theta\><rprime|'>>|<cell|sin \<theta\><rprime|'>>|<cell|0>|<cell|0>>|<row|<cell|-sin
    \<theta\><rprime|'>>|<cell|cos \<theta\><rprime|'>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,
  </equation*>

  which contradicts to our assumption that <math|\<sigma\>> is of discrete
  (experiment does not find a continuum of <math|\<sigma\>> for one-particle
  states). Hence, for physical states, we must have

  <\equation*>
    a=b=0.
  </equation*>

  (For the case when <math|a\<neq\>0> or <math|b\<neq\>0>, see
  arXiv:1302.1198.) Hence, for a physical state
  <math|\<Psi\><rsub|k,\<sigma\>>>, we must have

  <\equation*>
    A\<Psi\><rsub|k,\<sigma\>>=B\<Psi\><rsub|k,\<sigma\>>=0.
  </equation*>

  Here <math|\<sigma\>> is assumed to be the eigenvalue of <math|J<rsub|3>>
  (now that <math|a=b=0>, <math|\<Psi\><rsub|k,\<sigma\>>> is a common
  eigenstate for both <math|A>, <math|B>, and <math|J<rsub|3>>, although
  neither <math|A> and <math|J<rsub|3>> commute nor <math|B> and
  <math|J<rsub|3>>), such that

  <\equation*>
    J<rsub|3>\<Psi\><rsub|k,\<sigma\>>=\<sigma\>\<Psi\><rsub|k,\<sigma\>>.
  </equation*>

  Note that <math|\<b-up-k\>> is in the three-axis, <math|\<sigma\>> gives
  the component of angular momentum in the direction of motion.
  <math|\<sigma\>> is called the <em|helicity>.

  We are now ready to find the representation of the little group.

  <\equation*>
    U<around*|(|W<around*|(|\<theta\>,\<alpha\>,\<beta\>|)>|)>\<Psi\><rsub|k,\<sigma\>>=e<rsup|i\<alpha\>A+i\<beta\>B>e<rsup|i\<theta\>J<rsub|3>>\<Psi\><rsub|k,\<sigma\>>=e<rsup|i\<theta\>\<sigma\>>\<Psi\><rsub|k,\<sigma\>>.
  </equation*>

  Hence,

  <\equation*>
    D<rsub|\<sigma\><rprime|'>\<sigma\>><around*|(|W<around*|(|\<theta\>,\<alpha\>,\<beta\>|)>|)>=\<delta\><rsub|\<sigma\><rprime|'>\<sigma\>>e<rsup|i\<theta\>\<sigma\>>.
  </equation*>

  Therefore,

  <\equation*>
    U<around*|(|\<Lambda\>|)>\<Psi\><rsub|p,\<sigma\>>=<sqrt|<frac|<around*|(|\<Lambda\>p|)><rsup|0>|p<rsup|0>>>e<rsup|i\<sigma\>\<theta\><around*|(|\<Lambda\>,p|)>>\<Psi\><rsub|\<Lambda\>p,\<sigma\>>,
  </equation*>

  where <math|\<theta\><around*|(|\<Lambda\>,p|)>> is determined by

  <\equation*>
    U<around*|(|W<around*|(|\<Lambda\>,p|)>|)>=U<around*|(|L<rsup|-1><around*|(|\<Lambda\>p|)>\<Lambda\>L<around*|(|p|)>|)>=e<rsup|i\<alpha\>A+i\<beta\>B>e<rsup|i\<theta\><around*|(|\<Lambda\>,p|)>J<rsub|3>>.
  </equation*>

  Instead of unitary operator acting on the Hilbert space, we prefer using
  the following Lorentz transformation identity.

  <\equation*>
    W<around*|(|\<Lambda\>,p|)>=e<rsup|i\<alpha\><around*|(|\<Lambda\>,p|)><around*|(|<with|font|cal|J><rsub|2>+<with|font|cal|K><rsub|1>|)>+i\<beta\><around*|(|\<Lambda\>,p|)><around*|(|-<with|font|cal|J><rsub|1>+<with|font|cal|K><rsub|2>|)>>e<rsup|i\<theta\><around*|(|\<Lambda\>,p|)><with|font|cal|J><rsub|3>>,
  </equation*>

  where

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<with|font|cal|J><rsub|1>=-i<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>,>>|<row|<cell|>|<cell|>|<cell|<with|font|cal|J><rsub|2>=-i<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>,>>|<row|<cell|>|<cell|>|<cell|<with|font|cal|J><rsub|3>=-i<matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>,>>|<row|<cell|>|<cell|>|<cell|<with|font|cal|K><rsub|1>=-i<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>,>>|<row|<cell|>|<cell|>|<cell|<with|font|cal|K><rsub|2>=-i<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>>>>.>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|e<rsup|i\<alpha\><around*|(|<with|font|cal|J><rsub|2>+<with|font|cal|K><rsub|1>|)>+i\<beta\><around*|(|-<with|font|cal|J><rsub|1>+<with|font|cal|K><rsub|2>|)>>=exp<around*|[|
    <matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|0>|<cell|0>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>>>>|]>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>+<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|0>|<cell|0>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+<frac|1|2><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|0>|<cell|0>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>>>><rsup|2>+<frac|1|3!><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|0>|<cell|0>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>>>><rsup|3>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+\<cdots\>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>+<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|0>|<cell|0>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|0>|<cell|0>>>>>+<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|1>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|0>|<cell|1>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|1-\<zeta\>>|<cell|\<zeta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|-\<zeta\>>|<cell|1+\<zeta\>>>>>>\<backassign\>S<around*|(|\<alpha\>,\<beta\>|)>,>>>>
  </eqnarray*>

  where

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|\<alpha\>=\<alpha\><around*|(|\<Lambda\>,p|)>,>>|<row|<cell|>|<cell|>|<cell|\<beta\>=\<beta\><around*|(|\<Lambda\>,p|)>,>>|<row|<cell|>|<cell|>|<cell|\<zeta\>=<around*|(|\<alpha\><rsup|2>+\<beta\><rsup|2>|)>/2.>>>>
  </eqnarray*>

  On the other hand,

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|e<rsup|i\<theta\><with|font|cal|J><rsub|3>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>+\<theta\><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>-<frac|\<theta\><rsup|2>|2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|2em>-<frac|\<theta\><rsup|3>|3!><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>+<frac|\<theta\><rsup|4>|4!><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+<frac|\<theta\><rsup|5>|5!><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>-<frac|\<theta\><rsup|6>|6!><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+\<cdots\>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>+<around*|(|\<theta\>-<frac|\<theta\><rsup|3>|3!>+<frac|\<theta\><rsup|5>|5!>+\<cdots\>|)><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+<around*|(|1-<frac|\<theta\><rsup|2>|2>+<frac|\<theta\><rsup|4>|4!>-<frac|\<theta\><rsup|6>|6!>+\<cdots\>|)><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>-<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<matrix|<tformat|<table|<row|<cell|cos
    \<theta\>>|<cell|sin\<theta\>>|<cell|0>|<cell|0>>|<row|<cell|-sin\<theta\>>|<cell|cos
    \<theta\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,>>>>
  </eqnarray*>

  where <math|\<theta\>=\<theta\><around*|(|\<Lambda\>,p|)>>.

  Therefore,

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|e<rsup|i\<alpha\><around*|(|<with|font|cal|J><rsub|2>+<with|font|cal|K><rsub|1>|)>+i\<beta\><around*|(|-<with|font|cal|J><rsub|1>+<with|font|cal|K><rsub|2>|)>>e<rsup|i\<theta\><with|font|cal|J><rsub|3>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|0>|<cell|1>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|1-\<zeta\>>|<cell|\<zeta\>>>|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|-\<zeta\>>|<cell|1+\<zeta\>>>>>><matrix|<tformat|<table|<row|<cell|cos
    \<theta\>>|<cell|sin\<theta\>>|<cell|0>|<cell|0>>|<row|<cell|-sin\<theta\>>|<cell|cos
    \<theta\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|>|<cell|<space|1em>=<matrix|<tformat|<table|<row|<cell|cos
    \<theta\>>|<cell|sin\<theta\>>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|-sin\<theta\>>|<cell|cos
    \<theta\>>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>cos\<theta\>-\<beta\>sin\<theta\>>|<cell|\<alpha\>sin\<theta\>+\<beta\>cos\<theta\>>|<cell|1-<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>|<cell|<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>>|<row|<cell|\<alpha\>cos\<theta\>-\<beta\>sin\<theta\>>|<cell|\<alpha\>sin\<theta\>+\<beta\>cos\<theta\>>|<cell|-<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>|<cell|1+<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>>>>>.>>>>
  </eqnarray*>

  Hence,

  <\equation*>
    L<rsup|-1><around*|(|\<Lambda\>p|)>\<Lambda\>L<around*|(|p|)>=<matrix|<tformat|<table|<row|<cell|cos
    \<theta\>>|<cell|sin\<theta\>>|<cell|-\<alpha\>>|<cell|\<alpha\>>>|<row|<cell|-sin\<theta\>>|<cell|cos
    \<theta\>>|<cell|-\<beta\>>|<cell|\<beta\>>>|<row|<cell|\<alpha\>cos\<theta\>-\<beta\>sin\<theta\>>|<cell|\<alpha\>sin\<theta\>+\<beta\>cos\<theta\>>|<cell|1-<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>|<cell|<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>>|<row|<cell|\<alpha\>cos\<theta\>-\<beta\>sin\<theta\>>|<cell|\<alpha\>sin\<theta\>+\<beta\>cos\<theta\>>|<cell|-<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>|<cell|1+<frac|\<alpha\><rsup|2>+\<beta\><rsup|2>|2>>>>>>,
  </equation*>

  where we choose

  <\equation*>
    L<around*|(|p|)>=R<around*|(|<wide|\<b-up-p\>|^>|)>B<around*|(|<around*|\||\<b-up-p\>|\|>/\<kappa\>|)>
  </equation*>

  to take <math|k=<around*|(|0,0,\<kappa\>,\<kappa\>|)>> to <math|p>, where

  <\equation*>
    B<around*|(|u|)>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|u<rsup|2>+1|2u>>|<cell|<frac|u<rsup|2>-1|2u>>>|<row|<cell|0>|<cell|0>|<cell|<frac|u<rsup|2>-1|2u>>|<cell|<frac|u<rsup|2>+1|2u>>>>>>
  </equation*>

  is a pure boost along the three-direction and

  <\equation*>
    R<around*|(|<wide|\<b-up-p\>|^>|)>=e<rsup|i\<phi\><with|font|cal|J><rsub|3>>e<rsup|i\<theta\><with|font|cal|J><rsub|2>>
  </equation*>

  with

  <\equation*>
    <wide|\<b-up-p\>|^>=<around*|(|sin\<theta\>cos\<phi\>,sin\<theta\>sin\<phi\>,cos\<theta\>|)>.
  </equation*>

  <math|R<around*|(|<wide|\<b-up-p\>|^>|)>> is a pure rotation that takes the
  three axis into the direction of <math|<wide|\<b-up-p\>|^>>.

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
    <associate|Chap:2|<tuple|1|7>>
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