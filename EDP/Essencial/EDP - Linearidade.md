
> [!note] Linearidade
> Supondo
> $$  \sum_{i,j} D_{ij}(x), D_i D_j u + \sum_j B_j(x), D_j u + c(x)u + d(x) = 0$$
> A equaçção é equivalente a $L(u) = f$
>   
> $$  
> L(u)  
> =  
> \sum_{i,j} D_{ij}(x)\, D_iD_j u  
> +  
> \sum_j B_j(x)\, D_j u  
> +  
> c(x)u  
> $$  
>  
> Assim, a equação pode ser reescrita como  
>  
> $$  
> L(u) = f  
> $$  
>  
> onde  
>  
> $$  
> f(x) = -d(x)  
> $$  
>  
> O operador $L$ é dito linear pois satisfaz  
>  
> $$  
> L(\alpha u + \beta v)  
> =  
> \alpha L(u) + \beta L(v)  
> $$  
>  
> para quaisquer funções $u,v$ e escalares $\alpha,\beta$.  
>  
> A linearidade ocorre porque $u$ e suas derivadas aparecem apenas de forma linear, isto é, não existem termos como  
>  
> $$  
> u^2,\qquad (D_i u)^2,\qquad uD_i u,\qquad \sin(u)  
> $$  
>  
> ou qualquer outra composição não linear.
>
> Se EDP tiver ordem **$K$**, o domínio de $L$ é $$V = C^k(r)$$ Assumindo os coeficientes da EDP como **Funções Contínuas**.

> [!important]
>
> Na equação
>
> $$
> \sum_{i,j} D_{ij}(x)\, D_iD_j u
> +
> \sum_j B_j(x)\, D_j u
> +
> c(x)u
> +
> d(x)
> = 0,
> $$
>
> se $k = 1$, então
>
> $$
> D_{ij}(x) = 0,
> \qquad
> \forall i,j \in \{1,\dots,n\},
> $$
>
> e existe
>
> $$
> j \in \{1,2,\dots,n\}
> $$
>
> tal que
>
> $$
> B_j(x) \neq 0.
> $$

## Operador Diferencial Parcial
> [!note] Operador Diferencial Parcial
>
> Um **operador diferencial parcial** é um operador que atua sobre uma função utilizando derivadas parciais.
>
> De forma geral, um operador diferencial parcial linear pode ser escrito como
>
> $$
> L(u)
> =
> \sum_{|\alpha| \leq k}
> a_\alpha(x)\, D^\alpha u,
> $$
>
> onde:
>
> - $u = u(x)$ é a função desconhecida;
> - $a_\alpha(x)$ são coeficientes que dependem de $x$;
> - $D^\alpha$ representa derivadas parciais;
> - $k$ é a ordem do operador.
> - Também era como $L : C^k(\Omega) \longrightarrow C(\Omega)$
>
> Utilizando multi-índices,
>
> $$
> \alpha = (\alpha_1,\dots,\alpha_n),
> $$
>
> e
>
> $$
> |\alpha|
> =
> \alpha_1 + \dots + \alpha_n.
> $$
>
> A derivada parcial associada é definida por
>
> $$
> D^\alpha u
> =
> \frac{\partial^{|\alpha|}u}
> {\partial x_1^{\alpha_1}\dots\partial x_n^{\alpha_n}}.
> $$
>
> Por exemplo, o operador
>
> $$
> L(u)
> =
> \frac{\partial^2 u}{\partial x^2}
> +
> \frac{\partial^2 u}{\partial y^2}
> $$
>
> é o operador de Laplace, denotado por
>
> $$
> \Delta u.
> $$
>
> Nesse caso,
>
> $$
> \Delta u
> =
> u_{xx} + u_{yy}.
> $$
>
> A ordem do operador diferencial parcial é dada pela maior ordem de derivada presente na expressão.

## Subespaço Vetorial de $C^{k}(\Omega) = V$


> [!note] Núcleo de um Operador Linear
>
> Seja
>
> $$
> L : V \to W
> $$
>
> um operador linear, onde
>
> $$
> V = C^k(\Omega).
> $$
>
> O **núcleo** de $L$, denotado por
>
> $$
> \ker(L),
> $$
>
> é definido por
>
> $$
> \ker(L)
> =
> \{u \in V \; ; \; L(u)=0\}.
> $$
>
> Ou seja, o núcleo contém todas as funções que são levadas na função nula pelo operador $L$.

