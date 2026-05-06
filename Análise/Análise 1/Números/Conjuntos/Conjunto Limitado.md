> [!note]
> ### Definição Formal (Conjunto Limitado em $\mathbb{R}$)
>
> Um conjunto $X \subset \mathbb{R}$ é dito **limitado superiormente** quando existe um número real $M \in \mathbb{R}$ tal que
> $$
> x \leq M \quad \text{para todo } x \in X.
> $$
> O número $M$ é chamado de **cota superior** de $X$.
>
> Um conjunto $X \subset \mathbb{R}$ é dito **limitado inferiormente** quando existe um número real $m \in \mathbb{R}$ tal que
> $$
> m \leq x \quad \text{para todo } x \in X.
> $$
> O número $m$ é chamado de **cota inferior** de $X$.
>
> Um conjunto $X \subset \mathbb{R}$ é dito **limitado** quando é limitado superiormente e inferiormente. Equivalentemente, existe $K > 0$ tal que
> $$
> |x| \leq K \quad \text{para todo } x \in X.
> $$

> [!abstract]
> _A noção de conjunto limitado é fundamental em Análise Real, pois conjuntos limitados possuem propriedades importantes relacionadas à existência de supremo, ínfimo e convergência de sequências._

> [!note] # Conjunto Limitado
> Quando $X \in \mathbb{N}$ respeita isso: $$p \in \mathbb{N} \text{ tal que } x \leq p \text{ , } \forall x \in X$$

---

> [!note] ### Exemplos
>
> **Exemplo 1:** O intervalo $(0,1)$ é limitado, pois $0 < x < 1$ para todo $x \in (0,1)$. Uma cota inferior é $0$ e uma cota superior é $1$.
>
> **Exemplo 2:** O conjunto $\mathbb{N} = \{1,2,3,\dots\}$ é limitado inferiormente (por $1$), mas não é limitado superiormente, pois não existe $M \in \mathbb{R}$ tal que $n \leq M$ para todo $n \in \mathbb{N}$.
>
> **Exemplo 3:** O conjunto $\mathbb{Z}$ não é limitado superiormente nem inferiormente.

---

> [!summary] #### Definição (Supremo e Ínfimo)
>
> Seja $X \subset \mathbb{R}$ não vazio e limitado superiormente. O **supremo** de $X$, denotado por $\sup X$, é a menor das cotas superiores de $X$. Equivalentemente:
> $$
> \sup X = s \iff \begin{cases}
> x \leq s, & \forall x \in X \\
> \forall \varepsilon > 0, \exists x_\varepsilon \in X \text{ tal que } s - \varepsilon < x_\varepsilon
> \end{cases}
> $$
>
> Seja $X \subset \mathbb{R}$ não vazio e limitado inferiormente. O **ínfimo** de $X$, denotado por $\inf X$, é a maior das cotas inferiores de $X$. Equivalentemente:
> $$
> \inf X = i \iff \begin{cases}
> i \leq x, & \forall x \in X \\
> \forall \varepsilon > 0, \exists x_\varepsilon \in X \text{ tal que } x_\varepsilon < i + \varepsilon
> \end{cases}
> $$

> [!note] #### Observação
> Se $X$ é limitado, então $\sup X$ e $\inf X$ existem (pela Propriedade da Completude de $\mathbb{R}$) e satisfazem
> $$
> \inf X \leq \sup X.
> $$

---

> [!done]
> ### 💡 Propriedade 1: União finita de conjuntos limitados é limitada.
>
> **Prova:**  
> Sejam $A_1, A_2, \dots, A_n$ conjuntos limitados. Para cada $i$, existe $K_i > 0$ tal que $|x| \leq K_i$ para todo $x \in A_i$. Tome
> $$
> K = \max\{K_1, K_2, \dots, K_n\}.
> $$
> Então, para todo $x \in \bigcup_{i=1}^n A_i$, temos $|x| \leq K$. Logo, a união é limitada.
>
> **Corolário 1.1:**  
> A união finita de intervalos limitados é um conjunto limitado.

---

> [!done]
> ### 💡 Propriedade 2: Interseção arbitrária de conjuntos limitados é limitada.
>
> **Prova:**  
> Seja $\{A_\lambda\}_{\lambda \in \Lambda}$ uma família de conjuntos limitados. Para cada $\lambda$, existe $K_\lambda > 0$ tal que $|x| \leq K_\lambda$ para todo $x \in A_\lambda$. Tome
> $$
> X = \bigcap_{\lambda \in \Lambda} A_\lambda.
> $$
> Se $X = \varnothing$, o resultado é trivial. Se $X \neq \varnothing$, escolha $x_0 \in X$. Então $x_0 \in A_\lambda$ para todo $\lambda$. Logo $|x_0| \leq K_\lambda$ para todo $\lambda$, mas isso não garante um $K$ uniforme. Precisamos de um argumento melhor:
>
> Como $X \subseteq A_{\lambda_0}$ para qualquer $\lambda_0$ fixo, e $A_{\lambda_0}$ é limitado, segue que $X$ é limitado.
>
> **Corolário 2.1:**  
> A interseção de intervalos limitados é um intervalo limitado (possivelmente vazio).

