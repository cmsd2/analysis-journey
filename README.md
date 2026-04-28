# Mathematical Analysis — A Journey

A self-contained tour of mathematical analysis, built as a sequence of Maxima notebooks. The arc moves from the **real line** (single-variable analysis) to **$\mathbb{R}^n$** (multivariable / topology / vector calculus) to the **complex plane** (holomorphic functions, residues, conformal maps).

Each notebook combines **symbolic computation** (limits, derivatives, integrals, series) with **numerical experiments** (Riemann sums, convergence rates, contour integrals) and **visualisation** (functions, level sets, vector fields, complex-plane plots). When the symbolic-numeric bridge is the main idea, the row is marked [S+N].

Notebooks run in [Aximar](https://github.com/cmsd2/aximar) using the [numerics](https://github.com/cmsd2/maxima-numerics) and [ax-plots](https://github.com/cmsd2/ax-plots) packages.

## Prerequisites

```
mxpm install numerics
mxpm install ax-plots
```

Some notebooks load sub-modules:

```maxima
load("numerics")$            /* core ndarray + linear algebra */
load("numerics-integrate")$  /* numerical ODE / quadrature */
load("ax-plots")$
```

## The Journey

### Stage 1 — Real Analysis

The classical foundations: sequences, continuity, differentiation, integration, and series of real functions. Each abstract definition gets a concrete experiment.

| # | Notebook | Idea |
|---|----------|------|
| 01 | [sequences-and-limits](notebooks/01-real-analysis/01-sequences-and-limits.macnb) | ε-N convergence visualised; convergent vs divergent sequences |
| 02 | [continuity](notebooks/01-real-analysis/02-continuity.macnb) | ε-δ definition, uniform continuity, pathological functions |
| 03 | [differentiation](notebooks/01-real-analysis/03-differentiation.macnb) | [S+N] Mean value theorem, Taylor's theorem with remainder |
| 04 | [riemann-integration](notebooks/01-real-analysis/04-riemann-integration.macnb) | [S+N] Upper/lower sums, fundamental theorem of calculus |
| 05 | [infinite-series](notebooks/01-real-analysis/05-infinite-series.macnb) | [S+N] Convergence tests, conditional vs absolute, rearrangement |
| 06 | [uniform-convergence](notebooks/01-real-analysis/06-uniform-convergence.macnb) | [S+N] Pointwise vs uniform; Weierstrass M-test; what uniform buys |
| 07 | [power-series](notebooks/01-real-analysis/07-power-series.macnb) | [S+N] Radius of convergence, Taylor series, term-by-term operations |

### Stage 2 — Analysis in $\mathbb{R}^n$

Multivariable: the topology, calculus, and integration that classical real analysis doesn't reach.

| # | Notebook | Idea |
|---|----------|------|
| 01 | [topology-of-rn](notebooks/02-multivariable/01-topology-of-rn.macnb) | Open/closed sets, compactness, Heine-Borel, equivalent norms |
| 02 | [continuity-in-rn](notebooks/02-multivariable/02-continuity-in-rn.macnb) | Direction-dependent limits, paths vs lines, Heine-Cantor |
| 03 | [differentiation-in-rn](notebooks/02-multivariable/03-differentiation-in-rn.macnb) | [S+N] Total derivative, Jacobian, partials-vs-differentiable, chain rule |
| 04 | [inverse-implicit-functions](notebooks/02-multivariable/04-inverse-implicit-functions.macnb) | [S+N] Inverse and implicit function theorems with concrete examples |
| 05 | [multiple-integration](notebooks/02-multivariable/05-multiple-integration.macnb) | [S+N] Fubini, polar/spherical change of variables, Gaussian integral |
| 06 | [vector-calculus-and-stokes](notebooks/02-multivariable/06-vector-calculus-and-stokes.macnb) | [S+N] Gradient/div/curl, Green/Stokes/divergence theorems |

### Stage 3 — Complex Analysis

Where the rigidity gets remarkable. Holomorphic functions are wildly more constrained than $C^\infty$ real functions, and that rigidity unlocks extraordinary tools.

| # | Notebook | Idea |
|---|----------|------|
| 01 | [complex-plane](notebooks/03-complex-analysis/01-complex-plane.macnb) | Multiplication = rotation+scale, roots of unity, Möbius |
| 02 | [holomorphic-and-cauchy-riemann](notebooks/03-complex-analysis/02-holomorphic-and-cauchy-riemann.macnb) | [S+N] CR equations; harmonic real/imaginary parts |
| 03 | [complex-series](notebooks/03-complex-analysis/03-complex-series.macnb) | [S+N] Disk of convergence; why $1/(1+x^2)$ has $R=1$ |
| 04 | [contour-integrals](notebooks/03-complex-analysis/04-contour-integrals.macnb) | [S+N] $\oint = 0$ on simply connected domains; $\oint 1/z = 2\pi i$ |
| 05 | [cauchy-integral-formula](notebooks/03-complex-analysis/05-cauchy-integral-formula.macnb) | [S+N] Boundary determines interior; Liouville, FTA, max modulus |
| 06 | [residues](notebooks/03-complex-analysis/06-residues.macnb) | [S+N] Residue theorem; real integrals via complex contours |
| 07 | [conformal-mappings](notebooks/03-complex-analysis/07-conformal-mappings.macnb) | [S+N] Angle preservation, disc automorphisms, Riemann mapping |

### Stage 4 — Measure Theory and Lebesgue Integration

The fix Riemann needed: a robust integration theory with proper convergence theorems and complete function spaces.

| # | Notebook | Idea |
|---|----------|------|
| 01 | [sigma-algebras-and-measures](notebooks/04-measure-theory/01-sigma-algebras-and-measures.macnb) | The language: σ-algebras, measures, null sets |
| 02 | [lebesgue-measure-on-r](notebooks/04-measure-theory/02-lebesgue-measure-on-r.macnb) | Outer measure, Carathéodory, Vitali, Cantor set |
| 03 | [lebesgue-integral](notebooks/04-measure-theory/03-lebesgue-integral.macnb) | [S+N] Partition the range, not the domain |
| 04 | [convergence-theorems](notebooks/04-measure-theory/04-convergence-theorems.macnb) | [S+N] MCT, Fatou, DCT — when can we swap lim and ∫ |
| 05 | [lp-spaces](notebooks/04-measure-theory/05-lp-spaces.macnb) | [S+N] Hölder, Minkowski, Riesz-Fischer completeness |
| 06 | [fubini-and-product-measures](notebooks/04-measure-theory/06-fubini-and-product-measures.macnb) | [S+N] Tonelli/Fubini, when iterated integrals can disagree |

### Stage 5 — Functional Analysis

The infinite-dimensional generalisation of linear algebra. Banach and Hilbert spaces, bounded operators, the spectral theorem.

| # | Notebook | Idea |
|---|----------|------|
| 01 | [banach-spaces](notebooks/05-functional-analysis/01-banach-spaces.macnb) | Normed completeness; $C([a,b])$, $\ell^p$, $L^p$; norms aren't equivalent in ∞-dim |
| 02 | [hilbert-spaces](notebooks/05-functional-analysis/02-hilbert-spaces.macnb) | [S+N] Inner products, projections, Fourier basis of $L^2$ |
| 03 | [bounded-operators](notebooks/05-functional-analysis/03-bounded-operators.macnb) | [S+N] Operator norm, multiplication and integral operators, spectrum |
| 04 | [dual-spaces-and-hahn-banach](notebooks/05-functional-analysis/04-dual-spaces-and-hahn-banach.macnb) | $X^*$, separation of points, reflexivity, separating hyperplanes |
| 05 | [three-big-theorems](notebooks/05-functional-analysis/05-three-big-theorems.macnb) | [S+N] Open mapping, closed graph, uniform boundedness |
| 06 | [compact-operators](notebooks/05-functional-analysis/06-compact-operators.macnb) | [S+N] Riesz-Schauder, Fredholm alternative |
| 07 | [spectral-theory](notebooks/05-functional-analysis/07-spectral-theory.macnb) | [S+N] Self-adjoint operators, functional calculus, Stone's theorem |

### Stage 6 — Differential Geometry and Manifolds

Calculus on curved spaces. Smooth manifolds, tangent vectors, differential forms, the generalised Stokes theorem, curvature, Lie groups.

| # | Notebook | Idea |
|---|----------|------|
| 01 | [smooth-manifolds](notebooks/06-differential-geometry/01-smooth-manifolds.macnb) | Charts, atlases, smoothness compatibility; $S^1, S^2, T^2$ |
| 02 | [tangent-spaces-and-vector-fields](notebooks/06-differential-geometry/02-tangent-spaces-and-vector-fields.macnb) | [S+N] Tangent vectors as derivations; pushforward; Lie bracket |
| 03 | [differential-forms](notebooks/06-differential-geometry/03-differential-forms.macnb) | [S+N] Wedge product, exterior derivative, $d^2 = 0$, closed vs exact |
| 04 | [integration-and-stokes](notebooks/06-differential-geometry/04-integration-and-stokes.macnb) | The generalised Stokes theorem $\int_M d\omega = \int_{\partial M} \omega$ |
| 05 | [riemannian-metrics-and-geodesics](notebooks/06-differential-geometry/05-riemannian-metrics-and-geodesics.macnb) | [S+N] Christoffel symbols, geodesic equation on $S^2$ |
| 06 | [curvature](notebooks/06-differential-geometry/06-curvature.macnb) | [S+N] Gaussian curvature, Theorema egregium, Gauss-Bonnet |
| 07 | [lie-groups](notebooks/06-differential-geometry/07-lie-groups.macnb) | [S+N] $\mathrm{SO}(3)$, exponential map, Lie algebras, structure constants |

## Reading Order

Read straight through — each stage builds on the last, and within each stage the notebooks are numbered for sequential reading.

A short "must-read" path through the whole journey:

> 1.01 → 1.03 → 1.04 → 1.07 → 2.03 → 2.06 → 3.02 → 3.04 → 3.06 → 4.03 → 4.04 → 5.02 → 5.07 → 6.04 → 6.06

## License

[CC0 1.0](LICENSE)
