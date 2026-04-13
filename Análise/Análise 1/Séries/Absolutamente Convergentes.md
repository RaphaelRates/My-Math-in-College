> [!abstract] **Definição**
> 
> Dizemos que uma série  $\sum_{n=1}^{N} A_n$ é **convergente** quando a série com os termos em módulo também é convergente:
> $$
> \sum_{n=1}^{N} |A_n|
> $$

> Ou seja, a convergência absoluta implica a convergência da série original.

---

> [!example]+ **Exemplos de Convergência de Séries**

**🔹 Exemplo 1:** Se $|a| < 1$, a série geométrica abaixo é **absolutamente convergente**:

$$
\sum_{n=1}^{\infty} a^n
$$

**🔹 Exemplo 2:** A série harmônica alternada é **condicionalmente convergente**, mas **não absolutamente**:

$$
\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots
$$

Podemos observar o comportamento das somas parciais:

$$
S_2 = 1 - \frac{1}{2}
$$

$$
S_4 = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{3} - \frac{1}{4}\right)
$$

$$
S_6 = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{3} - \frac{1}{4}\right) + \left(\frac{1}{5} - \frac{1}{6}\right)
$$

Assim, temos a sequência crescente:

$$
S_2 < S_4 < S_6 < \cdots < 1
$$

A **soma total da série**, denotada por $S'$, é o **limite das somas pares**:

$$
\exists S' = \lim_{n \to \infty} S_{2n}
$$
Analogamente:
$$
S_1 > S_3 > S_5 > \cdots > 0
$$
$$
\exists S'' = \lim_{n \to \infty} S_{2n - 1}
$$

Como:
$$
S' - S'' = \lim_{n \to \infty} \left(S_{2n} - S_{2n - 1}\right) = \lim_{n \to \infty} \left(-\frac{1}{2n}\right) = 0
$$

Concluímos que:
$$
S' = S'' = \sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n}
$$


---
# Séries Absolutamente Convergentes

## 🎯 Teorema Principal

> [!theorem] Toda série absolutamente convergente é convergente
### 📝 Prova

Seja $\sum_{n=1}^{\infty} a_n$ uma série absolutamente convergente e sejam:

$$S_n = a_1 + a_2 + a_3 + \cdots + a_n$$
e
$$r_n = |a_1| + |a_2| + |a_3| + \cdots + |a_n|$$

Se a sequência $r_n = |a_1| + |a_2| + \cdots + |a_n|$ é convergente, então a série $\sum a_n$ é absolutamente convergente, logo é convergente por **[[Critério de Cauchy]]**.

---

#### 🔍 Demonstração Detalhada

Dado $\varepsilon > 0$, existe $n_0 \in \mathbb{N}$ tal que para todo $m > n > n_0$ vale:
$$|r_m - r_n| < \varepsilon$$
Logo, para $m > n > n_0$, temos:

$$|S_m - S_n| = |a_{n+1} + a_{n+2} + \cdots + a_m| \leq |a_{n+1}| + |a_{n+2}| + \cdots + |a_m| = r_m - r_n < \varepsilon$$

Assim, $(S_n)$ é de **[[Sequência de Cauchy|Cauchy]]**. Portanto, $\sum a_n$ é convergente. ∎

---

## 📊 Corolários

### Corolário 1 - Teste de Comparação

> [!corollary] Teste de Comparação Seja $\sum b_n$ uma série convergente, com $b_n \geq 0$. Se existem $c > 0$ e $n_0 \in \mathbb{N}$ tais que $$|a_n| \leq c b_n, \quad \forall n > n_0$$ então $\sum a_n$ é (absolutamente) convergente.
### Corolário 2 - Teste da Raiz

> [!corollary] Teste da Raiz (Cauchy) Se existe $c > 0$ tal que $$\sqrt[n]{|a_n|} \leq c < 1, \quad \forall n > n_0$$ em particular, se $$\lim_{n \to \infty} \sqrt[n]{|a_n|} = L < 1$$ então a série $\sum a_n$ é absolutamente convergente.

> [!warning] Observação Importante Se existe uma infinidade de índices $n$ para os quais $\sqrt[n]{|a_n|} \geq 1$  
> (em particular, se $\lim_{n \to \infty} \sqrt[n]{|a_n|} \geq 1$),  
> então $\sum a_n$ **diverge**.

