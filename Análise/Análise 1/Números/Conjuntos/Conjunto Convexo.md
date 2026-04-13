> [!seealso] **Cisão**
> uma decomposição de um conjunto $X \subset \mathbb{R}$ e :
> $$X = A \cup B$$
> tal que:
> $$A \cap \overline{B} = \varnothing$$
> e
> $$\overline{A} \cap B = \varnothing$$

> [!example]
> Seja $X = \mathbb{R} - \{0\}$, então:
> $$X = (-\infty, 0) \cup (0, +\infty)$$
> **É uma cisão**

> [!example]
> Dado $\alpha \in \mathbb{R} \setminus \mathbb{Q}$, sejam:
> $$A = \{\, x \in \mathbb{Q} \mid x < \alpha \,\}$$
> e
> $$B = \{\, x \in \mathbb{Q} \mid x > \alpha \,\}$$

> [!abstract] O que é uma cisão?
> Uma **cisão** acontece quando dividimos um conjunto em duas partes que:
> 1. Não se encostam (não têm elementos em comum).
> 2. Juntas, formam todo o conjunto original.
> 3. Cada parte é "fechada" no sentido de não encostar na borda da outra.

---

> [!example] Exemplo prático
> Vamos pegar todos os números racionais $\mathbb{Q}$ e escolher um número irracional qualquer, por exemplo $\alpha = \sqrt{2}$.
>
> Definimos:
> $$A = \{\, x \in \mathbb{Q} \mid x < \alpha \,\}$$
> $$B = \{\, x \in \mathbb{Q} \mid x > \alpha \,\}$$
>
> **Por que isso é uma cisão?**
> 1. **Eles não se encostam:** não existe número racional que seja ao mesmo tempo menor e maior que $\alpha$.
> 2. **Juntos formam todo o conjunto:** qualquer número racional é ou menor que $\alpha$ (vai para $A$) ou maior que $\alpha$ (vai para $B$).
> 3. **Separação limpa:** o "ponto de corte" $\alpha$ nem sequer é racional, então ele não entra em nenhum dos dois lados.

> [!example] Exemplo de cisão no conjunto dos reais
> Seja o conjunto $X = \mathbb{R}$ (todos os números reais).
>
> Definimos:
> $$A = (-\infty, 5]$$
> $$B = (5, +\infty)$$
>
> **Prova de que $(A,B)$ é uma cisão de $X$:**
>
> 4. **Eles não se encostam:**  
>    Não existe número real que esteja ao mesmo tempo em $A$ e $B$, pois $A$ só vai até $5$ e $B$ começa acima de $5$.
>
> 5. **Juntos formam todo o conjunto:**  
>    Qualquer número real é ou menor ou igual a $5$ (vai para $A$) ou maior que $5$ (vai para $B$).  
>    Logo, $A \cup B = \mathbb{R}$.
>
> 6. **Separação limpa:**  
>    O ponto $5$ pertence apenas a $A$ e não a $B$, evitando sobreposição.

> [!proof] Prova de que $(A,B)$ é uma cisão de $\mathbb{Q}$
>  
> Seja $\alpha \in \mathbb{R}\setminus\mathbb{Q}$ (isto é, $\alpha$ é irracional) e definamos:
> $$A = \{\, x \in \mathbb{Q} \mid x < \alpha \,\}$$
> $$B = \{\, x \in \mathbb{Q} \mid x > \alpha \,\}$$
>  
> **1) União cobre todo o conjunto $\mathbb{Q}$**
>  
> $$A \cup B = \mathbb{Q}$$
>  
> porque, para todo $q\in\mathbb{Q}$, ou $q<\alpha$ ou $q>\alpha$ (não há $q=\alpha$ pois $\alpha$ é irracional e $q$ é racional).  
>  
> **2) Interseção vazia**
>  
> $$A \cap B = \varnothing$$
>  
> de fato, não existe elemento racional que seja simultaneamente menor e maior que $\alpha$.
>  
> **3) Os fechos relativos em $\mathbb{Q}$ não se tocam**
>  
> (Queremos mostrar que $$\overline{A}^{\,\mathbb{Q}} \cap B = \varnothing \quad\text{e}\quad A \cap \overline{B}^{\,\mathbb{Q}} = \varnothing,$$ onde o fecho é tomado na topologia subspace de $\mathbb{Q}$.)
>  
> Seja $q\in B$. Então $$q>\alpha.$$ Defina
> $$\varepsilon = \frac{q-\alpha}{2}>0.$$
> O intervalo aberto em $\mathbb{R}$
> $$ (q-\varepsilon, q+\varepsilon) $$
> contém apenas números estritamente maiores que $\alpha$ (porque $q-\varepsilon = \frac{q+\alpha}{2}>\alpha$). Assim, o vizinho racional
> $$(q-\varepsilon, q+\varepsilon)\cap\mathbb{Q}$$
> é um entorno de $q$ (relativo a $\mathbb{Q}$) que não contém pontos de $A$ (pois todos os pontos de $A$ são $<\alpha$). Logo $q$ não é ponto de acumulação de $A$ em $\mathbb{Q}$, e portanto
> $$q\notin \overline{A}^{\,\mathbb{Q}}.$$
> Como $q\in B$ foi arbitrário, concluímos
> $$\overline{A}^{\,\mathbb{Q}} \cap B = \varnothing.$$
>  
> O argumento simétrico (trocar $<$ por $>$) mostra também que
> $$A \cap \overline{B}^{\,\mathbb{Q}} = \varnothing.$$
>  
> **Conclusão.** As três condições de cisão são satisfeitas:
> $$A\cup B=\mathbb{Q},\qquad A\cap B=\varnothing,\qquad A\cap\overline{B}^{\,\mathbb{Q}}=\varnothing\ \text{e}\ \overline{A}^{\,\mathbb{Q}}\cap B=\varnothing.$$
> Portanto $(A,B)$ é uma **cisão** de $\mathbb{Q}$.

