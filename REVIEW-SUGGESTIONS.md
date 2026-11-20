# Review: larger suggestions (November 2026)

Small fixes went straight into the notebooks. Each item below needs new cells, new code or a new notebook, so it's left for a decision.

## Gaps between what a notebook claims and what it computes

1. **6.02 Tangent spaces.** The README row promises "[S+N] … Lie bracket", but the notebook never computes one, and the tangent-vector plot shows only the sphere ("for brevity"). Suggested additions:
   - a symbolic Lie bracket, e.g. the three rotation fields on ℝ³ reproduce the so(3) relations of 6.07;
   - arrows for r_u and r_v at a few points.
2. **6.06 Curvature.** The summary says "Riemann tensor captures full curvature", but the notebook only uses the orthogonal-coordinates K formula. Suggested addition: compute R^θ_{φθφ} = sin²θ from the 6.05 Christoffel symbols, then recover K = R_{θφθφ}/det g. That shows the tensor route agreeing with the formula route.
3. **6.05 Geodesics.** The geodesic is only plotted. Suggested addition: check numerically that it stays in the plane through the origin spanned by p₀ and v₀ (max |n·γ(t)| ≈ solver tolerance) and that its speed stays 1.
4. **5.06 Compact operators.** The [S+N] cell just lists 1/n. A stronger demo: discretise the kernel min(x,y) − xy, or the Volterra operator, with a Nyström/midpoint rule. Then show the eigenvalues approaching 1/(n²π²) (or the Volterra singular values approaching 2/((2k−1)π)) and ‖T − T_N‖ falling as the rank grows.
5. **5.05 Three big theorems.** The bounded-inverse demo uses a 2×2 matrix, where the theorem is trivial. An infinite-dimensional example would show what the hypotheses do: diag(1/n) on ℓ² is bounded, injective and has dense range, but it isn't surjective, and its inverse is unbounded.

## Missing topics that later notebooks lean on

6. **limsup/liminf, subsequences, Bolzano-Weierstrass (Stage 1).** 1.05 and 1.07 use limsup in the root test and Cauchy-Hadamard, and 2.01 cites Bolzano-Weierstrass, but 1.01 never introduces any of them.
7. **Banach fixed-point theorem and Picard-Lindelöf.** 6.02 now says outright that ODE existence isn't covered, and 6.05 relies on it. A short notebook 2.08 (contraction mapping on a complete metric space, with Picard iteration and Newton's method as demos) would close the gap and use 2.07's completeness.
8. **Higher derivatives in ℝⁿ (2.03).** The notebook has no Hessian, no symmetry of mixed partials (Clairaut, with the counterexample xy(x²−y²)/(x²+y²)), no multivariable Taylor expansion and no second-derivative test. Also, the surface and its tangent plane are drawn in two separate plots; one overlaid plot would show the tangency.
9. **Conservative fields (2.06).** Path independence, and the fact that curl-free doesn't imply gradient on the punctured plane, using (−y, x)/(x² + y²). That same form reappears in 3.04 (∮dz/z) and 6.03/6.04 (the angular form). Introducing it here would tie the three stages together. The divergence-theorem check could also compute the surface side, which the text currently only argues.
10. **Singularities and the argument principle (Stage 3).** Laurent series, the classification into removable, pole and essential singularities (Casorati-Weierstrass), branch cuts for log, and the argument principle/Rouché, with a numerical zero-counting demo. 3.07 mentions the Joukowski map but never plots it.
11. **Stage 4.**
    - Modes of convergence: a.e., in measure, in L^p, and Egorov, with the "typewriter" sequence as the standard separating example.
    - Lebesgue differentiation and Radon-Nikodym.
    - Actually constructing the fat Cantor set that 4.03 mentions.
12. **Fourier analysis.** It's spread across 1.06, 4.05, 5.02 and 5.05. A dedicated notebook could cover the Dirichlet and Fejér kernels, Gibbs on a square wave, Parseval and convergence theorems, and then serve as the shared reference for all four.

## Smaller demos worth adding

13. **1.03:** plot f′ for x² sin(1/x) to show the discontinuous derivative, and mention Darboux's theorem (derivatives have the intermediate value property even when they're discontinuous).
14. **1.06:** the moving-bump example is promised ("see any analysis text") but appears only in 4.04. Show it here, or link forward to 4.04.
15. **5.01:** add an incomplete normed space, e.g. C[0,1] under the L¹ norm, where a Cauchy sequence converges towards a step function. That motivates completion and links to 2.07 and 4.05.
16. **5.02:** a square wave next to the triangle wave, so the gap between L² and uniform convergence is visible (Gibbs overshoot).

## Style and housekeeping

17. **Style.** The prose still uses many em dashes and some inflated wording ("beautiful", "remarkable", "extraordinary", "profound"). I fixed these only in passages I was already editing. A full pass would touch every notebook, so it's better done as its own change.
18. **Unused code.** Some code cells still define variables they never use (e.g. 3.07 cell 3: `n_show`, `ys_const`, `xs_const`).
19. **`gen-index.sh`** defines `humanise`/`notebook_label` and `stage_number`/`notebook_number` as identical pairs. Each pair can collapse to one function.
