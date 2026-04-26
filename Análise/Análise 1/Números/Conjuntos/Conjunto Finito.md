> [!note]
> ### Definição Formal
>
> Um **conjunto** $A$ é dito **finito** quando $A$ é vazio ou existe uma bijeção entre $A$ e algum conjunto da forma $\{1,2,\dots,n\}$, com $n \in \mathbb{N}$. Isto é:
> $$
> \exists f: A \to \{1,2,\dots,n\} \quad \text{tal que } f \text{ é bijetora.}
> $$

> [!abstract]
> _Este conceito é fundamental na teoria de espaços normados e topológicos, pois conjuntos finitos possuem propriedades triviais de compacidade e completude._

---

> [!warning]
> #### Lema
> Se "Existe"

---

> [!done]
> ### 💡 Propriedade 1: Todo subconjunto de um conjunto finito é finito.
>
> **Prova:**  
> Seja $A$ finito com $|A| = n$, e seja $B \subseteq A$.  
> Como $f: A \to \{1,2,\dots,n\}$ é bijetora, a restrição de $f$ a $B$, denotada $f|_B$, é injetora, com imagem em $\{1,2,\dots,n\}$.  
> Logo, $B$ é finito.
>
> **Corolário 1.1:**  
> O número de subconjuntos de um conjunto finito $A$ com $|A| = n$ é $2^n$.

---

> [!done]
> ### 💡 Propriedade 2: Toda função definida em um conjunto finito atinge um máximo e um mínimo (em $\mathbb{R}$)
>
> **Teorema (Extremalidade em espaços métricos):**  
> Seja $A \subset \mathbb{R}$ um conjunto finito e $f: A \to \mathbb{R}$ uma função qualquer.  
> Então:
> $$
> \exists x_{\min}, x_{\max} \in A \quad \text{tais que} \quad 
> f(x_{\min}) \leq f(x) \leq f(x_{\max}), \ \forall x \in A.
> $$

> [!abstract]
> _A compacidade (no sentido funcional) é trivializada no caso finito, pois a imagem é sempre limitada e fechada por ser finita._

---

> [!note]
> ### 🔎 Análise Funcional: Conjuntos Finitos e Espaços de Banach
>
> Em espaços normados $(X,\|\cdot\|)$, considere um conjunto finito $A = \{x_1,\dots,x_n\} \subset X$.
>
> Se definirmos uma função $f: A \to \mathbb{R}$, temos:
> $$
> f \in \ell^\infty(A),
> $$
> pois:
> $$
> \|f\|_\infty = \max_{1 \leq i \leq n} |f(x_i)| < \infty.
> $$
>
> **Corolário 2.1:**  
> O espaço de funções reais sobre $A$, denotado $\mathbb{R}^A$, é um espaço de Banach com a norma do supremo.

---

> [!note]
> ### 🧪 Demonstração de Base: Norma Induzida
>
> Seja $A = \{x_1,\dots,x_n\} \subset X$, e $f: A \to \mathbb{R}$.  
> Então $f$ pode ser escrito como vetor:
> $$
> f = (f(x_1), \dots, f(x_n)) \in \mathbb{R}^n.
> $$
>
> A norma
> $$
> \|f\|_\infty = \max |f(x_i)|
> $$
> torna $\mathbb{R}^n$ um espaço normado completo, isto é, um espaço de Banach.

---

> [!error]
> Possíveis inconsistências de notação foram corrigidas (símbolos, duplicações e formatação).