> [!summary] **Cisão trivial**
>
> A **cisão trivial** ocorre quando dividimos um conjunto \(X\) de maneira degenerada, ou seja, sem realmente separar o conjunto em duas partes significativas.
>
> Em geral, uma cisão trivial é dada por:
> $$
> (A, B) = (X, \varnothing) \quad \text{ou} \quad (A, B) = (\varnothing, X)
> $$
>
> ### Propriedades:
> 7. **União completa:**  
> $$A \cup B = X \cup \varnothing = X$$
>
> 8. **Interseção vazia:**  
> $$A \cap B = X \cap \varnothing = \varnothing$$
>
> 9. **Fechos não se tocam:**  
> Como uma das partes é vazia, não há “contato” entre os fechos dos conjuntos.
>
> ---

> [!warning] ### Observações:
> - Embora cumpra formalmente os critérios para ser uma cisão, a cisão trivial não efetua uma divisão real do conjunto.
> - Serve como um **caso limite** (edge case) importante em definições e provas matemáticas.
>
> ---
>

 > [!example] ### Exemplo:
> Seja $X = \mathbb{R}$.  
> Uma cisão trivial é:
> $$
> A = \mathbb{R}, \quad B = \varnothing
> $$
> ou
> $$
> A = \varnothing, \quad B = \mathbb{R}
> $$

## Teorema
> [!tldr] Um intervalo de reta só admite a cisão trivial.

> [!info] ### Prova
>  
> Suponha que um intervalo $I \subset \mathbb{R}$ admite uma cisão não trivial  
> $$I = A \cup B$$
>
> Sejam $a \in A$ e $b \in B$ tais que $a < b$. Então o intervalo fechado  
> $$[a, b] \subset I$$
>
> Definimos $c$ como o ponto médio do intervalo $[a, b]$, ou seja:  
> $$c = \frac{a + b}{2}$$
>
> Se $c \in B$, definimos os novos pontos  
> $$a_1 = a, \quad b_1 = c$$  
> caso contrário, se $c \in A$, definimos  
> $$a_1 = c, \quad b_1 = b$$
>
> Agora, para quaisquer $a_n \in A$ e $b_n \in B$, a distância entre eles satisfaz:  
> $$b_n - a_n = \frac{b - a}{2^n}$$
>
> Procedendo analogamente, obtemos uma sequência decrescente de intervalos fechados  
> $$[a, b] \supseteq [a_1, b_1] \supseteq [a_2, b_2] \supseteq \cdots \supseteq [a_n, b_n] \supseteq \cdots$$
>
> onde cada $[a_n, b_n]$ contém pontos de $A$ e $B$.
>
> Pela propriedade do **critério da compacidade** (um conjunto compacto é aquele que toda sequência decrescente de subconjuntos fechados não vazios tem interseção não vazia, tbm chamada de intervalos encaixados), existe um ponto $$x \in \bigcap_{n=1}^\infty [a_n, b_n]$$.
>
> Por construção, $x$ deve pertencer a $A$ e também a $B$, o que contradiz a hipótese de que $A \cap B = \varnothing$.
>
> Portanto, **não existe cisão não trivial de um intervalo** em $\mathbb{R}$.

