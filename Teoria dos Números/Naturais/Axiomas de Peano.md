
# Axiomas de Peano

> [!info] **O que são os Axiomas de Peano?**
> Os **Axiomas de Peano** (ou **Postulados de Peano**) são um sistema axiomático para os **números naturais**, proposto pelo matemático italiano **Giuseppe Peano** em 1889. Eles definem rigorosamente o conjunto $\mathbb{N} = \{0, 1, 2, 3, \dots\}$ (ou começando em $1$, dependendo da convenção).

🔗 **Notas relacionadas:** [[Fundamentos da Matemática]], [[Teoria dos Conjuntos]], [[Números Naturais]], [[Construção dos Naturais]]

---

## 1. Os Cinco Axiomas

> [!definition] **Axiomas de Peano (versão começando em 0)**
> 
> Seja $\mathbb{N}$ um conjunto com uma função **sucessor** $S: \mathbb{N} \to \mathbb{N}$. Os axiomas são:
> 
> 1. **Axioma do Zero:** $0 \in \mathbb{N}$
>    - Existe um elemento chamado "zero" que pertence a $\mathbb{N}$
> 
> 2. **Axioma da Sucessão:** $\forall n \in \mathbb{N},\ S(n) \in \mathbb{N}$
>    - Todo número natural tem um **sucessor** (também natural)
> 
> 3. **Axioma da Injetividade:** $S$ é injetora
>    - Se $S(m) = S(n)$, então $m = n$
>    - (Números diferentes têm sucessores diferentes)
> 
> 4. **Axioma do Não-Sucessor:** $\nexists n \in \mathbb{N}$ tal que $S(n) = 0$
>    - Zero **não é sucessor** de nenhum número natural
> 
> 5. **Axioma da Indução (Princípio da Indução Matemática):**
>    - Se um subconjunto $A \subseteq \mathbb{N}$ satisfaz:
>      - $0 \in A$
>      - $\forall n \in \mathbb{N},\ (n \in A \Rightarrow S(n) \in A)$
>    - Então $A = \mathbb{N}$

> [!note] **Convenção começando em 1**
> Muitos textos usam $1$ como primeiro natural. Nesse caso:
> - Axioma 1: $1 \in \mathbb{N}$
> - Axioma 4: $\nexists n$ tal que $S(n) = 1$

---

## 2. Representação Visual

> [!example] **A reta dos naturais**
> 
> $$0 \xrightarrow{S} 1 \xrightarrow{S} 2 \xrightarrow{S} 3 \xrightarrow{S} 4 \xrightarrow{S} 5 \xrightarrow{S} \dots$$
> 
> Onde $S(n) = n + 1$

Cada seta representa a aplicação da função sucessor.

---

## 3. Construção dos Números a Partir dos Axiomas

> [!example] **Construindo os elementos de $\mathbb{N}$**
> 
| Elemento | Definição | Leitura |
|----------|-----------|---------|
| $0$ | Dado pelo Axioma 1 | "zero" |
| $1$ | $S(0)$ | "sucessor de zero" |
| $2$ | $S(S(0))$ | "sucessor do sucessor de zero" |
| $3$ | $S(S(S(0)))$ | ... |
| $n$ | $S^n(0)$ | Aplicação $n$ vezes de $S$ |

---

## 4. Operações Definidas a Partir dos Axiomas

> [!definition] **Adição (definição recursiva)**
> 
> $$ \begin{aligned}
> a + 0 &= a \\
> a + S(b) &= S(a + b)
> \end{aligned} $$
> 
> **Exemplo:** $2 + 3 = 2 + S(2) = S(2 + 2)$
> - $2 + 2 = 2 + S(1) = S(2 + 1)$
> - $2 + 1 = 2 + S(0) = S(2 + 0) = S(2) = 3$
> - Então $2 + 1 = 3$
> - $2 + 2 = S(3) = 4$
> - $2 + 3 = S(4) = 5$

> [!definition] **Multiplicação (definição recursiva)**
> 
> $$ \begin{aligned}
> a \cdot 0 &= 0 \\
> a \cdot S(b) &= (a \cdot b) + a
> \end{aligned} $$
> 
> **Exemplo:** $3 \times 2 = 3 \times S(1) = (3 \times 1) + 3$
> - $3 \times 1 = 3 \times S(0) = (3 \times 0) + 3 = 0 + 3 = 3$
> - Então $3 \times 2 = 3 + 3 = 6$

---

## 5. Princípio da Indução Matemática

> [!theorem] **Indução Matemática (consequência do Axioma 5)**
> 
> Para provar que uma propriedade $P(n)$ vale para todo $n \in \mathbb{N}$, basta mostrar:
> 
> 1. **Base:** $P(0)$ é verdadeira
> 2. **Passo indutivo:** Se $P(k)$ é verdadeira, então $P(k+1)$ é verdadeira
> 
> $$[P(0) \land \forall k (P(k) \Rightarrow P(k+1))] \Rightarrow \forall n P(n)$$

> [!example] **Exemplo de prova por indução**
> 
> **Prove que** $1 + 2 + \dots + n = \frac{n(n+1)}{2}$ para todo $n \in \mathbb{N}$
> 
> **Base ($n=0$):** Lado esquerdo = 0, lado direito = $\frac{0 \times 1}{2} = 0$ ✓
> 
> **Passo:** Suponha verdadeiro para $k$ (hipótese de indução):
> $$1 + 2 + \dots + k = \frac{k(k+1)}{2}$$
> 
> Para $k+1$:
> $$\begin{aligned}
> 1 + 2 + \dots + k + (k+1) &= \frac{k(k+1)}{2} + (k+1) \\
> &= (k+1)\left(\frac{k}{2} + 1\right) \\
> &= (k+1)\left(\frac{k+2}{2}\right) \\
> &= \frac{(k+1)(k+2)}{2}
> \end{aligned}$$
> 
> Que é a fórmula para $n = k+1$. ✓

