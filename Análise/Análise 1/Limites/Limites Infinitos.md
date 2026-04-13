> [!abstract] # Limites no Infinito
> Dado $X \subset \mathbb{R}$ ilimitado superiormente e $f: X -> \mathbb{R}$. Escrevemos,$$\lim_{x->\infty} f(x) = L$$Quando $\forall \epsilon > 0$, existe um $M > 0$ tal que$$ x \in X\text{ , } x > M => \|f(x) - L\| < \epsilon$$
> 
> $\lim_{x->\infty} x_n = +\infty$ e o $\lim_{n->+\infty} f(x_n) = L$

> [!note] De maneira Análoga, funciona para o $-\infty$ quando $X$ é ilimitado inferiormente

> [!warning] OBS
> Os resultaos para limites quando $x->a$, $a \in \mathbb{R}$ permanecem válidos quando $x->+\infty$ ou $x->-\infty$, com as devidas adaptações.

> [!example]
> 
> ## Exemplo 1 — $lim⁡x→±∞1x=0calc\lim_{x\to\pm\infty}\frac{1}{x}=0$
> 
> **Prova $\epsilon$–$M$ (uma tacada só para $+\infty$ e $-\infty$):**  
> Dado $\epsilon>0$, tome $calc M=\frac{1}{\epsilon}$.  
> Se $ |x|>M$, então calc∣1x−0∣=1∣x∣<1M=ϵ.calc\left|\frac{1}{x}-0\right|=\frac{1}{|x|}<\frac{1}{M}=\epsilon.  
> Logo, $⁡x→+∞1x=0elim⁡x→−∞1x=0$. $\lim_{x\to+\infty}\frac{1}{x}=0\quad\text{e}\quad \lim_{x\to-\infty}\frac{1}{x}=0$.
> ## Exemplo 2 — $lim⁡x→0sin⁡ ⁣(1x)$ não existe $\lim_{x\to 0}\sin\!\left(\frac{1}{x}\right)\ \text{não existe}$
> 
> Porém, os **limites inferior e superior** existem:
> 
> $\limsup_{x\to 0}\sin\!\left(\tfrac{1}{x}\right)=1.$ Basta notar que: - Para $calc x_n=\frac{1}{\tfrac{\pi}{2}+2\pi n}\to 0$, temos $calc\sin(1/x_n)=1$. - Para $y_n=\frac{1}{\tfrac{3\pi}{2}+2\pi n}\to 0$, temos $\sin(1/y_n)=-1$. Oscila entre $-1$ e $1$ perto de $0$ → sem limite clássico.
> ## Exemplo 3 — exponencial
> 
> $\lim⁡x→−∞e^x=0$.$\lim_{x\to-\infty}e^{x}=0$.  
> $\lim⁡x→+∞e^x=+∞$ (diverge; na˜o haˊ limite finito). $\lim_{x\to+\infty}e^{x}=+\infty\ (\text{diverge; não há limite finito})$.  
> (No sentido estendido, o limite à direita é $calc+\infty$ mesmo.)

> [!abstract] # Limites Infinitos
> Sejam $X \subset \mathbb{R}$, $a \in X'$ e $f: X -> \mathbb{R}$. Escrevemos$$ \lim_{x->a} f(x) = +\infty$$
> Quando $\forall N > 0$, existe $\beta > 0$ tal que $$x \in X \text{ , } 0 < \| x - a \| < \beta => f(x) > N$$
> 
> Análoga a menos infinito

> [!example] 
>  - $\lim_{x->0} 1/x^2 = +\infty$
>  - $\lim_{x->0} -1/x^2 = -\infty$

> [!note] 
> Existem também definições para
> ### $\lim_{x->a^+} f(x) = \infty$ e $\lim_{x->a^-} f(x) = \infty$
> ### $\lim_{x->+\infty} f(x) = \infty$ e $\lim_{x->-\infty} f(x) = \infty$
> ### $\lim_{x->+\infty} e^{x} = +\infty$ e $(a-\gamma, a+\gamma) \cap X = {a}$

