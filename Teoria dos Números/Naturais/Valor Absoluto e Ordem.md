
# 📘 Valor Absoluto e Relação de Ordem em $\mathbb{R}$

## Propriedades, Inequações e Demonstrações

> [!info] **O que é Valor Absoluto?**
> O **valor absoluto** (ou módulo) de um número real $x$, denotado por $|x|$, representa a **distância** de $x$ até a origem $0$ na reta real. É sempre um número **não negativo**.

---
## 1. Definição Formal do Valor Absoluto

> [!definition] **Definição por partes**
> 
> $$ |x| = \begin{cases}
> x, & \text{se } x \ge 0 \\[1em]
> -x, & \text{se } x < 0
> \end{cases} $$

> [!example] **Exemplos numéricos:**
> 
> | $x$ | $|x|$ | Justificativa |
> |-----|-------|----------------|
> | $5$ | $5$ | $5 \ge 0$ |
> | $-3$ | $3$ | $(-3) < 0 \Rightarrow -(-3) = 3$ |
> | $0$ | $0$ | $0 \ge 0$ |
> | $-\frac{2}{3}$ | $\frac{2}{3}$ | $-(-\frac{2}{3}) = \frac{2}{3}$ |
> | $2.5$ | $2.5$ | $2.5 \ge 0$ |

> [!note] **Interpretação geométrica:**
> 
> $$ \text{distância de } x \text{ até } 0 = |x - 0| = |x| $$
>
> ```mermaid
> graph LR
>     subgraph "Reta Real"
>         A[-3] --- B[-2] --- C[-1] --- D[0] --- E[1] --- F[2] --- G[3]
>     end
> ```
> 
> $|-3| = 3$ e $|3| = 3$ (ambos distam 3 unidades da origem)

---
## 3. Demonstrações das Propriedades

### 3.1 Demonstração da Desigualdade Triangular

> [!theorem] **Desigualdade Triangular**
> Para quaisquer $a, b \in \mathbb{R}$:
> $$ |a + b| \le |a| + |b| $$

> [!proof] **Prova da Desigualdade Triangular:**
> 
> 1. **Pela definição de valor absoluto**, temos que $a \le |a|$ e $b \le |b|$, pois $|a| \ge a$ e $|b| \ge b$ para quaisquer $a, b \in \mathbb{R}$.
> 
> 2. **Somando as duas desigualdades:** $(a + b) \le |a| + |b|$.
> 
> 3. **Analogamente,** também temos $-a \le |a|$ e $-b \le |b|$, pois $|a| \ge -a$ e $|b| \ge -b$.
> 
> 4. **Somando estas:** $-(a + b) \le |a| + |b|$.
> 
> 5. **Multiplicando por $-1$** (invertendo a desigualdade): $a + b \ge -(|a| + |b|)$.
> 
> 6. **Combinando** os passos 2 e 5, obtemos:
>    $$ -(|a| + |b|) \le a + b \le |a| + |b| $$
> 
> 7. **Pela definição de valor absoluto**, $|x| \le M$ significa $-M \le x \le M$. Portanto:
>    $$ |a + b| \le |a| + |b| $$
> 
> $$\tag*{$\square$}$$

---

### 3.2 Demonstração da Desigualdade Triangular Reversa

> [!theorem] **Desigualdade Triangular Reversa**
> Para quaisquer $a, b \in \mathbb{R}$:
> $$ ||a| - |b|| \le |a - b| $$

> [!proof] **Prova:**
> 
| Passo | Justificativa |
|-------|----------------|
| $|a| = |(a - b) + b| \le |a - b| + |b|$ | Desigualdade Triangular |
| $\Rightarrow |a| - |b| \le |a - b|$ | Subtraindo $|b|$ |
| $|b| = |(b - a) + a| \le |b - a| + |a| = |a - b| + |a|$ | Analogamente |
| $\Rightarrow |b| - |a| \le |a - b|$ | Subtraindo $|a|$ |
| $\Rightarrow -(|a| - |b|) \le |a - b|$ | Multiplicando por -1 |
| Logo: $||a| - |b|| \le |a - b|$ | Combinando os casos |

