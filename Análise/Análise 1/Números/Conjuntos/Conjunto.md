## Conceito Geral

> [!info] 
>  Na linguagem da **análise funcional** — ramo da matemática que estuda espaços vetoriais normalizados e suas aplicações lineares contínuas — um **conjunto** pode ser interpretado como uma **coleção estruturada de elementos** (tipicamente vetores ou funções) sobre os quais se impõe uma **estrutura funcional** (norma, topologia, produto interno, etc).

> [!note] 
> **Conjunto**: uma coleção bem definida de elementos.  
> Na análise funcional, geralmente são subconjuntos de espaços como:
> -  $L^p([a, b])$
> - $\ell^p$
> - $C([a, b])$
> - $\mathcal{H}$ (espaço de Hilbert)

---
## Definição Estrutural

> [!tip]
> Seja $X$ um espaço vetorial normalizado sobre $\mathbb{K} = \mathbb{R} \text{ ou } \mathbb{C}$.  
Um **conjunto** $A \subseteq X$ pode possuir as seguintes propriedades estruturais:

> [!elemento] Convexidade  
> $A$ é convexo se:
> $$
> \forall x, y \in A, \ \forall t \in [0,1], \quad tx + (1-t)y \in A
> $$

> [!elemento] Fechamento (ou fechado)  
> Se a sequência $(x_n) \subseteq A$ converge em $X$ para $x$, então:
> $$
> x \in A \Rightarrow A \text{ é fechado}
> $$

> [!elemento] Limitado  
> $A$ é limitado se existe $M > 0$ tal que:
> $$
> \|x\| < M, \quad \forall x \in A
> $$

> [!elemento] Compacto  
> Todo subconjunto infinito de $A$ possui uma subsequência convergente dentro de $A$.

---

## Corolários Importantes

>[!seealso] *Corolário 1**:  
> Em um espaço de Banach \( X \), todo conjunto compacto é fechado e limitado.  
> _(Banach = espaço vetorial normado completo)_

> [!seealso] **Corolário 2**:  
> Em $\mathbb{R}^n$, pela **teorema de Heine-Borel**,  
> um conjunto é **compacto** se, e somente se, é **fechado e limitado**.

> [!seealso] **Corolário 3**:  
> Em espaços de dimensão infinita, conjuntos fechados e limitados **não são necessariamente compactos**.  
> Por exemplo, a bola unitária fechada de $L^p$ (com $1 \le p < \infty$) não é compacta.

---
## Tipos de Conjuntos em Análise Funcional

### 📌 [[Conjunto Limitado]]

> [!abstract] 
> Um conjunto A⊂RA $\subset \mathbb{R}$ A⊂R é **limitado** se existe um número real M>0M > 0M>0 tal que:
>
> $$\forall x \in A, \quad |x| \leq M$$

> [!example]
> Em outras palavras: **não se afasta indefinidamente da origem.**

---
### 📌 [[Conjunto Ilimitado]]

> [!abstract]
> Um conjunto é **ilimitado** quando não existe um M∈RM $\in \mathbb{R}$ M∈R que limite todos os seus elementos:
>
> $$\forall M > 0, \quad \exists x \in A \text{ tal que } |x| > M$$  

> [!example]
> Ou seja: **ele “explode” para o infinito.**

---
### 📌 [[Conjunto Finito]]

> [!abstract] 
>  Possui um número **contável e limitado de elementos**, isto é, existe um número natural n∈N n $\in \mathbb{N}$ n∈N tal que:>  
$$\text{card}(A) = n  $$

> [!example]
> A={1,2,3,4} A = {1, 2, 3, 4} A={1,2,3,4}

---
### 📌 [[Conjunto Infinito]]

> [!abstract] 
> Um conjunto é **infinito** quando **não é finito**, ou seja, **não é possível enumerar todos os seus elementos com um número natural.**

> [!example]
> $$N,R,Q\mathbb{N}, \mathbb{R}, \mathbb{Q}N,R,Q$$

---
### 📌 [[Conjunto Enumerável]]

> [!abstract] 
> Um conjunto é **enumerável** se existe uma **bijeção** entre ele e $\mathbb{N}$:
$$\exists f : \mathbb{N} \to A \text{ tal que } f \text{ é bijetora}  $$

> [!example]
> Todos os subconjuntos de $\mathbb{N}, \mathbb{Q}$, etc., são enumeráveis.

---

### 📌 [[Conjunto Não Enumerável]]

> [!abstract] 
Um conjunto é **não enumerável** quando **não existe uma bijeção com $\mathbb{N}$**.
>
> $$\text{card}(A) > \text{card}(\mathbb{N}) $$ 

> [!example]
> $\mathbb{R}$ (os reais são mais numerosos que os naturais).
