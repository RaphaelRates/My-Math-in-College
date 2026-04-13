### Definição Formal

Um **conjunto A** é dito **finito**  quando **A** é vazio se existe uma bijeção entre A e algum conjunto da forma $${1,2,...,n}\text{  }\{1, 2, ..., n\}, \text{ com } n∈Nn \in \mathbb{N}$$. Isto é:

$$∃f:A→{1,2,...,n}\text{ tal que } f \text{ é bijetora} .\exists f: A \to \{1, 2, ..., n\} \quad \text{ tal que } f \text{ é bijetora.}$$

> 💡 _Este conceito é fundamental na teoria de espaços normados e topológicos, pois conjuntos finitos possuem propriedades triviais de compacidade e completude._

---
#### Lema
Se "Existe "
### 💡 Propriedade 1: Todo subconjunto de um conjunto finito é finito.

**Prova:**  
Seja AA finito com ∣A∣=n|A| = n, e seja B⊆AB \subseteq A.  
Como $f:A→{1,2,...,n}$  ou seja $f: A \to \{1, 2, ..., n\}$  é bijetora, a restrição de f a B, denotada f∣Bf|_B, é injetora, com imagem em {1,2,...,n}\{1, 2, ..., n\}.  
Logo, BB é finito.

**Corolário 1.1:**  
O número de subconjuntos de um conjunto finito A com $∣A∣=n|A| = n \text{ é } 2n2^n$ .

---

### 💡 Propriedade 2: Toda função definida em um conjunto finito atinge um máximo e um mínimo (em ℝ)

**Teorema (Extremalidade em espaços métricos):**  
Seja $A⊂RA \subset \mathbb{R}$ um conjunto finito e $f:A→Rf: A \to \mathbb{R}$ uma função qualquer.  
Então:

$$∃xmin⁡,xmax⁡∈A \text{ tais que } f(xmin⁡)≤f(x)≤f(xmax⁡),∀x∈A.\exists x_{\min}, x_{\max} \in A $$Tais que $$ f(x_{\min}) \leq f(x) \leq f(x_{\max}), \quad \forall x \in A$$.

> 🧠 _A compacidade (no sentido funcional) é trivialisada no caso finito, pois a imagem é sempre limitada e fechada por ser finita._

---

### 🔎 Análise Funcional: Conjuntos Finitos e Espaços de Banach

Em espaços normados $(X,∥⋅∥)(X, \| \cdot \|)$, considere um conjunto finito A={x1,...,xn}⊂XA = $\{x_1, ..., x_n\} \subset X$.

Se definirmos uma função f:A→Rf: A $\to \mathbb{R}$, temos:$$ f∈ℓ∞(A)f \in \ell^\infty(A)$$ automaticamente, pois:
$$∥f∥∞=max⁡1≤i≤n∣f(xi)∣<∞\|f\|_{\infty} = \max_{1 \leq i \leq n} |f(x_i)| < \infty$$

**Corolário 2.1:**  
O espaço de funções reais sobre A, denotado $A\mathbb{R}^A$, é um espaço de Banach com a norma do supremo.

---

### 🧪 Demonstração de Base: Norma Induzida

Seja $A={x1,...,xn}⊂XA = \{x_1, ..., x_n\} \subset X$, e f:A→Rf: A $\to \mathbb{R}$.  
Então ff pode ser escrito como vetor:

$$f=(f(x1),...,f(xn))∈Rnf = (f(x_1), ..., f(x_n)) \in \mathbb{R}^n$$

A norma $∥f∥∞=max⁡∣f(xi)∣\|f\|_{\infty} = \max |f(x_i)|$  torna $Rn\mathbb{R}^n$ um espaço normado completo, isto é, um espaço de Banach.