---

## 4. Relação de Ordem em $\mathbb{R}$

> [!definition] **Relação de Ordem ($\le$)**
> 
> A relação $\le$ em $\mathbb{R}$ é **completa** e satisfaz:
> 1. **Reflexividade:** $a \le a$
> 2. **Antissimetria:** $a \le b$ e $b \le a \Rightarrow a = b$
> 3. **Transitividade:** $a \le b$ e $b \le c \Rightarrow a \le c$
> 4. **Totalidade:** $a \le b$ ou $b \le a$ (para quaisquer $a,b$)

🔗 **Notas relacionadas:** [[Relações de Ordem]], [[Conjuntos Ordenados]]

---

## 5. Valor Absoluto e Ordem: Relações Importantes

> [!theorem] **Conexões entre $|x|$ e a ordem**
> 
> Para qualquer $a > 0$ e $x \in \mathbb{R}$:

| Condição | Equivalência |
|----------|--------------|
| $|x| \le a$ | $-a \le x \le a$ |
| $|x| < a$ | $-a < x < a$ |
| $|x| \ge a$ | $x \le -a$ ou $x \ge a$ |
| $|x| > a$ | $x < -a$ ou $x > a$ |

> [!example] **Exemplos de equivalência:**
> 
> | Inequação | Solução | Representação |
> |-----------|---------|----------------|
> | $|x| \le 3$ | $-3 \le x \le 3$ | $[-3, 3]$ |
> | $|x| < 2$ | $-2 < x < 2$ | $(-2, 2)$ |
> | $|x| \ge 1$ | $x \le -1$ ou $x \ge 1$ | $(-\infty, -1] \cup [1, \infty)$ |
> | $|x| > 4$ | $x < -4$ ou $x > 4$ | $(-\infty, -4) \cup (4, \infty)$ |

---

## 6. Resolução de Inequações com Valor Absoluto

### 6.1 Caso 1: $|f(x)| \le a$

> [!method] **Método de resolução:**
> $$ |f(x)| \le a \iff -a \le f(x) \le a $$

> [!example] **Exemplo:** $|2x - 3| \le 5$
> 
> | Passo | Operação |
> |-------|----------|
> | 1 | $-5 \le 2x - 3 \le 5$ |
> | 2 | $-5 + 3 \le 2x \le 5 + 3$ |
> | 3 | $-2 \le 2x \le 8$ |
> | 4 | $-1 \le x \le 4$ |
> 
> **Solução:** $x \in [-1, 4]$

---

### 6.2 Caso 2: $|f(x)| \ge a$

> [!method] **Método de resolução:**
> $$ |f(x)| \ge a \iff f(x) \le -a \text{ ou } f(x) \ge a $$

> [!example] **Exemplo:** $|3x + 1| \ge 4$
> 
> | Passo | Operação |
> |-------|----------|
> | 1 | $3x + 1 \le -4$ ou $3x + 1 \ge 4$ |
> | 2 | $3x \le -5$ ou $3x \ge 3$ |
> | 3 | $x \le -\frac{5}{3}$ ou $x \ge 1$ |
> 
> **Solução:** $x \in (-\infty, -\frac{5}{3}] \cup [1, \infty)$

---

### 6.3 Caso 3: $|f(x)| < |g(x)|$

> [!method] **Método de resolução (elevando ao quadrado):**
> $$ |f(x)| < |g(x)| \iff [f(x)]^2 < [g(x)]^2 $$

> [!example] **Exemplo:** $|x - 1| < |x + 2|$
> 
> | Passo | Operação |
> |-------|----------|
> | 1 | $(x - 1)^2 < (x + 2)^2$ |
> | 2 | $x^2 - 2x + 1 < x^2 + 4x + 4$ |
> | 3 | Cancelando $x^2$: $-2x + 1 < 4x + 4$ |
> | 4 | $1 - 4 < 4x + 2x$ |
> | 5 | $-3 < 6x$ |
> | 6 | $x > -\frac{1}{2}$ |
> 
> **Solução:** $x \in (-\frac{1}{2}, \infty)$

