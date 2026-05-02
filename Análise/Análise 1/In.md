---
title: Notebook sobre In em Análise 1
author: Raphael Rates
date: 2026-05-02
subject: Análise Matemática
topic: Somas de Riemann
level: Graduação
tags:
  - calculo
  - integral
  - riemann
  - analise
---

> [!NOTE]
> Este notebook aborda o conceito de $I_n$ como aproximação da integral definida via Somas de Riemann, fundamental para o entendimento do Cálculo e Análise Real.

---

## 📌 Definição

> [!DEFINITION]
> Seja $f: [a, b] \to \mathbb{R}$ uma função limitada. Dada uma partição $P_n = \{x_0, x_1, \dots, x_n\}$ do intervalo $[a, b]$ com $a = x_0 < x_1 < \dots < x_n = b$, define-se a **Soma de Riemann** como:
>
> $$
> I_n = \sum_{i=1}^{n} f(\xi_i) \cdot \Delta x_i
> $$
>
> onde $\Delta x_i = x_i - x_{i-1}$ e $\xi_i \in [x_{i-1}, x_i]$ é um ponto amostral.

---

## 📐 Casos Especiais

> [!TIP]
> Dependendo da escolha do ponto amostral $\xi_i$, temos diferentes aproximações:

### 1️⃣ Soma de Riemann à Esquerda

> [!EXAMPLE]
> Escolhendo $\xi_i = x_{i-1}$:
>
> $$
> I_n = \sum_{i=1}^{n} f(x_{i-1}) \cdot \Delta x_i
> $$

### 2️⃣ Soma de Riemann à Direita

> [!EXAMPLE]
> Escolhendo $\xi_i = x_i$:
>
> $$
> I_n = \sum_{i=1}^{n} f(x_i) \cdot \Delta x_i
> $$

### 3️⃣ Soma de Riemann com Ponto Médio

> [!EXAMPLE]
> Escolhendo $\xi_i = \frac{x_{i-1} + x_i}{2}$:
>
> $$
> I_n = \sum_{i=1}^{n} f\left(\frac{x_{i-1} + x_i}{2}\right) \cdot \Delta x_i
> $$

### 4️⃣ Partição Uniforme (caso mais comum)

> [!NOTE]
> Se dividimos $[a, b]$ em $n$ partes iguais:
>
> $$
> \Delta x = \frac{b-a}{n}
> $$
>
> $$
> x_i = a + i \cdot \Delta x
> $$
>
> Então:
>
> $$
> I_n = \Delta x \sum_{i=1}^{n} f(\xi_i)
> $$

---

## 🎯 Convergência e Integral Definida

> [!THEOREM]
> Se $f$ é **integrável** (segundo Riemann) em $[a, b]$, então:
>
> $$
> \lim_{n \to \infty} I_n = \int_a^b f(x) \, dx
> $$
>
> independentemente da escolha dos pontos amostrais $\xi_i$, desde que a norma da partição tenda a zero.

> [!NOTE]
> Isso significa que quanto maior $n$ (mais subintervalos), melhor a aproximação.

---

## 🧪 Exemplo Numérico

> [!EXAMPLE]
> Calcular $I_n$ para $f(x) = x^2$ no intervalo $[0, 2]$ com partição uniforme, usando ponto médio.

### Para $n = 4$:

> [!CALCULATION]
> - $\Delta x = \frac{2-0}{4} = 0,5$
> - Pontos médios: $0,25; 0,75; 1,25; 1,75$
>
> $$
> I_4 = 0,5 \times [f(0,25) + f(0,75) + f(1,25) + f(1,75)]
> $$
>
> $$
> I_4 = 0,5 \times [0,0625 + 0,5625 + 1,5625 + 3,0625]
> $$
>
> $$
> I_4 = 0,5 \times 5,25 = 2,625
> $$

### Valor exato da integral:

> [!RESULT]
> $$
> \int_0^2 x^2 \, dx = \left[\frac{x^3}{3}\right]_0^2 = \frac{8}{3} \approx 2,666...
> $$

### Erro:

> [!WARNING]
> $$
> \text{Erro} = |2,666... - 2,625| = 0,0416...
> $$

---

## 📈 Tabela de Convergência

> [!INFO]
> À medida que $n$ aumenta, o erro diminui:

| $n$ | $I_n$ (ponto médio) | Erro absoluto |
|-----|---------------------|---------------|
| 2   | 2,5                 | 0,1667        |
| 4   | 2,625               | 0,0417        |
| 8   | 2,65625             | 0,0104        |
| 16  | 2,66406             | 0,0026        |
| 32  | 2,66602             | 0,00065       |

---

## 🔍 Observação Final

> [!SUCCESS]
> Quando $n \to \infty$:
>
> $$
> \lim_{n \to \infty} I_n = \frac{8}{3}
> $$
>
> que é o valor exato da integral definida.

> [!NOTE]
> Este limite é a própria definição da integral de Riemann.

---

## 📚 Exercício Proposto

> [!QUESTION]
> Calcule $I_n$ para $f(x) = x^3$ no intervalo $[0, 1]$ usando $n = 4$ com:
> 1. Soma à esquerda
> 2. Soma à direita
> 3. Soma com ponto médio
>
> Compare os resultados com o valor exato da integral.