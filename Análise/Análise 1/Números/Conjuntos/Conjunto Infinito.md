> [!note]
> ### Definição Formal
>
> Um **conjunto** $A$ é dito **infinito** quando não é vazio e não existe bijeção entre $A$ e qualquer conjunto da forma $I_n = \{1,2,\dots,n\}$, com $n \in \mathbb{N}$. Equivalentemente, $A$ é infinito se, para todo $n \in \mathbb{N}$, não existe uma função bijetora
> $$
> f: A \to I_n.
> $$

> [!summary] # Se ele não é Finito, ele é finito, cabô.

> [!abstract]
> _Conjuntos infinitos possuem propriedades notáveis na teoria dos conjuntos, como a existência de bijeções com partes próprias (Definição de Dedekind)._

> [!note] Cardinalidade Infinita
> A cardinalidade de um conjunto infinito é denotada por símbolos especiais, como $\aleph_0$ (para conjuntos enumeráveis) ou $\mathfrak{c}$ (para o cardinal do contínuo). Dizemos que $A$ tem cardinalidade infinita quando
> $$
> |A| \geq \aleph_0.
> $$

---

> [!summary] #### Lema (Caracterização de Dedekind)
> Um conjunto $X$ é infinito se, e somente se, existe uma bijeção entre $X$ e uma parte própria $Y \subsetneq X$.
>
> #### Ideia da construção (exemplo com $\mathbb{N}$)
>
> Seja $X = \mathbb{N}$ e $Y = \mathbb{N} \setminus \{0\}$. Defina $f: \mathbb{N} \to Y$ por
> $$
> f(n) = n+1.
> $$
> A função $f$ é bijetora, pois é injetora (se $n+1 = m+1$ então $n=m$) e sobrejetora (para todo $y \in Y$, temos $f(y-1) = y$). Logo, $\mathbb{N}$ é infinito.

> [!note] #### Intuição
> A existência de uma "cópia própria" é uma propriedade marcante dos conjuntos infinitos: eles contêm uma versão "menor" de si mesmos, mas ainda assim equivalente em tamanho.

---

> [!done]
> ### 💡 Propriedade 1: Todo conjunto que contém um conjunto infinito é infinito.
>
> **Prova:**  
> Seja $A \subseteq B$ com $A$ infinito. Suponha, por absurdo, que $B$ fosse finito. Como todo subconjunto de um conjunto finito é finito (Propriedade já demonstrada), teríamos $A$ finito, contradição. Logo $B$ é infinito.
>
> **Corolário 1.1:**  
> O conjunto dos números naturais $\mathbb{N}$ é infinito. Consequentemente, $\mathbb{Z}$, $\mathbb{Q}$ e $\mathbb{R}$ também são infinitos.

---

> [!done]
> ### 💡 Propriedade 2: O conjunto dos números naturais $\mathbb{N}$ é infinito.
>
> **Teorema (Prova direta):**  
> Suponha, por absurdo, que $\mathbb{N}$ fosse finito. Então existiria $n \in \mathbb{N}$ e uma bijeção $f: \mathbb{N} \to I_n$. Considere o conjunto
> $$
> S = \{f(1), f(2), \dots, f(n+1)\} \subseteq I_n.
> $$
> Pelo Princípio da Casa dos Pombos, como $n+1$ elementos são distribuídos em $n$ valores, existem $i \neq j$ com $f(i) = f(j)$, contradizendo a injetividade de $f$. Portanto, $\mathbb{N}$ é infinito.

> [!abstract]
> _Esta prova utiliza o Princípio da Casa dos Pombos e independe de qualquer noção prévia de infinito._

---

> [!note]
> ### 🔎 Análise Real: Conjuntos Infinitos e Sequências
>
> Em $\mathbb{R}$, um conjunto infinito pode ser:
>
> - **Enumerável:** quando existe bijeção com $\mathbb{N}$ (ex: $\mathbb{Q}$)
> - **Não enumerável:** quando não existe tal bijeção (ex: $\mathbb{R}$)
>
> **Teorema (Cantor):** $\mathbb{R}$ é não enumerável. Em particular, $|\mathbb{R}| > |\mathbb{N}|$.

---

