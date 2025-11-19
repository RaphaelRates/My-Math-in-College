>[!seealso] ## Definição
>Sejam $c \in \mathbb{C}$ e $n$ um inteirp prositivo. Dizemos que $w \in \mathbb{C}$ é uma raiz $n$-nésima (complexa) de $z$. Se $w^n = z$

> [!tip]  única raiz 1-ésima de $z$ é o próprio $z$

> [!tip] O 0 possui uma única raiz n-ésima que é o próprio zero

> [!example] Mostre que
> 
> • ( -4i )  
> • ( 2\sqrt{3} + 2i )  
> • ( -2\sqrt{3} + 2i )
> 
> são raízes cúbicas de (64i).

#### Solução

1. $(-4i)^3 = (-4)^3 \cdot i^3 = -64 \cdot (-i) = 64i$
2. Para os outros dois números, escrevemos em forma polar:
    $2\sqrt{3} + 2i = 4\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$ , 
    $-2\sqrt{3} + 2i = 4\left(\cos\frac{5\pi}{6} + i\sin\frac{5\pi}{6}\right)$.
    Então:
    $(2\sqrt{3}+2i)^3$  
    $= 4^3\left(\cos\frac{3\pi}{6} + i\sin\frac{3\pi}{6}\right)$  
    $= 64\left(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}\right)$  
    $= 64i$  
    
    E:
    $(-2\sqrt{3}+2i)^3$
    $= 4^3\left(\cos\frac{15\pi}{6} + i\sin\frac{15\pi}{6}\right)$  
    $= 64\left(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}\right)$
    $= 64i$  
    
## Proposição das raízes (n)-ésimas complexas

Para cada inteiro positivo (n), todo número complexo não nulo (z) possui exatamente (n) raízes (n)-ésimas distintas, dadas por
$$Z_k ;=; \sqrt[n]{|z|},\bigg(\cos!\left(\frac{\theta + 2\pi k}{n}\right)  
;+; i,\sin!\left(\frac{\theta + 2\pi k}{n}\right)\bigg),  
\qquad k = 0,1,\dots,n-1,$$

onde $\theta = Arg(z)$ 

#### Prova
Sejam $n \ge 2$$ e $\theta = Arg(z)$ onde $z \neq 0$, Então
$$z = |z|(\cos\theta + i\sin\theta)$$é a forma polar de $z$.
