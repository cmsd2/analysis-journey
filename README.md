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

## Reading Order

Read straight through — each stage builds on the last, and within each stage the notebooks are numbered for sequential reading.

A short "must-read" path through the whole journey:

> 1.01 → 1.03 → 1.04 → 1.07 → 2.03 → 2.06 → 3.02 → 3.04 → 3.06

## License

[CC0 1.0](LICENSE)