> [!note]
> ### 🧪 Demonstração da não enumerabilidade de $\mathbb{R}$ (Método Diagonal de Cantor)
>
> Suponha que exista uma bijeção $f: \mathbb{N} \to (0,1)$. Escreva cada $f(n)$ em sua representação decimal:
> $$
> f(1) = 0,a_{11}a_{12}a_{13}\dots
> $$
> $$
> f(2) = 0,a_{21}a_{22}a_{23}\dots
> $$
> $$
> f(3) = 0,a_{31}a_{32}a_{33}\dots
> $$
> $$
> \vdots
> $$
>
> Construa um número $x = 0,b_1b_2b_3\dots$ onde $b_n \neq a_{nn}$ e $b_n \neq 9$ (para evitar ambiguidade). Então $x \in (0,1)$ mas $x \neq f(n)$ para todo $n$, contradizendo a sobrejetividade de $f$.

---

> [!note] ### Teorema (Caracterização de Conjuntos Infinitos)
> Seja $X$ um conjunto. As seguintes afirmações são equivalentes:
>
> 1. $X$ é infinito.
> 2. Existe uma função injetora $f: \mathbb{N} \to X$.
> 3. Existe uma bijeção entre $X$ e uma parte própria $Y \subsetneq X$ (Propriedade de Dedekind).
>
> #### Prova da equivalência
>
> $(1 \Rightarrow 2)$: Se $X$ é infinito, podemos escolher uma sequência de elementos distintos $x_1, x_2, x_3, \dots$ em $X$ (tomando $x_1 \in X$, depois $x_2 \in X \setminus \{x_1\}$, etc.). A função $f(n) = x_n$ é injetora.
>
> $(2 \Rightarrow 3)$: Se $f: \mathbb{N} \to X$ é injetora, defina $Y = X \setminus \{f(1)\}$. A função $g: X \to Y$ dada por
> $$
> g(x) = \begin{cases}
> f(n+1), & \text{se } x = f(n) \text{ para algum } n \in \mathbb{N} \\
> x, & \text{caso contrário}
> \end{cases}
> $$
> é uma bijeção entre $X$ e sua parte própria $Y$.
>
> $(3 \Rightarrow 1)$: Se existisse uma bijeção $F: X \to Y$ com $Y \subsetneq X$, então $X$ não pode ser finito, pois já demonstramos que não existem bijeções entre conjuntos finitos e suas partes próprias.

---

> [!NOTE] ### Corolário
> #### $\mathbb{N}$ é o "menor" conjunto infinito.
>
> Todo conjunto infinito $X$ contém um subconjunto em bijeção com $\mathbb{N}$. Em símbolos:
> $$
> \forall X \text{ infinito}, \quad \aleph_0 \leq |X|.
> $$

> [!PROOF] ### Demonstração
>
> Seja $X$ infinito. Pelo Teorema anterior, existe uma função injetora $f: \mathbb{N} \to X$. A imagem $f(\mathbb{N}) \subseteq X$ é um subconjunto de $X$ em bijeção com $\mathbb{N}$. Portanto, $|X| \geq |\mathbb{N}| = \aleph_0$.

---

> [!WARNING] ### Consequência
> Diferentemente dos conjuntos finitos, **conjuntos infinitos** admitem bijeções com partes próprias. Esta é, inclusive, uma definição alternativa (Dedekind) de conjunto infinito:
>
> > Um conjunto é infinito se, e somente se, ele possui a mesma cardinalidade que alguma de suas partes próprias.

---

> [!abstract] ### Teorema
> ### Todo subconjunto de um conjunto enumerável é finito ou enumerável.
>
> #### Prova
>
> Seja $X$ um conjunto enumerável. Então existe uma bijeção $f: \mathbb{N} \to X$. Seja $A \subseteq X$. Considere
> $$
> S = f^{-1}(A) = \{n \in \mathbb{N} : f(n) \in A\} \subseteq \mathbb{N}.
> $$
>
> Se $S$ é finito, então $A = f(S)$ é finito.
>
> Se $S$ é infinito, definimos uma função $g: \mathbb{N} \to S$ que lista os elementos de $S$ em ordem crescente. A composição $f \circ g: \mathbb{N} \to A$ é uma bijeção, logo $A$ é enumerável.
>
> **Conclusão:** Todo subconjunto de um conjunto enumerável é finito ou enumerável.
>
> ### Observação
> Este teorema generaliza o fato de que $\mathbb{N}$ é infinito e seus subconjuntos infinitos são todos enumeráveis.

---

> [!error]
> **Atenção:** A existência de conjuntos infinitos não enumeráveis (como $\mathbb{R}$) foi demonstrada por Cantor e mostra que "infinito" não é um conceito único — existem diferentes "tamanhos" de infinito.