---

### 6.4 Caso 4: Casos com duas variáveis (distância entre pontos)

> [!definition] **Distância entre dois pontos**
> 
> A distância entre $x$ e $y$ na reta real é:
> $$ d(x, y) = |x - y| $$

> [!example] **Interpretação: $|x - 2| < 3$**
> 
> Significa: a distância de $x$ até $2$ é menor que $3$:
> $$ -3 < x - 2 < 3 \implies -1 < x < 5 $$
> 
> Ou seja, $x$ está no **intervalo aberto** $(-1, 5)$.

---

## 7. Propriedades Adicionais (Demonstrações)

> [!property] **Propriedade: $|ab| = |a||b|$**
> 
| Caso | $a \ge 0, b \ge 0$ | $a < 0, b < 0$ | $a \ge 0, b < 0$ |
|------|---------------------|----------------|------------------|
| $ab$ | $\ge 0$ | $\ge 0$ | $\le 0$ |
| $|ab|$ | $ab$ | $ab$ | $-(ab)$ |
| $|a||b|$ | $a \cdot b$ | $(-a)(-b) = ab$ | $a \cdot (-b) = -(ab)$ |

Em todos os casos, $|ab| = |a||b|$.

> [!property] **Propriedade: $\left|\frac{a}{b}\right| = \frac{|a|}{|b|}$ (para $b \neq 0$)**
> 
> $$ \left|\frac{a}{b}\right| = |a \cdot b^{-1}| = |a| \cdot |b^{-1}| = |a| \cdot |b|^{-1} = \frac{|a|}{|b|} $$

> [!property] **Propriedade: $|a| = \max\{a, -a\}$**
> 
> Pois $|a| = \sqrt{a^2}$ e também $|a| = \max\{a, -a\}$.

---

## 8. Exercícios Resolvidos

> [!example] **Exercício 1:** Resolva $|x - 3| = 5$
> 
> **Solução:**
> 
> | Caso | Equação | Solução |
> |------|---------|---------|
> | $x - 3 \ge 0$ | $x - 3 = 5 \Rightarrow x = 8$ | $x = 8$ (válido) |
> | $x - 3 < 0$ | $-(x - 3) = 5 \Rightarrow -x + 3 = 5 \Rightarrow -x = 2 \Rightarrow x = -2$ | $x = -2$ (válido) |
> 
> **Solução:** $S = \{-2, 8\}$

> [!example] **Exercício 2:** Resolva $|2x + 1| > 3$
> 
> **Solução:**
> 
> $$ |2x + 1| > 3 \iff 2x + 1 < -3 \text{ ou } 2x + 1 > 3 $$
> 
> | Caso | Inequação | Solução |
> |------|-----------|---------|
> | 1 | $2x + 1 < -3 \Rightarrow 2x < -4 \Rightarrow x < -2$ | $x < -2$ |
> | 2 | $2x + 1 > 3 \Rightarrow 2x > 2 \Rightarrow x > 1$ | $x > 1$ |
> 
> **Solução:** $S = (-\infty, -2) \cup (1, \infty)$

> [!example] **Exercício 3:** Resolva $|x^2 - 4| \le 5$
> 
> **Solução:**
> 
> $$ -5 \le x^2 - 4 \le 5 $$
> 
> | Desigualdade | Resolução |
> |--------------|-----------|
> | $x^2 - 4 \ge -5 \Rightarrow x^2 \ge -1$ | Sempre verdadeira |
> | $x^2 - 4 \le 5 \Rightarrow x^2 \le 9 \Rightarrow -3 \le x \le 3$ | — |
> 
> **Solução:** $S = [-3, 3]$

> [!example] **Exercício 4:** Resolva $|x - 1| = |x + 3|$
> 
> **Solução:**
> 
> $$ |x - 1| = |x + 3| \implies (x - 1)^2 = (x + 3)^2 $$
> 
> $$ x^2 - 2x + 1 = x^2 + 6x + 9 $$
> 
> $$ -2x + 1 = 6x + 9 $$
> 
> $$ 1 - 9 = 6x + 2x \implies -8 = 8x \implies x = -1 $$
> 
> **Solução:** $S = \{-1\}$
> 
> *Interpretação geométrica:* Ponto equidistante de $1$ e $-3$ é $x = -1$.