---

## 6. Propriedades Derivadas dos Axiomas

> [!property] **Propriedades dos Naturais (demonstráveis por indução)**
> 
> Para todos $a, b, c \in \mathbb{N}$:
> 
> | Propriedade | Adição | Multiplicação |
> |-------------|--------|---------------|
> | **Associatividade** | $(a+b)+c = a+(b+c)$ | $(ab)c = a(bc)$ |
> | **Comutatividade** | $a+b = b+a$ | $ab = ba$ |
> | **Elemento neutro** | $a+0 = a$ | $a \cdot 1 = a$ |
> | **Distributividade** | $a(b+c) = ab + ac$ | — |
> | **Lei do corte** | $a+c = b+c \Rightarrow a=b$ | $ac = bc \Rightarrow a=b$ (se $c \neq 0$) |

🔗 **Notas relacionadas:** [[Propriedades dos Naturais]], [[Provas por Indução]]

---

## 7. Relação de Ordem

> [!definition] **Ordem nos Naturais**
> 
> A partir dos axiomas, podemos definir:
> 
> $$ a \le b \iff \exists c \in \mathbb{N} \text{ tal que } a + c = b $$
> 
> $$ a < b \iff a \le b \text{ e } a \neq b $$

> [!property] **Propriedades da Ordem**
> - **Reflexiva:** $a \le a$
> - **Antissimétrica:** $a \le b$ e $b \le a \Rightarrow a = b$
> - **Transitiva:** $a \le b$ e $b \le c \Rightarrow a \le c$
> - **Total:** $\forall a,b \in \mathbb{N}$, $a \le b$ ou $b \le a$

---

## 8. Curiosidades e História

> [!info] **Contexto Histórico**
> - **Giuseppe Peano** (1858-1932) foi um matemático italiano
> - Publicou os axiomas em 1889 no livro *"Arithmetices principia, nova methodo exposita"*
> - Peano usava $1$ como primeiro natural, mas adaptações usam $0$
> - A formulação moderna foi refinada por **Richard Dedekind** e outros

> [!note] **Modelos dos Axiomas de Peano**
> - O modelo padrão: $\mathbb{N} = \{0, 1, 2, 3, \dots\}$ com $S(n) = n+1$
> - Existem **modelos não-padrão** (com números infinitos) na lógica de primeira ordem
> - Os axiomas de Peano (primeira ordem) **não categorizam** $\mathbb{N}$ (teorema de Löwenheim-Skolem)

🔗 **Notas relacionadas:** [[Giuseppe Peano]], [[História da Teoria dos Números]], [[Modelos Não Padrão]]

---

## 9. Relação com Outros Conceitos

> [!summary] **Conexões**
> 
> | Conceito | Relação com Peano |
> |----------|-------------------|
> | [[Axiomas de Corpo]] | Os naturais não formam um corpo (faltam inversos) |
> | [[Construção de von Neumann]] | Forma conjuntista dos naturais usando ordinais |
> | [[Princípio da Boa Ordenação]] | Equivalentes ao axioma da indução |
> | [[Indução Completa]] | Variação do PIM |

---

## 10. Exercícios Propostos

> [!question] **Exercício 1**
> Usando os axiomas de Peano, prove que $S(0) \neq 0$.

> [!question] **Exercício 2**
> Prove por indução que $\sum_{k=0}^{n} k = \frac{n(n+1)}{2}$.

> [!question] **Exercício 3**
> Mostre que $a + S(b) = S(a + b)$ (já usado) é consistente com $S(n) = n+1$.

> [!question] **Exercício 4**
> Usando indução, prove que $a \cdot 0 = 0$ para todo $a$.

> [!question] **Exercício 5**
> Demonstre a comutatividade da adição: $a + b = b + a$ para todos $a,b \in \mathbb{N}$.

---

## 11. Axiomas de Peano em Linguagem Formal

> [!definition] **Lógica de Primeira Ordem**
> 
> Na linguagem da lógica de primeira ordem, os axiomas são:
> 
> 1. $\forall x \ (S(x) \neq 0)$
> 2. $\forall x \forall y \ (S(x) = S(y) \Rightarrow x = y)$
> 3. $\forall x \ (x + 0 = x)$
> 4. $\forall x \forall y \ (x + S(y) = S(x + y))$
> 5. $\forall x \ (x \cdot 0 = 0)$
> 6. $\forall x \forall y \ (x \cdot S(y) = (x \cdot y) + x)$
> 7. **Esquema de Indução:** Para cada fórmula $\varphi(x)$:
>    $$ [\varphi(0) \land \forall x (\varphi(x) \Rightarrow \varphi(S(x)))] \Rightarrow \forall x \ \varphi(x) $$

🔗 **Notas relacionadas:** [[Lógica de Primeira Ordem]], [[Esquema de Indução]]

## Conclusão

> [!success] **Resumo**
> Os **Axiomas de Peano** fornecem uma base rigorosa para os **números naturais** e o **Princípio da Indução**. Eles são fundamentais para:
> - [[Fundamentos da Matemática]]
> - [[Teoria dos Números]]
> - [[Análise Real]]
> - [[Teoria da Computabilidade]]

> [!tip] **Próximos Passos**
> Após entender os [[Axiomas de Peano]], estude:
> - [[Construção dos Inteiros]]
> - [[Construção dos Racionais]]
> - [[Construção dos Reais (Cortes de Dedekind)]]
> - [[Axiomas dos Números Reais]]
