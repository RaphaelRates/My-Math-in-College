---
title: Equações Diferenciais Parciais (EDPs)
tags: [matemática, EDP, equações-diferenciais, cálculo]
date: 2026-04-26
---

# 📊 Equações Diferenciais Parciais (EDPs)


> [!warning] Definições Básicas abaixo

## Definições básica

### Espaço Euclidiano
> [!note]  
> Denotemos um espaço euclidiano de dimensão $n$ por:
> $$
> \mathbb{R}^n = \{\, (x_1, x_2, \dots, x_n) \in \mathbb{R} \mid 1 \leq i \leq n \,\}.
> $$

> [!tip] 
> Quando é $n = 1$, temos $\mathbb{R}^1 = \mathbb{R}$
### [[Conjunto]]
> [!note] Conjuntos 
> - Números Inteiro: $\mathbb{Z}$
> - Complexos: $\mathbb{C}$
> - Naturais: $\mathbb{N} = \{n \in \mathbb{Z} \mid n \leq 1\}$
> - $\mathbb{Z}^+ = \{ n \in \mathbb{Z} \mid n \geq 0 \}$

### [[Conjunto Aberto]]

> [!note]  
> Um subconjunto $A \subseteq \mathbb{R}^n$ é dito **aberto** se, dado qualquer $x_0 \in A$, existe $\varepsilon > 0$ tal que:
> $$
> B(x_0, \varepsilon) = \{\, x \in \mathbb{R}^n \mid \|x - x_0\| < \varepsilon \,\} \subseteq A.
> $$

### [[Conjunto Fechado]]

> [!note]  
> Um subconjunto $A \subseteq \mathbb{R}^n$ é dito **fechado** se, para toda sequência $(x_n) \subseteq A$ que converge para $x \in \mathbb{R}^n$, temos:
> $$
> x \in A.
> $$

### [[Interior]]

> [!note]  
> Seja $A \subseteq \mathbb{R}^n$. O **interior** de $A$, denotado por $\operatorname{int}(A)$, é o conjunto de todos os pontos $x \in A$ tais que existe $\varepsilon > 0$ com:
> $$
> B(x, \varepsilon) \subseteq A.
> $$
### [[Fecho de um Conjunto]]

> [!note]  
> Seja $A \subseteq \mathbb{R}^n$. O **fecho** de $A$, denotado por $\overline{A}$, é o conjunto de todos os pontos $x \in \mathbb{R}^n$ tais que existe uma sequência $(x_n) \subseteq A$ com:
> $$
> x_n \to x.
> $$
### Distância
> [!note] 
> Dado que $x = (x_1, x_2, \dots , x_n)$ e $y = (y_1, y_2, \dots, y_n)$ com $x, y \in \mathbb{R}^n$, temos que:
> $$
> \lvert x - y \rvert = \sqrt{\sum_{i=1}^{n} (x_i - y_i)^2}
> $$
### Fronteira

> [!note]  
> Seja $A \subseteq \mathbb{R}^n$. A **fronteira** de $A$, denotada por $\partial A$, é o conjunto de todos os pontos $x \in \mathbb{R}^n$ tais que, para todo $\varepsilon > 0$, vale:
> $$
> B(x,\varepsilon)\cap A \neq \varnothing
> \quad \text{e} \quad
> B(x,\varepsilon)\cap A^c \neq \varnothing.
> $$
### Bola Aberta
> [!note] 
> com $x_0 \in \mathbb{R}^n$, $r > 0$fixos, é o conjunto $$B(x_o, r) = \{ x \in \mathbb{R}^n \mid |x - x_0| < r \}$$
> Sendo isso uma bola aberta de centro $x_0$ e raio $r$
> 

---
## 📖 Definição

> [!note]
> Uma **Equação Diferencial Parcial (EDP)** é uma equação que envolve **derivadas parciais** de uma função desconhecida de **duas ou mais variáveis independentes** $(x,y,z,t,w, \dots)$. 
>
### Forma Geral:
> [!note] 
> $$F\left(x_1, x_2, \dots, x_n, u, \frac{\partial u}{\partial x_1}, \dots, \frac{\partial^m u}{\partial x_1^m \dots \partial x_n^m}\right) = 0$$

