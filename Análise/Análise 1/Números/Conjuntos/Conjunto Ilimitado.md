# 📘 Notebook: Conjuntos Ilimitados em Análise e Topologia

## 1. Definição Formal

> [!definition]
> Um conjunto $A$ é dito **ilimitado** (em um espaço métrico $(X,d)$) se **não** existe uma bola aberta de raio finito que o contenha.  
> Equivalentemente:
> $$
> \forall r > 0,\ \exists a \in A \text{ tal que } d(a, x_0) > r \text{ para algum } x_0 \in X.
> $$
> Em $\mathbb{R}^n$ com a norma usual, isso significa: $A$ não está contido em nenhuma bola $B(0,R)$.

> [!important]
> A **ilimitabilidade** é uma propriedade **métrica**, não topológica pura (pois depende da distância), mas em espaços normados ela é invariante por equivalência de normas.

---

## 2. Relação com Conjuntos Finitos

> [!theorem]
> Todo conjunto **infinito** pode ser limitado ou ilimitado.  
> Mas **nenhum conjunto finito** é ilimitado (em $\mathbb{R}^n$ com norma usual).

> [!proof]
> Se $|A| = n$, seja $R = \max_{a \in A} \|a\|$. Então $A \subset B(0, R+1)$. Logo é limitado.

> [!corollary]
> **Ilimitado** ⇒ **infinito**.  
> A recíproca é falsa: $\mathbb{N}$ é infinito e ilimitado em $\mathbb{R}$; $\{1, 1/2, 1/3, \dots\}$ é infinito e limitado.

---

## 3. Propriedade Fundamental: Não Compacidade

> [!theorem]
> Em $\mathbb{R}^n$, **todo conjunto ilimitado é não compacto**.

> [!proof]
> Pelo teorema de Heine–Borel, $K \subset \mathbb{R}^n$ é compacto sse é fechado e limitado.  
> Ilimitado ⇒ não limitado ⇒ não compacto.

> [!note]
> A recíproca é falsa: um conjunto limitado pode não ser compacto (ex: $(0,1)$ em $\mathbb{R}$).

---

## 4. Exemplos Clássicos

| Conjunto | Espaço | Limitado? | Ilimitado? |
|----------|--------|-----------|-------------|
| $\{1,2,\dots,n\}$ | $\mathbb{R}$ | ✅ | ❌ |
| $\mathbb{N}$ | $\mathbb{R}$ | ❌ | ✅ |
| $\mathbb{R}$ | $\mathbb{R}$ | ❌ | ✅ |
| $B(0,1)$ | $\mathbb{R}^2$ | ✅ | ❌ |
| $\{ (n,0) : n \in \mathbb{N} \}$ | $\mathbb{R}^2$ | ❌ | ✅ |
| $C[0,1]$ com norma $\|\cdot\|_\infty$ | Espaço de Banach | ❌ (bola unitária é limitada, mas o espaço todo é ilimitado) | ✅ |

---

## 5. Análise Funcional: Conjuntos Ilimitados

> [!important]
> Seja $(X, \|\cdot\|)$ um espaço normado. Um conjunto $A \subset X$ é **ilimitado** se:
> $$
> \sup_{a \in A} \|a\| = +\infty.
> $$

> [!lemma]
> Em espaços de dimensão infinita, a bola unitária fechada **não é compacta**, mas ainda assim é limitada.  
> Conjuntos ilimitados aparecem naturalmente como **domínios de operadores não limitados**.

Exemplo clássico:
- Operador derivada $D: C^1[0,1] \subset C[0,1] \to C[0,1]$  
  O conjunto $\{ \sin(nx) \}$ é limitado em $C[0,1]$, mas sua imagem por $D$ é $\{ n\cos(nx) \}$, que é **ilimitada**.

---

## 6. Demonstração de um Critério Útil

> [!proposition]
> Em $\mathbb{R}^n$, um conjunto $A$ é ilimitado se e somente se existe uma sequência $(a_k) \subset A$ com $\|a_k\| \to \infty$.

