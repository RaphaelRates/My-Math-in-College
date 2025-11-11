> [!note] # Definição
> O **Conjunto dos números coplexos**, denotado por $C$, é o conjunto onde:
>
> $$\mathbb{C} = {, z \in \mathbb{C} \mid z = a + bi,\ a,b \in \mathbb{R} ,}$$
> Com $i^2 = -1$

Elementos de $\mathbb{C}$ são chamados de números complexos e o símbolo $i$ é chamado de **Algarismo imaginário**

> [!attention] #### Notação
> Podemos escrever assim
>  - $z = a + bi$
>  - $z = a + ib$
>  - $z = (a,b)$


> [!info]
> Daod $z = a+bi \in \mathbb{C}$ onde $a,b \in \mathbb{C}$, definimos a **Parte Real** e a **Parte imaginária** de $z$ por :
> 
> - Real = **a**
> - Imaginária = **b**
> 
> > [!example] Exemplo
> > $$z = 2 + 3i$$
> > "A parte real é o $2$ e a parte imaginária é o $3$"

---

> [!note] ## Imaginário Puro  
> Um número complexo é **imaginário puro** quando sua parte real é zero, ou seja, $z = 0 + bi = bi$, com $b \in \mathbb{R}$.
> 
> ### Igualdade entre números complexos
> 
> Para $z = a + bi$ e $w = c + di \in \mathbb{C}$, temos:  
> $$
> z = w \quad \Longleftrightarrow \quad a = c \text{ e } b = d  
> $$
> 
> ### Elementos especiais
> 
> - O **zero** é (0 + 0i), denotado simplesmente por (0).
> - A **unidade** é (1 + 0i), denotada por (1).

---
## Propriedades

#### Adição

$$Z + W = (a+b) + (b+d)i \in \mathbb{C}$$
#### Multiplicação/ Produto
$$ Z ° W = (ac - bd) + (ad - bc)i \in \mathbb{C}$$

> [!example] Exemplos
>   Com $z = 5+4i$ e com $w = -2+3i$ então $$z+w = (5+(-2)) + (4+3)i= 3 + 7i$$
>   também temos $$ZW =  (5(-2) - 4.3) + (5x3+4x(-2))i= -22 + 7i$$


### Simétrico
> [!note]
> Para cada $z = a+bi$, temos$$ -z = -a-bi$$

---

> [!note] ## Inversa de um número complexo  
> Para $z = a + bi \neq 0$, a inversa multiplicativa $z^{-1}$ é:  
> $$ 
> z^{-1} = \frac{a}{a^2 + b^2} - \frac{b}{a^2 + b^2} i  
> $$ 
> Chamando $z^{-1} = a' + b'i$, temos:  
> $$
> z \cdot z^{-1} = z^{-1} \cdot z = 1  
> $$ 
> **Observação:** se $z \neq 0$ e $w \neq 0$, então $z \cdot w \neq 0$ e portanto $z^{-1} \neq 0$.

---

> [!tip] ## Proposições fundamentais sobre $\mathbb{C}$  
> Sejam $z, w, t \in \mathbb{C}$. Então:
> 
> ### Operações aditivas
> 
> - $(z + w) + t = z + (w + t)$ (associatividade da adição)
>     
> - $z + w = w + z$ (comutatividade da adição)
>     
> - $z + 0 = 0 + z = z$ (elemento neutro da adição)
>     
> - Para cada $z$ existe $-z$ tal que $z + (-z) = (-z) + z = 0$ (elemento oposto único)
>     
> 
> ### Operações multiplicativas
> 
> - $(z \cdot w) \cdot t = z \cdot (w \cdot t)$ (associatividade da multiplicação)
>     
> - $z \cdot w = w \cdot z$ (comutatividade da multiplicação)
>     
> - $1 \cdot z = z \cdot 1 = z$ (elemento neutro da multiplicação)
>     
> - Se $z \neq 0$, existe $z^{-1}$ tal que $z \cdot z^{-1} = z^{-1} \cdot z = 1$ (inverso multiplicativo único)
>     
> 
> ### Distributividade
> 
> - $z \cdot (w + t) = z \cdot w + z \cdot t$
>     
> - $(z + w) \cdot t = z \cdot t + w \cdot t$
>     