---

## 9. Exercícios Propostos

> [!question] **Exercício 1**
> Resolva as inequações:
> a) $|x - 2| \le 4$
> b) $|3x + 5| > 2$
> c) $|x^2 - 1| < 3$

> [!question] **Exercício 2**
> Determine os valores de $x$ que satisfazem:
> a) $|x - 5| = |2x + 1|$
> b) $|x + 2| < |x - 1|$
> c) $|x - 3| + |x + 2| = 5$

> [!question] **Exercício 3**
> Prove que $|a - b| \le |a - c| + |c - b|$ para quaisquer $a, b, c \in \mathbb{R}$.

> [!question] **Exercício 4**
> Resolva no conjunto dos números reais:
> $$ \left| \frac{x+1}{x-2} \right| \le 1 $$

> [!question] **Exercício 5**
> Determine o conjunto dos $x \in \mathbb{R}$ tais que:
> $$ |x + 1| \cdot |x - 3| < 0 $$

---

## 10. Tabela Resumo

> [!summary] **Resumo Rápido**

| Forma | Significado | Solução |
|-------|-------------|---------|
| $|x| = a$ (com $a > 0$) | $x = a$ ou $x = -a$ | $\{-a, a\}$ |
| $|x| = 0$ | $x = 0$ | $\{0\}$ |
| $|x| < a$ | $-a < x < a$ | $(-a, a)$ |
| $|x| \le a$ | $-a \le x \le a$ | $[-a, a]$ |
| $|x| > a$ | $x < -a$ ou $x > a$ | $(-\infty, -a) \cup (a, \infty)$ |
| $|x| \ge a$ | $x \le -a$ ou $x \ge a$ | $(-\infty, -a] \cup [a, \infty)$ |

---

## 11. Aplicações do Valor Absoluto

> [!info] **Onde o valor absoluto aparece?**
> 
> | Área | Aplicação |
> |------|-----------|
> | [[Cálculo]] | Definição de limite, continuidade, diferenciabilidade |
> | [[Geometria Analítica]] | Distância entre pontos |
> | [[Estatística]] | Desvio absoluto, erro absoluto |
> | [[Análise Numérica]] | Erro de aproximação, tolerância |
> | [[Números Complexos]] | Módulo de um número complexo $|z|$ |

🔗 **Notas relacionadas:** [[Limites com Valor Absoluto]], [[Continuidade e Valor Absoluto]], [[Erro Absoluto vs Erro Relativo]]

---

## 12. Referência Rápida (Código Python)

> [!code] **Calculando valor absoluto em Python**

```python
# Valor absoluto em Python
x = -7.5
abs_x = abs(x)
print(f"|{x}| = {abs_x}")  # | -7.5 | = 7.5

# Resolvendo |x - 3| < 5
def solucao_inequacao(a, b):
    # |x - a| < b  =>  a - b < x < a + b
    return (a - b, a + b)

lim_inf, lim_sup = solucao_inequacao(3, 5)
print(f"Solução: ({lim_inf}, {lim_sup})")  # (-2, 8)

# Verificando desigualdade triangular
def triangular_teste(a, b):
    return abs(a + b) <= abs(a) + abs(b)

print(triangular_teste(-5, 3))  # True
```

---

## Conclusão

> [!success] **Resumo Final**
> 
> O **valor absoluto** é uma ferramenta fundamental em matemática:
> - Representa **distância** e é sempre **não-negativo**
> - É definido por partes: $|x| = \max\{x, -x\}$
> - Satisfaz propriedades importantes: **multiplicatividade** e **desigualdade triangular**
> - Relaciona-se com a **ordem** através de equivalências: $|x| \le a \iff -a \le x \le a$
> - Essencial para resolver **inequações modulares**