> [!abstract] ## Funções Contínuas
> Sejam $X \subset \mathbb{R}$ e $f : X -> \mathbb{R}$. Diemos que $f$ é contínua no ponto $a \in X$ quando $\forall \epsilon > 0$, existe um $\delta > 0$ tal que $$x \in X \text{ , } \|x-a\| < \delta -> \|f(x) - f(a)\| < \epsilon$$

> [!warning] 
> Se $f$ não é contínua no ponto $a \in X$, dizemos que $f$ é descontínua em $a$ 

> [!note] 
> Dizemos que $f : X -> \mathbb{R}$ é uma função contínua quando F é contunua todos os pontos de $a \in \mathbb{X}$

> [!example] 
> Se um ponto isolado de $X$, então toda função $f : X -> \mathbb{R}$ e contínua em $a$.
> Se $a \in X \cap X'$, então $f : X -> \mathbb{R}$ contínua em $a$ se, e somente se $$\lim_{x->a} f(x) = f(a)$$

## Teorema
>[!note]
>Sejam $f, g : X -> \mathbb{R}$ contínuas em $a \in X$. Se $f(a) < g(a)$, então existe $\delta > 0$ tal que $$f(x) < g(x), \forall x \in (a - \delta, a + \delta) \cap X$$

### Prova  

1. Como $f$ e $g$ são contínuas em $a$, também é contínua a função  
   $$h(x) = g(x) - f(x).$$  

2. Temos $h(a) = g(a) - f(a) > 0.$  

3. Pela continuidade de $h$ em $a$:  
   - existe $\delta > 0$ tal que  
   $$|h(x) - h(a)| < \tfrac{h(a)}{2}, \quad \forall x \in (a-\delta,a+\delta)\cap X.$$  

4. Logo, para tais $x$:  
   $$h(x) > h(a) - \tfrac{h(a)}{2} = \tfrac{h(a)}{2} > 0.$$  

5. Assim,  
   $$g(x) - f(x) = h(x) > 0 \quad\Rightarrow\quad f(x) < g(x).$$


### Colorário
> [!note] 
> Seja $f : X -> \mathbb{R}$ contínua em $a \in X$. Se $f(a) \neq \emptyset$. Então existe $\delta > 0$, tal que $$\forall x \in (a - \delta, a + \delta) \cap X$$ $f(x)$ tem o mesmo sinal de $f(a)$
> 
> #### Prova
> Basta tomar $g(x) = 0$, no teorema acima

#### Colorário
> [!note] 
> Seja $f , g : X -> \mathbb{R}$ funções contínuas, sejam $$Y = {z \in X; f(x) < g(x) }$$ e $$Z = {x \in X : f(x) <= g(x)}$$Então existem $A \subset \mathbb{R}$ aberto e $F \subset \mathbb{R}$ fechado, tais que:$Y= X \cup A$ e $
> 
> EM particular Se X e aberto então Y é aberto e somente se X é fechado

-- continuarei --

## Teorema
> [!abstract] 
> Uma função $f : X -> \mathbb{R}$ é **contínua** em $a \in X$ se, e somente se, $\forall x_n$ sequencia em $X$ com $$\lim x_n = a$$, temos que :$$\lim f(x_n) = f(a)$$

# Prova da Equivalência da Continuidade via Sequências

Seja $f: X \subset \mathbb{R} \to \mathbb{R}$ e $a \in X$. Então, $f$ é contínua em $a$ se, e somente se, para toda sequência $(x_n)$ em $X$ com $\lim x_n = a$, tem-se $\lim f(x_n) = f(a)$.

---

## 🔁 Prova da Ida (Direta)

**Hipótese**: \( f \) é contínua em \( a \).

Pela definição $\epsilon-\delta$:  
$$
\forall \epsilon > 0, \exists \delta > 0 \text{ tal que } |x - a| < \delta \implies |f(x) - f(a)| < \epsilon.
$$