#### Notações de Derivada
> [!summary]
> 
> **Primeira derivada:** $\displaystyle \frac{\partial U}{\partial x}$, $U_x$, $\partial_x U$, $D_1 U$  
> <br></br>
> **Segunda derivada:** $\displaystyle \frac{\partial^2 U}{\partial x^2}$, $U_{xx}$, $\partial_{xx} U$, $D_1^2 U$  <br></br>
> **Terceira derivada:** $\displaystyle \frac{\partial^3 U}{\partial x^3}$, $U_{xxx}$, $\partial_{xxx} U$, $D_1^3 U$  <br></br>
> **Derivada mista:** $\displaystyle \frac{\partial^2 U}{\partial x \partial y}$, $U_{xy}$, $\partial_{xy} U$, $D_{12} U$  <br></br>
> **Derivada de ordem $n$:** $\displaystyle \frac{\partial^n U}{\partial x^n}$, $U_{x^n}$, $\partial_x^n U$, $D_1^n U$

---
## 🎯 Diferença entre EDO e EDP

| Característica | EDO                          | EDP                                                                        |
| -------------- | ---------------------------- | -------------------------------------------------------------------------- |
| **Variáveis**  | 1 variável independente      | 2 ou mais variáveis                                                        |
| **Derivadas**  | Ordinárias ($\frac{dy}{dx}$) | Parciais ($\frac{\partial u}{\partial x}$)                                 |
| **Solução**    | Função de 1 variável         | Função de múltiplas variáveis                                              |
| **Exemplo**    | $\frac{dy}{dx} = 2x$         | $\frac{\partial u}{\partial t} = \alpha \frac{\partial^2 u}{\partial x^2}$ |

---

## 📝 Classificação das EDPs

### 1. Quanto à Ordem

A **ordem** de uma EDP é a maior ordem de derivação presente.

| Ordem | Exemplo | Nome |
|-------|---------|------|
| **1ª ordem** | $\frac{\partial u}{\partial t} + c \frac{\partial u}{\partial x} = 0$ | Equação de Transporte |
| **2ª ordem** | $\frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}$ | Equação da Onda |
| **4ª ordem** | $\frac{\partial^4 u}{\partial x^4} + \frac{\partial^4 u}{\partial y^4} = 0$ | Equação Bi-harmônica |

---

### 2. Quanto à Linearidade

#### EDP Linear:
A função $u$ e suas derivadas aparecem **linearmente** (expoente 1).

**Exemplo:** 
$$\frac{\partial u}{\partial t} = k \frac{\partial^2 u}{\partial x^2}$$

#### EDP Semi-linear:
Linear nas derivadas de maior ordem, mas não necessariamente em $u$. Normalmente quando a parte principal da EDP é linear.

#### EDP Quase-linear:
Linear nas derivadas de maior ordem.

#### EDP Não-linear:
Não linear nas derivadas de maior ordem.

**Exemplo:**
$$\frac{\partial u}{\partial t} + u \frac{\partial u}{\partial x} = 0 \quad \text{(Equação de Burgers)}$$

---

### 3. Quanto à Homogeneidade

#### Homogênea:
Todos os termos dependem de $u$ ou suas derivadas.

$$\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0$$

#### Não-homogênea:
Existe termo independente de $u$.

$$\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = f(x,y)$$

---

## 🔥 As 3 EDPs Clássicas da Física

### 1. Equação do Calor (Parabólica)

$$\frac{\partial u}{\partial t} = \alpha \frac{\partial^2 u}{\partial x^2}$$

**Descrição:** Descreve a difusão de calor em uma barra.  
**Onde:** $u(x,t)$ = temperatura, $\alpha$ = difusividade térmica.

**Aplicações:** 
- Condução de calor
- Difusão de substâncias
- Movimento Browniano

---

### 2. Equação da Onda (Hiperbólica)

$$\frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}$$

**Descrição:** Descreve a propagação de ondas.  
**Onde:** $u(x,t)$ = deslocamento, $c$ = velocidade da onda.

**Aplicações:**
- Ondas sonoras
- Ondas em cordas
- Eletromagnetismo

---

### 3. Equação de Laplace (Elíptica)

$$\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0$$

**Descrição:** Descreve fenômenos em equilíbrio.  
**Onde:** $u(x,y)$ = potencial.

**Aplicações:**
- Potencial elétrico
- Fluxo de fluidos
- Elasticidade

---

## 📊 Classificação das EDPs de 2ª Ordem

### Forma geral:
$$A \frac{\partial^2 u}{\partial x^2} + B \frac{\partial^2 u}{\partial x \partial y} + C \frac{\partial^2 u}{\partial y^2} + D \frac{\partial u}{\partial x} + E \frac{\partial u}{\partial y} + F u = G$$

### Discriminante:
$$\Delta = B^2 - 4AC$$

| Tipo | Condição | Exemplo |
|------|----------|---------|
| **Elíptica** | $\Delta < 0$ | Laplace, Poisson |
| **Parabólica** | $\Delta = 0$ | Calor |
| **Hiperbólica** | $\Delta > 0$ | Onda |