---

## 🔗 Relações Fundamentais

> [!important] Implicação Principal $$\sum |a_n| \text{ converge} \Rightarrow \sum a_n \text{ converge absolutamente}$$

---

## ⚠️ Casos Especiais

### Caso Limite: $\lim \sqrt[n]{|a_n|} = 1$

> [!note] Comportamento Indeterminado Quando $\lim \sqrt[n]{|a_n|} = 1$, a série $\sum a_n$ pode:
> 
> - **Convergir** (como no caso da série $\sum \frac{1}{n^2}$)
> - **Divergir** (como no caso da série $\sum \frac{1}{n}$)

### Resumo de Comportamentos

> [!summary] Análise Geral
> 
> - Se $|a_n|$ converge → a série dada **absolutamente** converge
> - Se $|a_n|$ diverge → a série diverge
> - Se $|a_n|$ e a série divergem, porém $a_n$ alterna sinal → não há garantia sobre a série

---
### 📝 **Existência de Infinitude de Índices**

**Se existe uma infinidade de índices n para os quais** $\sqrt{|a_n|} > 1$

**Em particular, se** $\lim_{n \to \infty} \sqrt{|a_n|} = L > 1$

**Então** $\sum a_n$ **é divergente.**

> [!note] **Interpretação** Quando a raiz n-ésima dos termos da série não tende a um valor menor que 1, a série não pode convergir.
## 🔍 **Análise Detalhada**

### **Caso 1: Divergência Evidente**

$$
\lim_{n \to \infty} \sqrt{|a_n|} = |a|
$$

- Se $|a| > 1$, então $\lim_{n \to \infty} |a_n|^{1/n} = |a| > 1$
- Logo, $\lim_{n \to \infty} |a_n| = |a|^n \to \infty$
- Portanto, a série diverge

### **Demonstração por Contraposição**

**Queremos provar:** Se $\lim_{n \to \infty} \sqrt{|a_n|} = 1$, a série diverge.

**Quando** $\lim_{n \to \infty} \sqrt{|a_n|} = 1$, **a série pode convergir** (como no caso $\sum \frac{1}{n}$) **ou divergir** (como no caso $\sum \frac{1}{n^2}$).

Se $|a| = 1$, a série diverge, pois seu termo geral não tende a zero.

## 📊 **Teorema: Teste da Raiz (Critério de Cauchy-Hadamard)**

> [!theorem] **Enunciado** Seja $\sum a_n$ uma série e $L = \limsup_{n \to \infty} \sqrt[n]{|a_n|}$
> 
> 1. Se $L < 1$, então a série **converge absolutamente**
> 2. Se $L > 1$, então a série **diverge**
> 3. Se $L = 1$, **não podemos concluir** (teste inconclusivo)

### **Prova do Caso L > 1:**

**Se existe $c > 0$ tal que** $\left|\frac{a_n}{b_n}\right| \leq c, \forall n \in \mathbb{N}$

**Então:**

- $|a_n| \leq c|b_n|, \forall n \in \mathbb{N}$
- Portanto, $\sum |a_n|$ é **absolutamente convergente**

> [!warning] **Cuidado** O teste da raiz falha quando $L = 1$. Nestes casos, devemos usar outros critérios como o teste da razão ou comparação.

---

## 🧮 **Exemplos Práticos**

> [!example]+  **Exemplo 1: Série Geométrica Modificada**

$$
\sum_{n=1}^{\infty} \left(\frac{2n}{n+1}\right)^n
$$

**Solução:**

- $a_n = \left(\frac{2n}{n+1}\right)^n$
- $\sqrt[n]{|a_n|} = \frac{2n}{n+1} = \frac{2}{1 + \frac{1}{n}}$
- $L = \lim_{n \to \infty} \frac{2}{1 + \frac{1}{n}} = 2 > 1$
- **Conclusão:** A série **diverge**

---
> [!example]+ **Exemplo 2: Série com Potência Fracionária**

$$
\sum_{n=1}^{\infty} \left(\frac{n+1}{3n-1}\right)^n
$$

**Solução:**

