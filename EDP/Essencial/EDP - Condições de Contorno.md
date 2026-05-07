---
title: EDP - Condições Iniciais de Contorno
---

# EDP - Condições de Contorno: Guia Completo

---

## Sumário

1. [Introdução](#1-introdução)
2. [Classificação das Condições de Contorno](#2-classificação-das-condições-de-contorno)
3. [Condições Clássicas: Dirichlet, Neumann e Robin](#3-condições-clássicas-dirichlet-neumann-e-robin)
4. [Condição de Cauchy (Fronteira Superdeterminada)](#4-condição-de-cauchy-fronteira-superdeterminada)
5. [Condições Periódicas](#5-condições-periódicas)
6. [Problema de Valor Inicial (PVI) - Cauchy no Tempo](#6-problema-de-valor-inicial-pvi---cauchy-no-tempo)
7. [Problemas Mistos (PVI + Condições de Contorno)](#7-problemas-mistos-pvi--condições-de-contorno)
8. [Condições de Compatibilidade](#8-condições-de-compatibilidade)
9. [Implementação Numérica Completa](#9-implementação-numérica-completa)
10. [Resumo e Tabela Comparativa](#10-resumo-e-tabela-comparativa)
11. [Exercícios](#11-exercícios)


## 1. Introdução

> [!note]
> **Equações Diferenciais Parciais (EDPs)** modelam fenômenos físicos como calor, ondas, fluidos e eletromagnetismo. As **condições de contorno** definem o comportamento da solução nos limites do domínio, sendo essenciais para garantir soluções **únicas** e **fisicamente relevantes**.
>
>Sem condições de contorno adequadas, uma EDP tem infinitas soluções. Com elas, encontramos a solução do problema real.

## 2. Classificação das Condições de Contorno

| Tipo | Nome | Expressão Matemática | Significado Físico |
|------|------|---------------------|---------------------|
| **Dirichlet** | 1ª espécie | \( u = f(t) \) | Valor fixo na fronteira |
| **Neumann** | 2ª espécie | \( \frac{\partial u}{\partial n} = g(t) \) | Fluxo prescrito |
| **Robin** | 3ª espécie | \( \alpha u + \beta \frac{\partial u}{\partial n} = h(t) \) | Combinação (convecção) |
| **Cauchy** | Superdeterminada | \( u = f,\ \frac{\partial u}{\partial n} = g \) | Dados completos na fronteira |
| **Periódica** | Cíclica | \( u(0)=u(L),\ u'(0)=u'(L) \) | Domínio circular |
| **PVI** | Temporal | \( u(x,0)=f(x),\ u_t(x,0)=g(x) \) | Condições iniciais |


## 3. Condições Clássicas: Dirichlet, Neumann e Robin

### 3.1 Equação do Calor 1D
> [!note] 
> $$
\frac{\partial u}{\partial t} = k \frac{\partial^2 u}{\partial x^2}, \quad 0 < x < L, \quad t > 0$$

### 3.2 Implementação Comparativa

```python
import numpy as np
import matplotlib.pyplot as plt

# Parâmetros do domínio
L = 1.0
T = 0.1
nx = 50
nt = 2000
alpha = 0.01

dx = L / (nx - 1)
dt = T / nt
x = np.linspace(0, L, nx)

# Condição inicial comum a todos
def condicao_inicial(x):
    return np.sin(np.pi * x / L) + 0.5 * np.sin(4 * np.pi * x / L)

print(f"Estabilidade FTCS: dt <= dx²/(2α)? {dt <= dx**2/(2*alpha)}")
```

```python
# 3.2.1 Dirichlet (valores fixos nas bordas)
u_dirichlet = condicao_inicial(x)
T_esq, T_dir = 0.0, 0.0

for n in range(nt):
    u_old = u_dirichlet.copy()
    for i in range(1, nx-1):
        u_dirichlet[i] = u_old[i] + alpha * dt / dx**2 * (u_old[i+1] - 2*u_old[i] + u_old[i-1])
    u_dirichlet[0] = T_esq
    u_dirichlet[-1] = T_dir

# 3.2.2 Neumann (fluxo zero nas bordas)
u_neumann = condicao_inicial(x)

for n in range(nt):
    u_old = u_neumann.copy()
    for i in range(1, nx-1):
        u_neumann[i] = u_old[i] + alpha * dt / dx**2 * (u_old[i+1] - 2*u_old[i] + u_old[i-1])
    u_neumann[0] = u_neumann[1]      # du/dx=0
    u_neumann[-1] = u_neumann[-2]    # du/dx=0

# 3.2.3 Robin (condição mista)
u_robin = condicao_inicial(x)
# Coeficientes: α u + β du/dx = h
alpha_robin, beta_robin, h_esq = 1.0, 0.5, 0.0
alpha_robin_dir, beta_robin_dir, h_dir = 1.0, 0.5, 0.0

for n in range(nt):
    u_old = u_robin.copy()
    for i in range(1, nx-1):
        u_robin[i] = u_old[i] + alpha * dt / dx**2 * (u_old[i+1] - 2*u_old[i] + u_old[i-1])
    
    # Condição Robin na esquerda: α u + β du/dx = h
    # du/dx ≈ (u[1] - u[0])/dx
    # α u[0] + β (u[1]-u[0])/dx = h
    # u[0] = (h*dx + β u[1]) / (α*dx + β)
    u_robin[0] = (h_esq * dx + beta_robin * u_robin[1]) / (alpha_robin * dx + beta_robin)
    
    # Robin na direita
    # du/dx ≈ (u[-1] - u[-2])/dx
    u_robin[-1] = (h_dir * dx + beta_robin_dir * u_robin[-2]) / (alpha_robin_dir * dx + beta_robin_dir)

# Plot comparativo
plt.figure(figsize=(12, 4))
plt.subplot(1, 3, 1)
plt.plot(x, u_dirichlet, 'b-')
plt.title('Dirichlet')
plt.xlabel('x'); plt.ylabel('u')
plt.grid(True)

plt.subplot(1, 3, 2)
plt.plot(x, u_neumann, 'r-')
plt.title('Neumann (fluxo zero)')
plt.xlabel('x'); plt.ylabel('u')
plt.grid(True)

plt.subplot(1, 3, 3)
plt.plot(x, u_robin, 'g-')
plt.title('Robin')
plt.xlabel('x'); plt.ylabel('u')
plt.grid(True)

plt.tight_layout()
plt.show()
```

## 4. Condição de Cauchy (Fronteira Superdeterminada)

> [!note]
> A **condição de Cauchy** especifica **tanto o valor da função quanto sua derivada normal** na fronteira. É superdeterminada para EDPs elípticas e parabólicas, mas útil em problemas inversos ou em fronteiras características.

> [!example]
> ### Exemplo: Equação do calor com Cauchy em x=0

```python
# Condição de Cauchy: u(0,t)=1 e du/dx(0,t)=0
u_cauchy = condicao_inicial(x)
u_cauchy[0] = 1.0

for n in range(nt):
    u_old = u_cauchy.copy()
    for i in range(2, nx-1):  # Começa em i=2 devido ao contorno especial
        u_cauchy[i] = u_old[i] + alpha*dt/dx**2 * (u_old[i+1] - 2*u_old[i] + u_old[i-1])
    
    # Impor Cauchy: u(0)=1 e du/dx(0)=0 -> u[1]=u[0]
    u_cauchy[0] = 1.0
    u_cauchy[1] = u_cauchy[0]   # Derivada zero
    u_cauchy[-1] = u_cauchy[-2] # Neutro na direita

plt.figure(figsize=(10, 4))
plt.plot(x, u_cauchy, 'm-', linewidth=2)
plt.plot(x, condicao_inicial(x), 'k--', alpha=0.5, label='Condição inicial')
plt.xlabel('x')
plt.ylabel('u')
plt.title('Condição de Cauchy: u(0,t)=1, du/dx(0,t)=0')
plt.legend()
plt.grid(True)
plt.show()
```

---

> [!note] ## 5. Condições Periódicas
>
> Úteis para domínios circulares ou problemas com simetria translacional.

```python
# Equação do calor com condições periódicas
u_periodica = condicao_inicial(x)

for n in range(nt):
    u_old = u_periodica.copy()
    for i in range(1, nx-1):
        u_periodica[i] = u_old[i] + alpha*dt/dx**2 * (u_old[i+1] - 2*u_old[i] + u_old[i-1])
    
    # Condição periódica: u[0] = u[-2] e u[-1] = u[1]
    u_periodica[0] = u_periodica[-2]
    u_periodica[-1] = u_periodica[1]

plt.plot(x, u_periodica, 'c-', label='Periódica')
plt.plot(x, condicao_inicial(x), 'k--', alpha=0.5, label='Condição inicial')
plt.xlabel('x')
plt.ylabel('u')
plt.title('Condição de Contorno Periódica')
plt.legend()
plt.grid(True)
plt.show()
```

## 6. Problema de Valor Inicial (PVI) - Cauchy no Tempo

> [!note] 
>  **PVI** (ou problema de Cauchy no tempo) especifica a solução e sua derivada temporal em \(t=0\). É usado principalmente em **equações hiperbólicas** (onda) e em domínios infinitos.

### Equação da onda 1D
> [!info] 
> $$
\frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}, \quad -\infty < x < \infty
> $$
> $$
u(x,0) = f(x), \quad \frac{\partial u}{\partial t}(x,0) = g(x)
> $$
>
>
> **Solução de d'Alembert:**
> $$
> u(x,t) = \frac{1}{2}[f(x-ct) + f(x+ct)] + \frac{1}{2c}\int_{x-ct}^{x+ct} g(s)\,ds
> $$

```python
# Equação da onda - PVI (Cauchy no tempo)
c = 1.0
L_onda = 10.0
nx_onda = 200
dx_onda = L_onda / (nx_onda - 1)
x_onda = np.linspace(0, L_onda, nx_onda)

dt_onda = 0.005
nt_onda = 200

# Condições iniciais (Cauchy no tempo)
f = np.exp(-(x_onda - 5)**2)  # u(x,0) - posição inicial
g = np.zeros_like(x_onda)      # du/dt(x,0) - velocidade inicial

# Esquema de diferenças finitas para a onda
u_onda = f.copy()
u_prev = f.copy()  # Aproximação: u(x,-dt) para du/dt=0

for n in range(nt_onda):
    u_next = np.zeros_like(u_onda)
    for i in range(1, nx_onda-1):
        u_next[i] = 2*u_onda[i] - u_prev[i] + (c*dt_onda/dx_onda)**2 * (u_onda[i+1] - 2*u_onda[i] + u_onda[i-1])
    
    # Condições absorventes (aprox.) para simular domínio infinito
    u_next[0] = u_next[1]
    u_next[-1] = u_next[-2]
    
    u_prev = u_onda.copy()
    u_onda = u_next.copy()

plt.figure(figsize=(10, 4))
plt.plot(x_onda, u_onda, 'r-', linewidth=2, label='Solução em t=T')
plt.plot(x_onda, f, 'k--', alpha=0.5, label='Condição inicial u(x,0)')
plt.xlabel('x')
plt.ylabel('u')
plt.title('Problema de Valor Inicial (PVI) - Cauchy no tempo (Equação da Onda)')
plt.legend()
plt.grid(True)
plt.show()
```

## 7. Problemas Mistos (PVI + Condições de Contorno)

> [!info]
> São os mais comuns: evolução temporal **e** condições nas bordas espaciais.
>
> ### Estrutura geral:
>  
> $$
\begin{cases}
\mathcal{L}[u] = 0, & (x,t) \in \Omega \times (0,T] \\
u(x,0) = f(x), & x \in \Omega \quad \text{(condição inicial - PVI)} \\
\mathcal{B}[u] = g(t), & x \in \partial\Omega \quad \text{(condições de contorno)}
\end{cases}
> $$

```python
# Problema misto completo: Calor + Dirichlet + condição inicial
L_misto = 1.0
nx_misto = 50
dx_misto = L_misto/(nx_misto-1)
x_misto = np.linspace(0, L_misto, nx_misto)

# Condição inicial (PVI) - compatível com contornos
u_misto = np.sin(np.pi * x_misto)  # u(x,0) satisfaz u(0)=0, u(L)=0

# Condições de contorno Dirichlet
u_misto[0] = 0.0
u_misto[-1] = 0.0

# Evolução temporal
for n in range(nt):
    u_old = u_misto.copy()
    for i in range(1, nx_misto-1):
        u_misto[i] = u_old[i] + alpha*dt/dx_misto**2 * (u_old[i+1] - 2*u_old[i] + u_old[i-1])
    u_misto[0] = 0.0
    u_misto[-1] = 0.0

plt.figure(figsize=(10, 4))
plt.plot(x_misto, u_misto, 'g-', linewidth=2, label='Solução final')
plt.plot(x_misto, np.sin(np.pi * x_misto), 'k--', alpha=0.5, label='Condição inicial u(x,0)')
plt.xlabel('x')
plt.ylabel('u')
plt.title('Problema Misto: PVI + Condições de Contorno Dirichlet')
plt.legend()
plt.grid(True)
plt.show()
```
## 8. Condições de Compatibilidade

> [!info]
> As **condições de compatibilidade** garantem que os dados iniciais e de contorno não entrem em conflito nos vértices (\(x=0, t=0\) e \(x=L, t=0\)).
>
> ### Exemplo de incompatibilidade:
>
> $$
u_t = u_{xx},\quad u(x,0)=1,\quad u(0,t)=0,\quad u(1,t)=0
> $$
> Conflito em \(x=0, t=0\): \(u(0,0)=1\) (inicial) vs \(u(0,0)=0\) (contorno) → **incompatível**!

### Condições de compatibilidade para equação do calor:

> [!note]
> **Ordem 0:** \(f(0) = g(0)\)  
> **Ordem 1:** \(f''(0) = g'(0)\) (pois \(u_t = u_{xx}\))

```python
def verifica_compatibilidade(f, g, df2, dg, x0=0, t0=0):
    """Verifica compatibilidade para equação do calor"""
    compat0 = abs(f(x0) - g(t0)) < 1e-6
    compat1 = abs(df2(x0) - dg(t0)) < 1e-6
    
    print(f"Compatibilidade ordem 0: {'✓' if compat0 else '✗'} | f({x0})={f(x0):.3f}, g({t0})={g(t0):.3f}")
    print(f"Compatibilidade ordem 1: {'✓' if compat1 else '✗'} | f''({x0})={df2(x0):.3f}, g'({t0})={dg(t0):.3f}")
    return compat0 and compat1

# Exemplo compatível
f = lambda x: (1-x)**2
g = lambda t: 1 - 2*t
df2 = lambda x: 2.0 * np.ones_like(x) if hasattr(x, '__len__') else 2.0
dg = lambda t: -2.0 * np.ones_like(t) if hasattr(t, '__len__') else -2.0

print("\nVerificando compatibilidade:")
verifica_compatibilidade(f, g, df2, dg)

# Exemplo incompatível
f_inc = lambda x: 1.0
g_inc = lambda t: 0.0
df2_inc = lambda x: 0.0
dg_inc = lambda t: 0.0

print("\nCaso incompatível:")
verifica_compatibilidade(f_inc, g_inc, df2_inc, dg_inc)
```

### Efeito numérico da incompatibilidade:

```python
# Problema incompatível
u_incomp = np.ones(nx)  # u(x,0)=1
u_incomp[0] = 0.0        # u(0,t)=0
u_incomp[-1] = 0.0       # u(1,t)=0

for n in range(500):  # Menos passos para ver o efeito inicial
    u_old = u_incomp.copy()
    for i in range(1, nx-1):
        u_incomp[i] = u_old[i] + alpha*dt/dx**2 * (u_old[i+1] - 2*u_old[i] + u_old[i-1])
    u_incomp[0] = 0.0
    u_incomp[-1] = 0.0

plt.figure(figsize=(10, 4))
plt.plot(x, u_incomp, 'r-', linewidth=2, label='Solução com incompatibilidade')
plt.plot(x, np.ones(nx), 'k--', alpha=0.5, label='Condição inicial u(x,0)=1')
plt.axhline(0, color='gray', linestyle=':', alpha=0.5)
plt.xlabel('x')
plt.ylabel('u')
plt.title('Efeito da Incompatibilidade (singularidade nos vértices)')
plt.legend()
plt.grid(True)
plt.show()
print("\n⚠️ Observe a rápida variação próxima às bordas devido à incompatibilidade!")
```

---

## 9. Implementação Numérica Completa

Vamos resolver a **equação do calor 2D** com diferentes condições de contorno em cada borda.

```python
# Equação de Laplace 2D com condições mistas
nx2, ny2 = 50, 50
x2 = np.linspace(0, 1, nx2)
y2 = np.linspace(0, 1, ny2)

u_laplace = np.zeros((nx2, ny2))

# Condições mistas:
# - Inferior: Dirichlet u=0
# - Superior: Neumann du/dy=0
# - Esquerda: Dirichlet u=0
# - Direita: Dirichlet u=1

u_laplace[0, :] = 0            # inferior Dirichlet
u_laplace[-1, :] = u_laplace[-2, :]  # superior Neumann (derivada zero)
u_laplace[:, 0] = 0            # esquerda Dirichlet
u_laplace[:, -1] = 1           # direita Dirichlet

# Gauss-Seidel
max_iter = 5000
for it in range(max_iter):
    u_old = u_laplace.copy()
    for i in range(1, nx2-1):
        for j in range(1, ny2-1):
            u_laplace[i, j] = 0.25 * (u_laplace[i+1, j] + u_laplace[i-1, j] +
                                      u_laplace[i, j+1] + u_laplace[i, j-1])
    # Reaplicar contornos
    u_laplace[0, :] = 0
    u_laplace[-1, :] = u_laplace[-2, :]  # Neumann
    u_laplace[:, 0] = 0
    u_laplace[:, -1] = 1
    
    erro = np.max(np.abs(u_laplace - u_old))
    if erro < 1e-6:
        print(f"Convergência em {it} iterações")
        break

plt.figure(figsize=(10, 8))
plt.contourf(x2, y2, u_laplace.T, levels=20, cmap='hot')
plt.colorbar(label='Potencial')
plt.title('Laplace 2D: Dirichlet (inf, esq, dir) + Neumann (sup)')
plt.xlabel('x')
plt.ylabel('y')
plt.show()
```

---

## 10. Resumo e Tabela Comparativa

| Condição                  | Expressão                                    | Quando usar                        | Exemplo físico                      |
| ------------------------- | -------------------------------------------- | ---------------------------------- | ----------------------------------- |
| **Dirichlet**             | $u = f$                                      | Valor conhecido na fronteira       | Temperatura fixa na parede          |
| **Neumann**               | $\partial u/\partial n = g$                  | Fluxo conhecido                    | Parede isolada (g=0)                |
| **Robin**                 | $\alpha u + \beta \partial u/\partial n = h$ | Troca com meio externo             | Resfriamento por convecção          |
| **Cauchy**                | $u = f,\ \partial u/\partial n = g$          | Problemas inversos                 | Identificação de fontes             |
| **Periódica**             | $u(0)=u(L),\ u'(0)=u'(L)$                    | Domínio circular                   | Anel térmico                        |
| **PVI (Cauchy temporal)** | $u(x,0)=f,\ u_t(x,0)=g$                      | Evolução temporal                  | Corda vibrante (posição+velocidade) |
| **Mista**                 | Combinação de tipos                          | Diferentes condições em cada borda | Problemas reais de engenharia       |

### Regras de compatibilidade:
> [!note] 
> 1. **Ordem 0:** \(u(x,0)\) nas bordas deve igualar \(u\) do contorno em \(t=0\)
> 2. **Ordem 1:** Para equação do calor, \(u_{xx}(x,0) = u_t(x,0)\) na borda
> 3. Incompatibilidade causa **singularidades** e **convergência lenta**

## Conclusão Final
> [!tip] 
> - **Condições de contorno** determinam a unicidade da solução de EDPs
> - **Dirichlet, Neumann, Robin** são as mais comuns em problemas físicos
> - **Cauchy** é superdeterminada, mas útil em problemas inversos
> - **PVI (Cauchy temporal)** é essencial para equações hiperbólicas
> - **Problemas mistos** combinam PVI + condições de contorno
> - **Compatibilidade** entre condições iniciais e de contorno é crucial para evitar singularidades

> [!warning] 
> "Sem condições de contorno, uma EDP tem infinitas soluções. Com elas, encontramos a solução do problema real. Com compatibilidade, encontramos a solução correta desde o primeiro passo."

---

> [!check] 
> **Nota:** Este notebook pode ser executado no Google Colab, Jupyter Notebook ou qualquer ambiente Python com `numpy` e `matplotlib`. Todas as implementações são didáticas e podem ser adaptadas para problemas mais complexos.