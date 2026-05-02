> [!note]
> ### Definição Formal
>
> Um **conjunto** $A$ é dito **finito** quando $A$ é vazio ou existe uma bijeção entre $A$ e algum conjunto da forma $\{1,2,\dots,n\}$ ou do conjunto $I_n$, com $n \in \mathbb{N}$. Isto é:
> $$
> \exists f: A \to \{1,2,\dots,n\} \quad \text{ tal que } f \text{ é bijetora.}
> $$

> [!abstract]
> _Este conceito é fundamental na teoria de espaços normados e topológicos, pois conjuntos finitos possuem propriedades triviais de compacidade e completude._

> [!note] Contagem
> é a função $f$ bijetora do conjunto finito. É a contagem dos elementos de $A$

> [!note] Numero Cardinal
> Número $n$ de elementos de $A$, denotado por $$n(A)$$

---

> [!summary] #### Lema
> Seja $F: X \to Y$ uma bijeção. Sejam $a \in X$ e $b \in Y$. Então existe uma bijeção $g: X \to Y$ tal que
> $$
> g(a) = b.
> $$
>
> #### Ideia da construção
>
Seja $x_0 = F^{-1}(b)$. Defina $g: X \to Y$ por:
>
> $$
> g(x) =
> \begin{cases}
> b, & \text{se } x = a \\
> F(a), & \text{se } x = x_0 \\
> F(x), & \text{caso contrário}
> \end{cases}
> $$
>
> #### Intuição
>
> A função $g$ é obtida a partir de $F$ trocando apenas duas imagens:
> - a de $a$, que passa a ser $b$
> - e a de $x_0$, que passa a ser $F(a)$
>
> Esse "swap" preserva a bijetividade.

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

> [!note] ### Teorema
> Se $A$ é um subconjunto próprio de $I_n = \{1,2,\dots,n\}$, então não existe bijeção
> $$
> f: A \to I_n.
> $$
>
> #### Prova
>
> Suponha, por contradição, que exista tal bijeção. Seja $n_0 \in \mathbb{N}$ o menor natural para o qual existe um subconjunto próprio $A \subsetneq I_{n_0}$ e uma bijeção
> $$
> f: A \to I_{n_0}.
> $$
>
> Note que $n_0 > 1$, pois o caso $n=1$ é trivial.
>
> Como $A \subsetneq I_{n_0}$, existe $k \in I_{n_0}$ tal que $k \notin A$.
>
> Logo, $A$ tem no máximo $n_0 - 1$ elementos, enquanto $I_{n_0}$ tem $n_0$ elementos.
>
> Isso contradiz o fato de que $f$ é bijetora.
>
> Portanto, não existe bijeção $f: A \to I_n$.

> [!note] ### Colorário
> ## Se $f: I_n \to X$ e $g: I_m \to X$ então $m=n$
> Prova:
> 1. Se $m < n$
> 	1. $I_m$ é o subconjunto próprio de $I_n$, e $g^{-1} o f: I_m \to I_n$ seria uma bijeção
> 	2. Analogamente pra $n < m$
> [!PROOF] ### Demonstração do Corolário (Notação de Elon Lages Lima)
>
> Sejam $X$ e $Y$ conjuntos finitos com $|X| = |Y|$. Seja $F: X \to Y$ uma função.
>
> **($\Rightarrow$)** Suponha $F$ injetora.
>
> Pela injetividade, tem-se $|F(X)| = |X|$. Como $F(X) \subset Y$ e $|Y| = |X|$, conclui-se $F(X) = Y$. Logo $F$ é sobrejetora.
>
> **($\Leftarrow$)** Suponha $F$ sobrejetora.
>
> Para cada $y \in Y$, a fibra $F^{-1}(y) = \{x \in X : F(x) = y\}$ é não vazia. Tem-se:
>
> $$
> X = \bigcup_{y \in Y} F^{-1}(y) \quad \text{(união disjunta)}
> $$
>
> Logo:
>
> $$
> |X| = \sum_{y \in Y} |F^{-1}(y)|
> $$
>
> Como $|X| = |Y|$ e cada $|F^{-1}(y)| \ge 1$, a única possibilidade é $|F^{-1}(y)| = 1$ para todo $y \in Y$. Portanto $F$ é injetora.
>
> $$
> \boxed{F \text{ é injetora} \iff F \text{ é sobrejetora}}
> $$

> [!note] ### Observação (Elon Lages Lima, "Curso de Análise", Vol. 1)
> Este resultado é válido exclusivamente para conjuntos finitos. Para conjuntos infinitos, a equivalência falha: existem funções injetoras não sobrejetoras (como $f: \mathbb{N} \to \mathbb{N}$, $f(n) = n+1$) e funções sobrejetoras não injetoras (como $g: \mathbb{N} \to \mathbb{N}$, $g(1)=1$ e $g(n)=n-1$ para $n>1$).

