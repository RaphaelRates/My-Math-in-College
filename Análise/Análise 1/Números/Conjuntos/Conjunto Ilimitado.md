### Definição Formal

> [!definition]
> Um conjunto $A$ é dito **finito** se $A = \varnothing$ ou se existe uma bijeção entre $A$ e um conjunto da forma $\{1,2,\dots,n\}$, com $n \in \mathbb{N}$.
>
> Isto é:
> $$
> \exists f: A \to \{1,2,\dots,n\} \text{ tal que } f \text{ é bijetora.}
> $$

> [!note]
> Este conceito é fundamental na teoria de espaços normados e topológicos, pois conjuntos finitos possuem propriedades triviais de compacidade e completude.

---

> [!lemma]
> Se existe $a \in X$ tal que $X - \{a\}$ é finito, então $X$ é finito.

---

### 💡 Propriedade 1: Todo subconjunto de um conjunto finito é finito

> [!theorem]
> Se $A$ é finito e $B \subseteq A$, então $B$ é finito.

> [!proof]
> Seja $A$ finito com $|A| = n$, e seja $B \subseteq A$.
>
> Como existe uma bijeção
> $$
> f: A \to \{1,2,\dots,n\},
> $$
> a restrição $f|_B$ é injetora, com imagem contida em $\{1,2,\dots,n\}$.
>
> Logo, $B$ é finito.

> [!corollary]
> Se $|A| = n$, então o número de subconjuntos de $A$ é
> $$
> 2^n.
> $$

---

### 💡 Propriedade 2: Extremalidade em conjuntos finitos

> [!theorem]
> Seja $A \subset \mathbb{R}$ finito e $f: A \to \mathbb{R}$.
>
> Então existem $x_{\min}, x_{\max} \in A$ tais que
> $$
> f(x_{\min}) \leq f(x) \leq f(x_{\max}), \quad \forall x \in A.
> $$

> [!note]
> No caso finito, a compacidade é trivial: a imagem de $A$ por $f$ é um conjunto finito, logo limitado e fechado.

---

### 🔎 Análise Funcional: Conjuntos Finitos

> [!important]
> Seja $(X, \|\cdot\|)$ um espaço normado e $A = \{x_1, \dots, x_n\} \subset X$.

Se $f: A \to \mathbb{R}$, então automaticamente:
$$
f \in \ell^\infty(A),
$$
pois
$$
\|f\|_\infty = \max_{1 \leq i \leq n} |f(x_i)| < \infty.
$$

> [!corollary]
> O espaço $\mathbb{R}^A$ é um espaço de Banach com a norma do supremo.

---

### 🧪 Demonstração de Base

> [!proof]
> Seja $A = \{x_1, \dots, x_n\}$ e $f: A \to \mathbb{R}$.
>
> Então $f$ pode ser identificado com o vetor:
> $$
> f = (f(x_1), \dots, f(x_n)) \in \mathbb{R}^n.
> $$
>
> A norma
> $$
> \|f\|_\infty = \max_{1 \leq i \leq n} |f(x_i)|
> $$
> torna $\mathbb{R}^n$ um espaço normado completo.
>
> Logo, é um espaço de Banach.