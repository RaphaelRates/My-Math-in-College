---
title: Equações Diferenciais Parciais (EDPs)
tags: [matemática, EDP, equações-diferenciais, cálculo]
date: 2026-04-26
---

> [!warning] Definições Básicas abaixo

## Definições básica

### Espaço Euclidiano
> [!note]  
> Denotemos um espaço euclidiano de dimensão $n$ por:
> $$
> \mathbb{R}^n = \{\, (x_1, x_2, \dots, x_n) \in \mathbb{R} \mid 1 \leq i \leq n \,\}.
> $$

> [!tip] 
> Quando é $n = 1$, temos $\mathbb{R}^1 = \mathbb{R}$
### [[Conjunto]]
> [!note] Conjuntos 
> - Números Inteiro: $\mathbb{Z}$
> - Complexos: $\mathbb{C}$
> - Naturais: $\mathbb{N} = \{n \in \mathbb{Z} \mid n \leq 1\}$
> - $\mathbb{Z}^+ = \{ n \in \mathbb{Z} \mid n \geq 0 \}$

### [[Conjunto Aberto]]

> [!note]  
> Um subconjunto $A \subseteq \mathbb{R}^n$ é dito **aberto** se, dado qualquer $x_0 \in A$, existe $\varepsilon > 0$ tal que:
> $$
> B(x_0, \varepsilon) = \{\, x \in \mathbb{R}^n \mid \|x - x_0\| < \varepsilon \,\} \subseteq A.
> $$

### [[Conjunto Fechado]]

> [!note]  
> Um subconjunto $A \subseteq \mathbb{R}^n$ é dito **fechado** se, para toda sequência $(x_n) \subseteq A$ que converge para $x \in \mathbb{R}^n$, temos:
> $$
> x \in A.
> $$

### [[Interior]]

> [!note]  
> Seja $A \subseteq \mathbb{R}^n$. O **interior** de $A$, denotado por $\operatorname{int}(A)$, é o conjunto de todos os pontos $x \in A$ tais que existe $\varepsilon > 0$ com:
> $$
> B(x, \varepsilon) \subseteq A.
> $$
### [[Fecho de um Conjunto]]

> [!note]  
> Seja $A \subseteq \mathbb{R}^n$. O **fecho** de $A$, denotado por $\overline{A}$, é o conjunto de todos os pontos $x \in \mathbb{R}^n$ tais que existe uma sequência $(x_n) \subseteq A$ com:
> $$
> x_n \to x.
> $$
### Distância
> [!note] 
> Dado que $x = (x_1, x_2, \dots , x_n)$ e $y = (y_1, y_2, \dots, y_n)$ com $x, y \in \mathbb{R}^n$, temos que:
> $$
> \lvert x - y \rvert = \sqrt{\sum_{i=1}^{n} (x_i - y_i)^2}
> $$
### Fronteira

> [!note]  
> Seja $A \subseteq \mathbb{R}^n$. A **fronteira** de $A$, denotada por $\partial A$, é o conjunto de todos os pontos $x \in \mathbb{R}^n$ tais que, para todo $\varepsilon > 0$, vale:
> $$
> B(x,\varepsilon)\cap A \neq \varnothing
> \quad \text{e} \quad
> B(x,\varepsilon)\cap A^c \neq \varnothing.
> $$
### Bola Aberta
> [!note] 
> com $x_0 \in \mathbb{R}^n$, $r > 0$fixos, é o conjunto $$B(x_o, r) = \{ x \in \mathbb{R}^n \mid |x - x_0| < r \}$$
> Sendo isso uma bola aberta de centro $x_0$ e raio $r$
> 