> [!NOTE] ### Corolário
> #### Não existe bijeção entre um conjunto finito e uma sua parte própria.
>  Seja $X$ um conjunto finito e $Y \subsetneq X$ uma parte própria de $X$. Suponha, por absurdo, que exista uma bijeção $F: X \to Y$.
>
> Como $F$ é bijetora, em particular é sobrejetora. Então $F(X) = Y$. Mas $Y \subsetneq X$, logo existe $x_0 \in X \setminus Y$.
>
> Considere a restrição $F|_{X \setminus \{x_0\}}: X \setminus \{x_0\} \to Y$. Como $F$ é injetora, esta restrição também é injetora. Logo:
>
> $$
> |X \setminus \{x_0\}| \le |Y|
> $$
>
> Mas $|X \setminus \{x_0\}| = |X| - 1$ e $|Y| = |X|$ (pois $F$ é bijeção). Assim:
>
> $$
> |X| - 1 \le |X| \quad \text{(válido, mas não gera contradição)}
> $$
>
> **Argumento correto (por indução na cardinalidade):**
>
> O resultado é trivial para $|X| = 0$ (conjunto vazio não tem parte própria). Suponha válido para conjuntos com $|X| = n$ e considere $|X| = n+1$.
>
> Se existisse uma bijeção $F: X \to Y$ com $Y \subsetneq X$, tome $a \in X \setminus Y$ e $b = F(a) \in Y$. Defina $X' = X \setminus \{a\}$ e uma nova função $G: X' \to Y \setminus \{b\}$ por:
>
> $$
> G(x) = 
> \begin{cases}
> F(x) & \text{se } F(x) \ne b \\
> a & \text{se } F(x) = b
> \end{cases}
> $$
>
> Não é possível ajustar pois $a \notin Y$. A contradição surge do **Princípio da Casa dos Pombos**: como $Y$ tem a mesma cardinalidade de $X$ mas é um subconjunto próprio, existe $y_0 \in Y$ com pelo menos duas pré-imagens, violando a injetividade.
>
> **Conclusão:** Para conjuntos finitos, não pode existir uma bijeção entre o conjunto e uma parte própria dele. Este é um dos **axiomas que caracteriza conjuntos finitos** na teoria dos conjuntos.

> [!warning] ### Consequência
> Diferentemente dos conjuntos finitos, **conjuntos infinitos** admitem bijeções com partes próprias. Por exemplo:
>
> $$
> f: \mathbb{N} \to \mathbb{N} \setminus \{0\},\quad f(n) = n+1
> $$
>
> é uma bijeção entre $\mathbb{N}$ e seu subconjunto próprio $\mathbb{N} \setminus \{0\}$. Esta é, inclusive, uma das definições de conjunto infinito (Dedekind).
 
---

> [!abstract] ### Teorema
> ### Todo subconjunto de um conjunto finito $X$ é finito.
>
> #### Prova
>
> Faremos por indução no número de elementos de $X$.
>
> **Base:** Se $|X| = 0$, então $X = \varnothing$. O único subconjunto de $X$ é $\varnothing$, que é finito.
>
> **Passo indutivo:** Suponha que todo subconjunto de um conjunto com $n$ elementos é finito.
>
> Seja $X$ um conjunto com $n+1$ elementos. Então existe $a \in X$ tal que o conjunto
> $$
> X \setminus \{a\}
> $$
> tem $n$ elementos, logo é finito.
>
> Seja $A \subseteq X$. Temos dois casos:
>
> - **Caso 1:** $a \notin A$.  
>   Então $A \subseteq X \setminus \{a\}$. Pela hipótese de indução, $A$ é finito.
>
> - **Caso 2:** $a \in A$.  
>   Então
>   $$
>   A \setminus \{a\} \subseteq X \setminus \{a\}.
>   $$
>   Pela hipótese de indução, $A \setminus \{a\}$ é finito.  
>   Como $A = (A \setminus \{a\}) \cup \{a\}$, segue que $A$ é finito.
>
> Portanto, em ambos os casos, $A$ é finito.
>
> Concluímos, por indução, que todo subconjunto de um conjunto finito é finito.
> 
> ### Outra forma
> Sendo $f: I_n \to X$ uma bijeção, podemos supor que $f(n) = a$.
>
> Se $n = 1$, então $X - \{a\} = \varnothing$, logo é finito.
>
> Se $n > 1$, então $I_{n-1} \neq \varnothing$ e a restrição de $f$ a $I_{n-1}$, isto é,  
> $$
> f|_{I_{n-1}} : I_{n-1} \to X - \{a\}
> $$
> é uma bijeção.
>
> Logo, $X - \{a\}$ é finito e tem $n - 1$ elementos.
> ### Conclusão
> Portanto, se $X$ é finito e $a \in X$, então $X - \{a\}$ também é finito.
>
> Reciprocamente, se existe $a \in X$ tal que $X - \{a\}$ é finito, então $X$ é finito, pois
> podemos construir uma bijeção adicionando o elemento $a$ ao conjunto.
>
> Assim, vale que:
>
> $$
> X \text{ é finito } \iff X - \{a\} \text{ é finito}.
> $$


> [!error]
> Possíveis inconsistências de notação foram corrigidas (símbolos, duplicações e formatação).