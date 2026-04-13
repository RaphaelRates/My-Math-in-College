> [!abstract] 
> Dado $X \subset \mathbb{R}$, dizemos que $a \in \mathbb{R}$ é um **Ponto de acumulação á direita de X**, e escrevemos $a \in X'_{+}$, quando _Todo intervalo aberto que contém $a$ contém algum ponto $x \in X$, com $x > a$

> [!note] 
> É equvalente  dixer que $a \in \mathbb{R}$ é o **Ponto de acumulação à direita de X** quando:$$ \forall \epsilon > 0 \text{ , } (a, a + \epsilon) \cap X \neq \emptyset$$

> [!warning] 
> ## OBS 1
> $a \in X'_{+} <-> a = \lim x_n$ onde $x_n \in X$ e $x_n > a$
> ## OBS 2
>  $a \in X'_{+} <-> a$ é ponto de acumulação (ordinário) do conjunto$$ Y = X \cap (a, +\infty)$$
>  
> _Definição e resultados análogos são válidos para ponto de acumulação á esquerda de X_

> [!info]  ## Ponto de Acumulação Bilateral
> Quando $$a \in (X'_{+} \cap X'_{-})$$

> [!example] 
>  - Se $X = \{1, 1/2, 1/3, \cdots\}$ então $0 \in X'_{+}$, porém $0 \neq \in X'_{-}$
>  - Se $a \in int(X)$, então $a \in  (X'_{+} \cap X'_{-})$
>  - Se $a$ é o extremo inferior de um umtrvalo $I$, então $a \in $I'_{+}$ porém $a \in I'_{-}$

> [!abstract] ## Limite à direita
> Seja $X \subset \mathbb{R}$, $a \in X'_{+}$ e $f: X -> \mathbb{R}$. Dizemos $L \in \mathbb{R}$ é **Limite a Direita** de $f(x)$ quando $x -> a$, e escrevemos $$ \lim_{x->a^{+}} f(x) = L \text{  e  } \lim_{x->a} g(x) = M$$ quando $\forall \epsilon > 0, \text{ existe } \gamma > 0$ tal que $$ x \in X, 0 < x - a < \gamma -> \|f(x) - L\| < \epsilon$$

> [!note] 
> Analogamente, definimos o limite à esquerda de $f(X)$ quando $x$ tende a $a$, no caso em que $a \in X'_{-}$
> $$\lim_{x->a^{-}} f(x) = L$$
> $$\forall \epsilon > 0 \text{ , existe } \gamma > 0$$ tal que$$ x \in X \text{ , } 0 < a - x < \gamma => \|f(x) - L \| < \epsilon$$
> 
> As propriedades gerais dos limites vistos anteriormente, permanecem válidas para limites laterais, com as derivas adaptações

> [!warning] OBS
> Se $a \in X'_{+} \cap X^{+}_{-}$, então $$\lim_{x->a} f(x) = L <-> \lim_{x->a^{+}} f(x) = \lim_{x->a^{-}} f(x) = L$$

> [!example] 
> Sejam $f, g, h : \mathbb{R} - {0} -> \mathbb{R}$, $f(x) = sen 1/x$, $g(x) = 1/x$ e $h(x) = x/|x|$
> Então não existe nenhum dos limites

## Teorema
> [!abstract] 
> Seja $f:X -> \mathbb{R}$ uma função monótona limitada
> 
> a) Se $a \in X'_{+}$, então existe $\lim_{x->a^{+}} f(x)$
> 
> b) Se $a \in X'_{-}$, então existe $\lim_{x->a^{-}} f(x)$

## **Prova**

**Hipótese geral:**  
- $f$ é **monótona crescente** ou **decrescente** em $X$  
- $f$ é **limitada** (superiormente e inferiormente)  
- $X'_+$: pontos de acumulação pela direita  
- $X'_-$: pontos de acumulação pela esquerda  

---

### **a) Caso $a \in X'_+$**

1. Como $a$ é ponto de acumulação pela direita, existe uma sequência $\{x_n\} \subset X$, com $x_n > a$ e $x_n \to a$.  
   
2. **Suponha $f$ crescente** (o caso decrescente é análogo):  
   - Se $x > y$, então $f(x) \ge f(y)$.

3. Definimos:
   $$L := \inf\{ f(x) \mid x > a \}$$
   Esse ínfimo existe pois $f$ é limitada inferiormente.

4. **Mostremos que $\lim_{x \to a^+} f(x) = L$:**
   - Dado $\varepsilon > 0$, como $L$ é ínfimo, existe $x_\varepsilon > a$ tal que:
     $$f(x_\varepsilon) < L + \varepsilon$$
   - Pela monotonicidade, se $a < x < x_\varepsilon$, então:
     $$L \le f(x) < L + \varepsilon$$
   - Logo:
     $$|f(x) - L| < \varepsilon$$  
     para $x$ suficientemente próximo de $a$ pela direita.

5. Conclusão:
   $$\lim_{x \to a^+} f(x) = L$$

---

### **b) Caso $a \in X'_-$**

1. Como $a$ é ponto de acumulação pela esquerda, existe uma sequência $\{x_n\} \subset X$, com $x_n < a$ e $x_n \to a$.  

2. **Suponha $f$ crescente** (o caso decrescente é análogo):  
   - Se $x > y$, então $f(x) \ge f(y)$.

3. Definimos:
   $$M := \sup\{ f(x) \mid x < a \}$$
   Esse supremo existe pois $f$ é limitada superiormente.

4. **Mostremos que $\lim_{x \to a^-} f(x) = M$:**
   - Dado $\varepsilon > 0$, como $M$ é supremo, existe $x_\varepsilon < a$ tal que:
     $$f(x_\varepsilon) > M - \varepsilon$$
   - Pela monotonicidade, se $x_\varepsilon < x < a$, então:
     $$M - \varepsilon < f(x) \le M$$
   - Logo:
     $$|f(x) - M| < \varepsilon$$  
     para $x$ suficientemente próximo de $a$ pela esquerda.

5. Conclusão:
   $$\lim_{x \to a^-} f(x) = M$$

---

✅ Assim, provamos que **funções monótonas limitadas têm todos os limites laterais finitos** nos pontos de acumulação de seu domínio.