---

> [!note] ## Corpo dos Números Complexos  
> Concluímos que $(\mathbb{C}, +, \cdot)$ é um **corpo**, chamado de **corpo dos números complexos**.
> 
> Identificamos o número complexo $(a + 0i)$ com o número real $(a)$. Assim, para quaisquer $a_1, a_2 \in \mathbb{R}$:  
> $$  
> (a_1 + 0i) + (a_2 + 0i) = (a_1 + a_2) + 0i,  
> $$ 
> que podemos simplesmente escrever como $a_1 + a_2$.
> 
> De forma análoga, para a multiplicação:  
> $$
> (a_1 + 0i) \cdot (a_2 + 0i) = (a_1 a_2) + 0i,  
> $$  
> que identificamos com $a_1 a_2$.

---

> [!element] ## Observações
> 
> - $\mathbb{C}$ contém $\mathbb{R}$ como **subcorpo**.
>     
> - Definimos a unidade imaginária:  
>     $$
>     i = 0 + 1i \in \mathbb{C}.  
>     $$
>     

---

> [!note] ## Divisão de Números Complexos  
> Para $z_1, z_2 \in \mathbb{C}$ com $z_2 \neq 0$, a **divisão** $z_1 / z_2$ é definida como:  
> $$
> \frac{z_1}{z_2} = z_1 \cdot z_2^{-1}  
> $$ 
> onde $z_2^{-1}$ é a **inversa multiplicativa** de $z_2$.
>
> Para $z_1 = a + bi$ e $z_2 = c + di \neq 0$, temos:  
> $$
> \frac{a + bi}{c + di} = \frac{(a + bi)(c - di)}{c^2 + d^2} = \frac{ac + bd}{c^2 + d^2} + \frac{bc - ad}{c^2 + d^2} i  
> $$ 
> ou seja, multiplicamos pelo **conjugado** de $z_2$ no numerador e dividimos pelo **quadrado do módulo** de $z_2$.

---

> [!element] ## Observações
> 
> - O denominador $c^2 + d^2 = |z_2|^2$ nunca é zero, pois $z_2 \neq 0$.
>     
> - A divisão mantém a estrutura do corpo: $z_1 / z_2 \in \mathbb{C}$.
>     
> - Em termos de módulo e argumento (forma polar):  
>     $$
>     \frac{z_1}{z_2} = \frac{|z_1|}{|z_2|} , e^{i(\theta_1 - \theta_2)}  
>     $$ 
>     onde $\theta_1$ e $\theta_2$ são os argumentos de $z_1$ e $z_2$.
>     

---