- $\sqrt[n]{|a_n|} = \frac{n+1}{3n-1} = \frac{1 + \frac{1}{n}}{3 - \frac{1}{n}}$
- $L = \lim_{n \to \infty} \frac{1 + \frac{1}{n}}{3 - \frac{1}{n}} = \frac{1}{3} < 1$
- **Conclusão:** A série **converge absolutamente**

---

> [!example]+  **Exemplo 3: Série do Tipo Exponencial Alternada**

$$
\sum_{n=1}^{\infty} \frac{(-2)^n}{n!}
$$

**Solução:**

- $a_n = \frac{(-2)^n}{n!}$
- Aplicando o **teste da razão**:

$$
\left| \frac{a_{n+1}}{a_n} \right| = \left| \frac{(-2)^{n+1}}{(n+1)!} \cdot \frac{n!}{(-2)^n} \right| = \frac{2}{n+1}
$$

- $\lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = 0 < 1$
- **Conclusão:** A série **converge absolutamente**

---

> [!example]+ **Exemplo 4: Série Harmônica Generalizada**

$$
\sum_{n=1}^{\infty} \frac{1}{n^p}
$$

**Solução:**

- Para $p > 1$, a série **converge**
- Para $p \leq 1$, a série **diverge**

**Casos particulares:**

- $p = 2$: série de **Basel**, converge para $\frac{\pi^2}{6}$
- $p = 1$: série harmônica, **diverge**

---

> [!example]+ **Exemplo 5: Série Alternada com Logaritmo**

$$
\sum_{n=2}^{\infty} \frac{(-1)^n}{\ln n}
$$

**Solução:**

- É uma **série alternada**
- Os termos $\frac{1}{\ln n}$ são positivos, decrescentes e tendem a zero
- Aplicando o **Critério de Leibniz**: satisfaz as condições
- **Conclusão:** A série **converge condicionalmente**, mas **não absolutamente**

---

> [!example]+ **Exemplo 6: Série com Raiz Exponencial**

$$
\sum_{n=1}^{\infty} \left(1 + \frac{1}{n}\right)^n \cdot \frac{1}{n^2}
$$

**Solução:**

- O termo $a_n = \left(1 + \frac{1}{n}\right)^n \cdot \frac{1}{n^2}$
- Sabemos que $\left(1 + \frac{1}{n}\right)^n \to e$
- Então $a_n \sim \frac{e}{n^2}$ para $n$ grande
- Comparando com $\sum \frac{1}{n^2}$, que converge:
- **Conclusão:** A série **converge absolutamente**

---

> [!example]+ **Exemplo 7: Série de Cauchy Condicional**

$$
\sum_{n=1}^{\infty} \frac{(-1)^n}{\sqrt{n}}
$$

**Solução:**

- Série alternada com termos $\frac{1}{\sqrt{n}}$
- Os termos são positivos, decrescentes e tendem a zero
- **Critério de Leibniz** se aplica
- **Conclusão:** A série **converge condicionalmente**, mas **não absolutamente** (pois $\sum \frac{1}{\sqrt{n}}$ diverge)

---

> [!example]+ **Exemplo 8: Série com Exponencial Decrescente**

$$
\sum_{n=1}^{\infty} \frac{n^3}{e^n}
$$

**Solução:**

- Crescimento de $n^3$ é polinomial; $e^n$ é exponencial
- Exponencial domina o polinômio
- $\lim_{n \to \infty} \frac{n^k}{e^n} = 0$ para todo $k$
- **Conclusão:** A série **converge absolutamente** por comparação com série exponencial


## 💡 **Observações Importantes**

> [!tip] **Dica de Aplicação** Use o teste da raiz quando os termos da série envolvem potências n-ésimas ou quando o teste da razão é inconclusivo.

> [!warning] **Limitação** Quando $L = 1$, o teste da raiz não fornece informação. Nestes casos, analise o comportamento dos termos diretamente ou use outros critérios.


### Colorário (Teste da Razão)
Seja $a_n \neq 0$ para todo $n \in \mathbb{N}$.  
Suponha que existe $n_0 \in \mathbb{N}$ e uma constante $c < 1$ tal que:

$$
\left| \frac{a_{n+1}}{a_n} \right| \leq c \quad \text{para todo } n > n_0,
$$

(em particular)então a série $\sum a_n$ é absolutamente convergente.



---

**Tags:** #analise1 #series #convergencia #teste-da-raiz #matematica #demonstracao