> [!proof]
> ($\Rightarrow$) Se $A$ é ilimitado, para cada $m \in \mathbb{N}$, existe $a_m \in A$ com $\|a_m\| > m$.  
> ($\Leftarrow$) Se $\|a_k\| \to \infty$, então para todo $R>0$, existe $K$ tal que $\|a_K\| > R$, logo $A \not\subset B(0,R)$.

---

## 7. Conexão com Conjuntos Finitos (Complementar)

> [!summary]
> | Propriedade | Conjunto Finito | Conjunto Ilimitado |
> |-------------|----------------|--------------------|
> | Exemplo | $\{1,2,3\}$ | $\mathbb{N}$ |
> | Sempre infinito? | ❌ | ✅ |
> | Contido em bola finita? | ✅ | ❌ |
> | Compacto em $\mathbb{R}^n$? | ✅ | ❌ |
> | Limitado? | ✅ | ❌ |

---

# 📘 Notebook Expansivo: A Natureza dos Conjuntos Ilimitados (Baseado em Elon Lages)

## 9. Teorema Fundamental: Infinito vs. Ilimitado

> [!theorem] (Elon Lages - Relação entre Finito, Infinito e Ilimitado)
> Seja $X$ um subconjunto de $\mathbb{R}^n$ (ou um espaço métrico qualquer).
> 1.  **Todo conjunto finito é limitado.**
> 2.  **Um conjunto infinito pode ser limitado ou ilimitado.**
> 3.  **Se $X$ é ilimitado, então $X$ é necessariamente infinito.**

> [!proof]
> 4.  Se $X = \{x_1, \dots, x_n\}$, defina $R = \max\{\|x_1\|, \dots, \|x_n\|\} + 1$. Então $X \subset B(0,R)$. Logo, é limitado .
> 5.  Contraexemplos: $\mathbb{N}$ é infinito e ilimitado; $\{1, \frac12, \frac13, \dots\}$ é infinito e limitado.
> 6.  É a contrapositiva do item 1. Se fosse finito, seria limitado. Logo, se é ilimitado, não pode ser finito.

> [!note]
> A grande virada de chave na Análise Real é perceber que "infinito" não garante "ilimitado". A compacidade, por exemplo, lida com a primeira propriedade (ser infinito e limitado), enquanto a ilimitabilidade está associada à fuga para o infinito.

---

## 10. Proposição: O Caráter Topológico da Ilimitabilidade

Elon Lages enfatiza que a compacidade é a "prima rica" da limitação. A proposição a seguir mostra como a ilimitabilidade corrompe a compacidade.

> [!proposition]
> Um conjunto $K \subset \mathbb{R}^n$ é **compacto** se, e somente se, é **fechado** e **limitado** (Heine-Borel).
>
> Consequentemente, **se um conjunto é ilimitado, ele NÃO é compacto** (mesmo que seja fechado).

> [!example] (Exemplo Clássico - O "Ilimitado Fechado")
> Considere o conjunto $\mathbb{N} \subset \mathbb{R}$.
> *   **Natureza:** É infinito e ilimitado.
> *   **Topologia:** $\mathbb{N}$ é um conjunto **fechado** (pois seu complementar é uma união de intervalos abertos).
> *   **Conclusão:** Apesar de fechado, $\mathbb{N}$ **não é compacto**.
> *   **Prova da não compacidade:** Tome a cobertura aberta $\{B(n, 0.5)\}_{n \in \mathbb{N}}$. Essa cobertura cobre $\mathbb{N}$, mas não possui subcobertura finita, pois cada bola cobre apenas um número natural.

> [!important]
> Isto demonstra que **"ilimitado" mata a compacidade**. Em espaços métricos, compacidade implica limitação (e total limitação), mas a recíproca só vale em $\mathbb{R}^n$ com a adição do fechamento.

---

## 11. Critério de Sequências (Visão Elon Lages)