> [!note] ## Potenciação de Números Complexos  
> Para $z \in \mathbb{C}$ e $n \in \mathbb{Z}$, definimos a **potência inteira** $z^n$ como:
> 
> - $z^0 = 1$ (elemento neutro da multiplicação)
>     
> - $z^n = z \cdot z \cdot \dots \cdot z$ ((n) fatores), para $n > 0$
>     
> - $z^{-n} = (z^{-1})^n), \text{ para } (n > 0) e (z \neq 0$
>     
>
> Para potências de números complexos em **forma polar** $z = r(\cos \theta + i \sin \theta)$:  
> $$
> z^n = r^n (\cos(n\theta) + i \sin(n\theta)) \quad \text{( Fórmula de De Moivre )}  
> $$

---

> [!element] ## Propriedades da Potenciação  
> Para quaisquer $z, w \in \mathbb{C}$ e $m, n \in \mathbb{Z}$:
> 
> 1. $z^m \cdot z^n = z^{m+n}$
>     
> 2. $(z^m)^n = z^{mn}$
>     
> 3. $(z \cdot w)^n = z^n \cdot w^n$
>     
> 4. $z^0 = 1$
>     
> 5. Se $z \neq 0), (z^{-n} = (z^{-1})^n$
>     
> 6. Para $z = r(\cos \theta + i \sin \theta)), (z^n = r^n (\cos n\theta + i \sin n\theta)$
>     

---

> [!note] ## Observações
> 
> - A **Fórmula de De Moivre** é fundamental para potências e raízes de números complexos.
>     
> - Essas propriedades garantem que a potenciação mantém a estrutura de corpo em $\mathbb{C}) para (z \neq 0$.
>     
> - Potências inteiras negativas sempre usam o **inverso multiplicativo** de (z).
>     

---

> [!note] ## Raízes Quadradas de Números Complexos  
> Para $z \in \mathbb{C}$, uma **raiz quadrada** de $z$ é um número $w \in \mathbb{C}$ tal que:  
> $$
> w^2 = z  
> $$
> Todo número complexo $z \neq 0$ possui **duas raízes quadradas distintas**.
>
> Para $z = r(\cos \theta + i \sin \theta)$ (forma polar), as raízes quadradas são dadas por:  
> $$
> \sqrt{z} = \pm \sqrt{r} \left( \cos \frac{\theta}{2} + i \sin \frac{\theta}{2} \right)  
> $$  
> onde $\theta = \arg(z)$ é o argumento de $z$ e $r = |z|$ é o módulo.

---

> [!element] ## Propriedades das Raízes Quadradas  
> Para $z, w \in \mathbb{C}), (z, w \neq 0$:
> 
> 1. $(\sqrt{z})^2 = z$
>     
> 2. $\sqrt{z} \cdot \sqrt{w} = \pm \sqrt{z \cdot w}$ (atenção: a escolha do sinal deve ser consistente)
>     
> 3. $\sqrt{z^{-1}} = (\sqrt{z})^{-1}$
>     
> 4. Se $z$ é real positiva, a raiz quadrada coincide com a raiz real positiva usual.
>     
> 5. As duas raízes quadradas de $z \neq 0$ são **opostas**: se $w$ é raiz, $-w$ também é.
>     

---

> [!note] ## Observações
> 
> - O uso da **forma polar** facilita muito o cálculo de raízes complexas.
>     
> - As raízes quadradas são fundamentais para resolver equações quadráticas com coeficientes complexos.
>     
> - Em operações com múltiplas raízes, **atenção aos sinais**: cada escolha afeta o resultado final.
>     

---
##  Raiz quadrada de número real negativo em C

> [!info] Contexto  
> Em **ℝ (números reais)**, **não existe** raiz quadrada de número negativo.  
> Mas, no **conjunto dos números complexos (ℂ)**, isso **é possível**.

---

> [!example] Definição  
> Seja ( a \in \mathbb{R} ) com ( a < 0 ).  
> Podemos escrever ( a = -b^2 ), onde ( b > 0 ).  
> Então, definimos:  
> [  
> \sqrt{a} = \sqrt{-b^2} = b i  
> ]  
> onde ( i ) é a **unidade imaginária**, tal que:  
> [  
> i^2 = -1  
> ]

---

> [!note] Observação  
> A introdução do número imaginário ( i ) permite **estender** o conceito de raiz quadrada para números negativos.  
> Assim, no conjunto dos **números complexos**, toda equação quadrática tem solução.

---

> [!tip] Exemplo prático  
> [  
> \sqrt{-9} = \sqrt{9 \cdot (-1)} = 3i  
> ]  
> [  
> \sqrt{-25} = 5i  
> ]

---

> [!summary] Em resumo

- Em **ℝ**, não existe (\sqrt{a}) se (a < 0).
    
- Em **ℂ**, (\sqrt{a} = i\sqrt{|a|}) para (a < 0).
    
- Isso motiva a criação do **conjunto dos números complexos**:  
    [  
    \mathbb{C} = { a + bi \mid a,b \in \mathbb{R} }  
    ]
    

---

Quer que eu estenda isso com uma parte sobre **propriedades das raízes quadradas complexas** (tipo (\sqrt{z_1z_2}), módulo e argumento etc.) pra seguir na mesma nota?

Próximo: [[adefinir]]