---

## 💡 Soluções de EDPs

### Método da Separação de Variáveis

**Passos:**
1. Supor $u(x,t) = X(x) \cdot T(t)$
2. Substituir na EDP
3. Separar em duas EDOs
4. Resolver as EDOs
5. Aplicar condições de contorno
6. Somar soluções (princípio da superposição)

---

### Exemplo: Equação do Calor

**Problema:**
$$\frac{\partial u}{\partial t} = \alpha \frac{\partial^2 u}{\partial x^2}, \quad 0 < x < L, \quad t > 0$$

**Condições:**
- $u(0,t) = 0$, $u(L,t) = 0$ (contorno)
- $u(x,0) = f(x)$ (inicial)

**Solução por separação de variáveis:**

1. Suponha $u(x,t) = X(x)T(t)$
2. Substituindo: $X T' = \alpha X'' T$
3. Separando: $\frac{T'}{\alpha T} = \frac{X''}{X} = -\lambda$ (constante)

4. Obtemos duas EDOs:
   - $X'' + \lambda X = 0$ (problema de Sturm-Liouville)
   - $T' + \alpha \lambda T = 0$

5. Soluções:
   - $X_n(x) = \sin\left(\frac{n\pi x}{L}\right)$
   - $\lambda_n = \left(\frac{n\pi}{L}\right)^2$
   - $T_n(t) = e^{-\alpha \lambda_n t}$

6. Solução geral:
$$u(x,t) = \sum_{n=1}^{\infty} b_n \sin\left(\frac{n\pi x}{L}\right) e^{-\alpha (n\pi/L)^2 t}$$

onde:
$$b_n = \frac{2}{L} \int_0^L f(x) \sin\left(\frac{n\pi x}{L}\right) dx$$

---

## 📈 Exemplos Práticos

### Exemplo 1: Verificar se é solução

**Problema:** Verifique se $u(x,y) = e^x \sin(y)$ satisfaz a equação de Laplace.

**Solução:**
- $\frac{\partial u}{\partial x} = e^x \sin(y)$
- $\frac{\partial^2 u}{\partial x^2} = e^x \sin(y)$
- $\frac{\partial u}{\partial y} = e^x \cos(y)$
- $\frac{\partial^2 u}{\partial y^2} = -e^x \sin(y)$

**Verificação:**
$$\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = e^x \sin(y) - e^x \sin(y) = 0$$ ✅

---

### Exemplo 2: Classificar a EDP

**Problema:** Classifique $3\frac{\partial^2 u}{\partial x^2} + 5\frac{\partial^2 u}{\partial x \partial y} + 2\frac{\partial^2 u}{\partial y^2} = 0$

**Solução:**
- $A = 3$, $B = 5$, $C = 2$
- $\Delta = B^2 - 4AC = 25 - 4(3)(2) = 25 - 24 = 1 > 0$

**Resposta:** EDP **Hiperbólica** ✅

---

## 🔧 Condições de Contorno

| Tipo | Expressão | Exemplo |
|------|-----------|---------|
| **Dirichlet** | $u$ especificada na fronteira | $u(0,t) = 0$ |
| **Neumann** | Derivada normal especificada | $\frac{\partial u}{\partial x}(L,t) = 0$ |
| **Mista** | Combinação $au + b\frac{\partial u}{\partial n} = g$ | $u(0,t) + \frac{\partial u}{\partial x}(0,t) = 0$ |

---

## 🖥️ Implementação Numérica (Diferenças Finitas)

### Equação do Calor 1D

```python
import numpy as np
import matplotlib.pyplot as plt

# Parâmetros
L = 1.0          # Comprimento da barra
T = 0.1          # Tempo total
alpha = 1.0      # Difusividade
nx = 50          # Pontos no espaço
nt = 1000        # Passos no tempo

dx = L/(nx-1)
dt = T/nt

# Condição inicial: u(x,0) = sin(pi*x)
x = np.linspace(0, L, nx)
u = np.sin(np.pi * x)
u[0] = 0        # Contorno esquerdo
u[-1] = 0       # Contorno direito

# Solução por diferenças finitas
for n in range(nt):
    u_new = u.copy()
    for i in range(1, nx-1):
        u_new[i] = u[i] + alpha * dt/dx**2 * (u[i+1] - 2*u[i] + u[i-1])
    u = u_new

# Resultado
plt.plot(x, u, 'b-', label='t = 0.1')
plt.xlabel('x')
plt.ylabel('Temperatura')
plt.title('Equação do Calor - Solução Numérica')
plt.grid(True)
plt.show()