---

> [!important] O núcleo é um subespaço vetorial
>
> O conjunto
>
> $$
> \ker(L)
> $$
>
> é um subespaço vetorial de $V$.
>
> De fato:
>
> - A função nula pertence ao núcleo:
>
> $$
> L(0)=0.
> $$
>
> - Se $u,v \in \ker(L)$, então
>
> $$
> L(u)=0
> \qquad \text{e} \qquad
> L(v)=0.
> $$
>
> Pela linearidade,
>
> $$
> L(u+v)
> =
> L(u)+L(v)
> =
> 0+0
> =
> 0.
> $$
>
> Logo,
>
> $$
> u+v \in \ker(L).
> $$
>
> - Se $\lambda \in \mathbb{R}$ e $u \in \ker(L)$,
>
> $$
> L(\lambda u)
> =
> \lambda L(u)
> =
> \lambda \cdot 0
> =
> 0.
> $$
>
> Portanto,
>
> $$
> \lambda u \in \ker(L).
> $$

---

> [!example] O núcleo pode ser infinito-dimensional
>
> Considere o operador diferencial
>
> $$
> L(u)=\frac{\partial u}{\partial x},
> $$
>
> definido em
>
> $$
> C^1(\mathbb{R}^2).
> $$
>
> O núcleo de $L$ é dado por
>
> $$
> \ker(L)
> =
> \left\{
> u(x,y)\in C^1(\mathbb{R}^2)
> \; ; \;
> \frac{\partial u}{\partial x}=0
> \right\}.
> $$
>
> Se
>
> $$
> \frac{\partial u}{\partial x}=0,
> $$
>
> então $u$ não depende da variável $x$.
>
> Assim,
>
> $$
> u(x,y)=f(y),
> $$
>
> onde $f$ é qualquer função de uma variável.
>
> Portanto,
>
> $$
> \ker(L)
> =
> \{f(y)\; ; \; f \in C^1(\mathbb{R})\}.
> $$
>
> Como existem infinitas funções linearmente independentes em
>
> $$
> C^1(\mathbb{R}),
> $$
>
> por exemplo
>
> $$
> 1,\quad y,\quad y^2,\quad y^3,\quad \dots
> $$
>
> concluímos que
>
> $$
> \ker(L)
> $$
>
> possui dimensão infinita.
>
> Em outras palavras, o núcleo do operador diferencial pode ser um espaço vetorial infinito-dimensional.

## Integração Parcial em Relação a Diferentes Variáveis

> [!note]
>
> Quando integramos uma derivada parcial em relação a uma variável, as demais variáveis são tratadas como constantes.
>
> Além disso, a “constante” de integração pode depender das outras variáveis.

---

> [!example] Integrando em relação a $x$
>
> Suponha
>
> $$
> \frac{\partial u}{\partial x} = 2x + y.
> $$
>
> Integrando ambos os lados em relação a $x$:
>
> $$
> u(x,y)
> =
> \int (2x+y)\,dx.
> $$
>
> Como $y$ é constante em relação a $x$,
>
> $$
> u(x,y)
> =
> x^2 + xy + C(y),
> $$
>
> onde
>
> $$
> C(y)
> $$
>
> é uma função arbitrária de $y$.

---

> [!example] Integrando em relação a $y$
>
> Agora suponha
>
> $$
> \frac{\partial u}{\partial y}=x+2y.
> $$
>
> Integrando em relação a $y$:
>
> $$
> u(x,y)
> =
> \int (x+2y)\,dy.
> $$
>
> Como $x$ é constante em relação a $y$,
>
> $$
> u(x,y)
> =
> xy + y^2 + C(x),
> $$
>
> onde
>
> $$
> C(x)
> $$
>
> é uma função arbitrária de $x$.

> [!important]
>
> Na integração parcial:
>
> - ao integrar em relação a $x$, a constante pode depender de $y$;
> - ao integrar em relação a $y$, a constante pode depender de $x$.
>
> Isso ocorre porque apenas uma variável está sendo integrada por vez.