Seja $x_n$ uma sequência em $X$ com $\lim x_n = a$.  
# ✅ Equivalência das Definições de Continuidade

## 🔁 Ida (Definição $\epsilon$-$\delta \;\Rightarrow\;$ Sequencial)

Seja $\delta >$.  
Existe $N \in \mathbb{N}$ tal que:

$$
\forall n \geq N, \quad |x_n - a| < \delta.
$$

Pela continuidade de $f$, para $n \geq N$:

$$
|f(x_n) - f(a)| < \epsilon.
$$

Logo:

$$
\lim_{n \to \infty} f(x_n) = f(a).
$$

✅ A condição sequencial é satisfeita.

---

## 🔄 Volta (Sequencial $\;\Rightarrow\;$ Definição $\epsilon$-$\delta$)

**Hipótese**: Para toda sequência $(x_n)$ em $X$ com $x_n \to a$, tem-se:

$$
f(x_n) \to f(a).
$$

**Contrapositiva**: Suponha que $f$ **não** é contínua em $a$.  
Então, existe $\epsilon_0 > 0$ tal que:

$$
\forall \delta > 0, \; \exists x \in X \;\; \text{com} \;\; |x - a| < \delta \;\; \text{e} \;\; |f(x) - f(a)| \geq \epsilon_0.
$$

Para cada $n \in \mathbb{N}$, tome $\delta = \tfrac{1}{n}$.  
Assim, existe $x_n \in X$ tal que:

$$
|x_n - a| < \tfrac{1}{n}, 
\qquad |f(x_n) - f(a)| \geq \epsilon_0.
$$

Logo:

- $x_n \to a$, mas  
- $f(x_n) \not\to f(a)$.

❌ Contradição com a hipótese.  

Portanto, $f$ é contínua em $a$.  
✅ A definição $\epsilon$-$\delta$ é satisfeita.

---

 Observação: Pontos de Acumulação

- Se $a$ é **ponto de acumulação** de $X$, a sequência $(x_n)$ pode ser construída com $x_n \neq a$.  
- Se $a$ é **ponto isolado**, a única sequência convergente é a constante $x_n = a$, e aí $f(x_n) = f(a)$ trivialmente.  


A equivalência vale em ambos os casos.

---

## 🧾 Exemplo de Aplicação

Considere:  
$$
f(x) = 
\begin{cases} 
x^2 & \text{se } x \neq 0, \\
1 & \text{se } x = 0.
\end{cases}
$$

- Tome $x_n = \frac{1}{n} \to 0$.
- $f(x_n) = \frac{1}{n^2} \to 0 \neq f(0) = 1$.
- Pelo teorema, $f$ não é contínua em $0$.

---

### Colorário
> [!note] 
> Sejam $f, g: X \subset \mathbb{R} \to \mathbb{R}$ funções contínuas em $a \in X$. Então, as seguintes funções também são contínuas em $a$:
> 1. $f + g$
> 2. $f - g$
> 3. $f \cdot g$
> 4. $\frac{f}{g}$, desde que $g(a) \neq 0$

 > [!example] 
 > 
 > ## Toda função racional no estilo $\frac{f(x)}{g(x)}$ é continua por $\lim_{x->a} f(x) = f(a)$
 
 > [!example] 
 > A função $f: \mathbb{R} -> \mathbb{R}$ , $$f(x) = 
\begin{cases} 
sen(\frac{1}{x}) & \text{se } x \neq 0, \\
0 & \text{se } x = 0.
\end{cases}$$
> 
> É descontinua em 0 mas $f$ é continua em $\mathbb{R} - {0}$

  
 > [!example] 
 > A função $f: \mathbb{R} -> \mathbb{R}$ , $$f(x) = 
\begin{cases} 
x.sen(\frac{1}{x}) & \text{se } x \neq 0, \\
0 & \text{se } x = 0.
\end{cases}$$
> 
> É continua em $\mathbb{R}$

 ## Teorema 