Para o Elon, trabalhar com **sequências** é a maneira mais prática de detectar ilimitabilidade.

> [!proposition] (Caracterização por Sequências)
> Um conjunto $X \subset \mathbb{R}^n$ é **ilimitado** se, e somente se, existe uma sequência $(x_n)$ de pontos em $X$ tal que $\|x_n\| \to +\infty$ (ou seja, a sequência "foge ao infinito").

> [!proof]
> **($\Rightarrow$)** Se $X$ é ilimitado, para cada $m \in \mathbb{N}$, existe $x_m \in X$ tal que $\|x_m\| > m$. Logo, $\|x_m\| \to \infty$.
> **($\Leftarrow$)** Se existe $(x_n)$ com $\|x_n\| \to \infty$, então para qualquer $R > 0$, existe $n_0$ tal que $\|x_{n_0}\| > R$. Portanto, $X \not\subset B(0,R)$.

---

## 12. Teorema da Permanência (ou Não Permanência)

Operações entre conjuntos ilimitados têm comportamento específico. No livro, vemos que a união preserva a ilimitabilidade, mas a interseção a destrói facilmente.

> [!theorem]
> 1.  **União:** A união de dois conjuntos é ilimitada se **pelo menos um** deles for ilimitado.
> 2.  **Interseção:** A interseção de dois conjuntos ilimitados **pode ser limitada** (e até vazia).
> 3.  **Complemento:** O complemento de um conjunto limitado, em $\mathbb{R}^n$, é ilimitado.

> [!proof] (Prova do item 2)
> Contraexemplo: Sejam $A = \{ (n, 0) \in \mathbb{R}^2 : n \in \mathbb{N} \}$ e $B = \{ (0, n) \in \mathbb{R}^2 : n \in \mathbb{N} \}$.
> Ambos são ilimitados. No entanto:
> $$ A \cap B = \{(0,0)\} $$
> que é **finito** e, portanto, **limitado**.

---

## 13. Exercício Resolvido (Estilo Elon Lages)

> [!exercise]
> Seja $f: \mathbb{R} \to \mathbb{R}$ uma função contínua. Se $f$ é **ilimitada**, prove que o conjunto $f^{-1}(\{0\})$ pode ser vazio ou finito, mas nunca precisa ser infinito. Dê um exemplo.

<details>
<summary>▶️ Solução Comentada</summary>

**Raciocínio:**
Uma função contínua ilimitada pode nunca tocar o eixo $x$, como a função exponencial.
*   **Exemplo 1 (Vazio):** $f(x) = e^x$. É ilimitada superiormente, mas $f(x) = 0$ não tem solução. Logo, $f^{-1}(\{0\}) = \varnothing$ (limitado).
*   **Exemplo 2 (Finito):** $f(x) = x^2 - 1$. É ilimitada, mas $f^{-1}(\{0\}) = \{-1, 1\}$ (finito, logo limitado).
*   **Exemplo 3 (Nem sempre infinito):** Note que uma função contínua ilimitada pode ter infinitas raízes (ex: $f(x) = x \sin(x)$), mas isso não é obrigatório. O teorema apenas mostra que a ilimitabilidade *não força* infinitas raízes.

</details>

---

## 💎 Síntese Final

| Propriedade | Conjunto Finito | Conjunto Limitado Infinito | Conjunto Ilimitado |
| :--- | :--- | :--- | :--- |
| **Exemplo ($\mathbb{R}$)** | $\{1, 2, 3\}$ | $(0,1)$ ou $\{\frac{1}{n}\}$ | $\mathbb{N}$ ou $\mathbb{R}^+$ |
| **É Compacto?** | Sim (sempre) | Depende (Só se for fechado) | **Não** |
| **Sequência foge ao ∞?** | Não | Não | Sim (característico) |
| **Ponto de Acumulação?** | Não tem | Pode ter (ex: 0 em $\{\frac{1}{n}\}$) | Pode ter (ex: $+\infty$ não pertence a $\mathbb{R}$) |