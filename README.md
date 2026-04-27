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

Multivariable: the topology, calculus, and integration that classical real analysis doesn't reach. (To be written — Stage 1 first.)

| # | Notebook | Idea |
|---|----------|------|
| 01 | topology-of-rn | Open/closed sets, compactness, Heine-Borel |
| 02 | continuity-in-rn | Multivariable limits, pathological cases |
| 03 | differentiation-in-rn | [S+N] Total derivative, Jacobian, chain rule |
| 04 | inverse-implicit-functions | [S+N] The two foundational theorems |
| 05 | multiple-integration | [S+N] Fubini, change of variables |
| 06 | vector-calculus-and-stokes | [S+N] Gradient, divergence, curl; the integral theorems |

### Stage 3 — Complex Analysis

Where the magic happens. Holomorphic functions are wildly more rigid than $C^\infty$ real functions, and that rigidity gives extraordinary tools. (To be written.)

| # | Notebook | Idea |
|---|----------|------|
| 01 | complex-plane | Geometry, Möbius transformations, the Riemann sphere |
| 02 | holomorphic-and-cauchy-riemann | [S+N] What "differentiable" means in $\mathbb{C}$ |
| 03 | complex-series | Power series in $\mathbb{C}$, analyticity, identity theorem |
| 04 | contour-integrals | Path integrals in $\mathbb{C}$; Cauchy's theorem |
| 05 | cauchy-integral-formula | [S+N] Values from boundaries; analytic = $C^\infty$ |
| 06 | residues | [S+N] Calculus of residues; real integrals via complex contours |
| 07 | conformal-mappings | [S+N] Angle-preserving maps; Schwarz lemma; Riemann mapping |

## Reading Order

Read straight through — each stage builds on the last, and within each stage the notebooks are numbered for sequential reading.

A short "must-read" path through the whole journey:

> 1.01 → 1.03 → 1.04 → 1.07 → 2.03 → 2.06 → 3.02 → 3.04 → 3.06

## License

[CC0 1.0](LICENSE)
