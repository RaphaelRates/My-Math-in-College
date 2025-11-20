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
$$z = |z|(\cos\theta + i\sin\theta)$$
Para $$w \ge |w| \cdot (\cos{\phi} + i \cdot \sin{n \phi})$$
Partindo de $w^n = z$:

$$w^n = z  
;;\Longleftrightarrow;;  
|w|^n \big(\cos(n\psi) + i\sin(n\psi)\big)$$
$$ = |z|\big(\cos\theta + i\sin\theta\big)$$
$$\Longleftrightarrow;;  
|w|^n = |z|  
\quad\text{e}\quad  
n\psi = \theta + 2k\pi,  
;\text{ para algum } k \in \mathbb{Z}$$

> [!theorem] Raízes (n)-ésimas de um número complexo
> 
> Seja $z = |z|(\cos\theta + i\sin\theta)$ um número complexo não nulo.  
> Para cada inteiro positivo $n$, as raízes $n$-ésimas de $z$ são exatamente os números  
> $z_k ;=; \sqrt[n]{|z|} \leftarrow \cos!\left(\frac{\theta + 2k\pi}{n}\right) +  i\sin!\left(\frac{\theta + 2k\pi}{n}\right) \rightarrow,  \qquad k \in \mathbb{Z}$ 
> Como apenas $n$ valores distintos surgem, basta considerar $k = 0,1,\dots,n-1$.

Agora dados $r$, $s \in \mathbb{Z}$, temos. $$z_1 = z_r \iff \frac{\theta + 2 \cdot s \cdot \pi}{n} = \frac{\theta + 2 \cdot r \cdot \pi}{n} + 2 \cdot K \cdot \pi$$
Para algum $K \in \mathbb{Z}$ $$ \iff \theta + 2 \cdot \pi = \cdot + 2 \cdot r \cdot \pi + 2 \cdot K \cdot \pi \cdot n$$$$S = r + K \cdot n$$ para algum $K \in \mathbb{Z}$ Como qualquer inteiro $s$ pode ser escrito de uma forma, e somente uma das formas.  
$S = 0 + k \cdot n$
$S = 1 + k \cdot n$
$S = 2 + \cdot n$
$S = (n-1) + K \cdot n$ 

onde $k \in \mathbb{Z}$, concluímos que há exatamente $n$ raízes $n$-ésimas distintas, que são dadas por $$z_1 = \sqrt[n]{|z|} \cdot [\cos{\frac{\theta + 2 \cdot l \cdot \pi}{n}} + i \cdot \sin{\frac{\theta + 2 \cdot l \cdot \pi}{n}}] $$
$l = [0,1,...,n -1]$

A raiz $n$-ésima $z_o$ é chamada a **raiz $n$-ésima principal** e será denotada por $\sqrt[n]{z}$ 
Assim, $$ \sqrt[n]{z}  = \sqrt[n]{|z|} \cdot [\cos{\frac{Arg(z) \cdot z}{n}} + i \cdot \sin{\frac{Arg(z) \cdot z}{n}}] $$
Convencionamos que $\sqrt[n]{0} = 0$ e $\sqrt{z} = \sqrt[2]{z}$ 

Vou transcrever a imagem trocando `\[` por `$$` e `\(` por `$`:

---

**Ex.**: Chique au rafier côteur de $ z = 27 $ d.

Sel : Temes

$$
z = 27 \quad e \quad 0 + \log z = \frac{1}{2}
$$

Logo : $z = 27$ (cas $\frac{\pi}{3} + \lambda \sin \frac{\pi}{3}$)

Assim, as rafiers côteurs se

$$
z = \sqrt[3]{27} \left[ \cos \left( \frac{\pi}{3} + 2\lambda \right) + \lambda \sin \left( \frac{\pi}{3} + 2\lambda \right) \right]
$$

$$
\lambda = 0.4
$$

$$
z = 4
$$

$$
z_0 = \sqrt[3]{27} \left( \cos \frac{\pi}{6} + \lambda \sin \frac{\pi}{6} \right)
$$
$$
= 3 \left( \frac{\sqrt{5}}{2} + \lambda \frac{\sqrt{5}}{2} \right) = \frac{3\sqrt{5}}{2} + \lambda \frac{2}{2}
$$

$$
z_1 = \sqrt[3]{27} \left( \cos \frac{5\pi}{6} + \lambda \sin \frac{5\pi}{6} \right)
$$
$$
= 3 \left( -\frac{\sqrt{5}}{2} + \lambda \frac{\sqrt{5}}{2} \right) = -\frac{3\sqrt{5}}{2} + \frac{2}{2}\lambda
$$

$$
z_2 = \sqrt[3]{27} \left( \cos \frac{7\pi}{2} + \lambda \sin \frac{7\pi}{2} \right)
$$
$$
= 3 \left( 0 + \lambda \cdot 64 \right) = -3\lambda
$$

---