---

> [!note]
> ### 🔎 Relação com Sequências
>
> Uma sequência $(x_n)_{n \in \mathbb{N}}$ é dita **limitada** quando o conjunto de seus termos $\{x_n : n \in \mathbb{N}\}$ é limitado.
>
> **Teorema (Bolzano-Weierstrass):** Toda sequência limitada em $\mathbb{R}$ possui uma subsequência convergente.
>
> **Corolário:** Se $(x_n)$ é limitada, então existem subsequências convergentes.

---

> [!note]
> ### 🧪 Demonstração: Toda sequência convergente é limitada
>
> Seja $(x_n)$ convergente com $\lim_{n \to \infty} x_n = L$. Então, para $\varepsilon = 1$, existe $N \in \mathbb{N}$ tal que
> $$
> |x_n - L| < 1 \quad \text{para todo } n > N.
> $$
> Assim, para $n > N$, temos $|x_n| < |L| + 1$. Para os finitos termos $x_1, x_2, \dots, x_N$, tomamos
> $$
> M = \max\{|x_1|, |x_2|, \dots, |x_N|, |L| + 1\}.
> $$
> Então $|x_n| \leq M$ para todo $n \in \mathbb{N}$. Logo $(x_n)$ é limitada.

---

> [!note] ### Teorema (Existência de Supremo em Conjuntos Limitados)
>
> Todo conjunto não vazio $X \subset \mathbb{R}$ limitado superiormente possui um supremo. Todo conjunto não vazio $X \subset \mathbb{R}$ limitado inferiormente possui um ínfimo.
>
> #### Prova
>
> Seja $X$ não vazio e limitado superiormente. Considere o conjunto
> $$
> C = \{M \in \mathbb{R} : M \text{ é cota superior de } X\}.
> $$
> Por hipótese, $C \neq \varnothing$. Pela Propriedade da Completude de $\mathbb{R}$, existe $s \in \mathbb{R}$ tal que $s$ é o menor elemento de $C$. Por definição, $s = \sup X$.
>
> A prova para o ínfimo é análoga.

---

> [!NOTE] ### Corolário
> #### Se $X \subset \mathbb{R}$ é limitado e não vazio, então
> $$
> \inf X \leq \sup X.
> $$
> Além disso, $\inf X = \sup X$ se, e somente se, $X$ possui um único elemento.

> [!PROOF] ### Demonstração
>
> Seja $x_0 \in X$. Então $\inf X \leq x_0 \leq \sup X$ por definição de ínfimo e supremo. Logo $\inf X \leq \sup X$.
>
> Se $\inf X = \sup X = s$, então para todo $x \in X$ temos $s \leq x \leq s$, logo $x = s$. Portanto $X = \{s\}$.
>
> Reciprocamente, se $X = \{s\}$, então $\inf X = \sup X = s$.

---

> [!WARNING] ### Consequência (Existência de Máximo e Mínimo)
>
> Em conjuntos limitados, o supremo e o ínfimo nem sempre pertencem ao conjunto. Por exemplo, para $X = (0,1)$, temos $\inf X = 0 \notin X$ e $\sup X = 1 \notin X$.
>
> Quando $\sup X \in X$, dizemos que $\sup X$ é o **máximo** de $X$. Quando $\inf X \in X$, dizemos que $\inf X$ é o **mínimo** de $X$.

---

> [!abstract] ### Colorário
> ### Todo conjunto finito é limitado.
>
> #### Prova
>
> Seja $X = \{x_1, x_2, \dots, x_n\}$ um conjunto finito. Defina
> $$
> m = \min\{x_1, x_2, \dots, x_n\} \quad \text{e} \quad M = \max\{x_1, x_2, \dots, x_n\}.
> $$
> Então $m \leq x \leq M$ para todo $x \in X$. Portanto $X$ é limitado, com cota inferior $m$ e cota superior $M$.
>
> **Observação:** A recíproca é falsa: existem conjuntos limitados que não são finitos, como o intervalo $[0,1]$.

---

> [!note] ### Exemplo em Espaços Métricos (Generalização)
>
> Em um espaço métrico $(X, d)$, um conjunto $A \subset X$ é dito **limitado** quando existe um número $K > 0$ e um ponto $x_0 \in X$ tais que
> $$
> d(x, x_0) \leq K \quad \text{para todo } x \in A.
> $$
> Equivalentemente, $A$ está contido em alguma bola de raio finito.
>
> **Exemplo:** Em $\mathbb{R}^n$ com a métrica euclidiana, um conjunto é limitado se, e somente se, está contido em alguma bola $B(0, R)$.

---

> [!error]
> **Atenção:** Um conjunto pode ser limitado em um espaço métrico mas não em outro, pois a noção de limititude depende da métrica considerada. Por exemplo, o intervalo $(0,1)$ é limitado em $\mathbb{R}$ com a métrica usual, mas pode não ser limitado em outra métrica equivalente topologicamente.