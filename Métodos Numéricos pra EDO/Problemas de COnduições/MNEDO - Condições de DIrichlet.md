Aqui está o **notebook sobre Condições de Dirichlet em Métodos Numéricos para EDO e EDP** em português, no formato para Obsidian com callouts, exemplos passo a passo e implementações computacionais.

---

# 📘 Condições de Dirichlet em Métodos Numéricos

## Aplicações em EDOs e Introdução às EDPs

> [!info] **O que são Condições de Dirichlet?**
> As **condições de contorno de Dirichlet** (nomeadas em homenagem ao matemático alemão **Peter Gustav Lejeune Dirichlet**) especificam o **valor da solução** na fronteira do domínio.
> 
> $$ y(a) = \alpha \quad \text{e} \quad y(b) = \beta $$
> 
> Em contraste, as [[Condições de Neumann]] especificam a **derivada** na fronteira.

🔗 **Notas relacionadas:** [[Problemas de Valor de Contorno]], [[Condições de Neumann]], [[Condições Mistas (Robin)]], [[Peter Dirichlet]]

---

## 1. Contexto Geral

### 1.1 EDOs vs EDPs

| Tipo | Equação | Condição de Dirichlet |
|------|---------|----------------------|
| **EDO** | $y''(x) = f(x, y, y')$ | $y(a) = \alpha$, $y(b) = \beta$ |
| **EDP (1D)** | $u_{tt} = c^2 u_{xx}$ | $u(0,t) = 0$, $u(L,t) = 0$ |
| **EDP (2D)** | $\nabla^2 u = 0$ | $u(x,y) = g(x,y)$ em $\partial\Omega$ |

> [!note] **Interpretação física:**
> - **Calor:** Temperatura fixa nas bordas
> - **Ondas:** Extremidades fixas (corda presa)
> - **Potencial:** Potencial fixo na fronteira

---

## 2. EDOs com Condições de Dirichlet

### 2.1 Método das Diferenças Finitas

> [!definition] **Problema modelo:**
> 
> $$ y''(x) = f(x), \quad y(0) = \alpha, \quad y(L) = \beta $$

**Discretização:** Usando diferença central:

$$ \frac{y_{i-1} - 2y_i + y_{i+1}}{h^2} = f(x_i) $$

$$ y_{i-1} - 2y_i + y_{i+1} = h^2 f(x_i) $$

> [!example] **Exemplo manual:** $y''(x) = -y(x)$, $y(0)=0$, $y(\pi/2)=1$
> 
> Com $n=4$ ($h = \pi/8 \approx 0.3927$), $x_0=0$, $x_1=0.3927$, $x_2=0.7854$, $x_3=1.1781$, $x_4=1.5708$
> 
> **Sistema para pontos internos:**
> 
> Para $i=1$: $y_0 - 2y_1 + y_2 = -h^2 y_1$ → $0 - 2y_1 + y_2 = -0.1542y_1$ → $-1.8458y_1 + y_2 = 0$
> 
> Para $i=2$: $y_1 - 2y_2 + y_3 = -h^2 y_2$ → $y_1 - 1.8458y_2 + y_3 = 0$
> 
> Para $i=3$: $y_2 - 2y_3 + y_4 = -h^2 y_3$ → $y_2 - 1.8458y_3 + 1 = 0$ → $y_2 - 1.8458y_3 = -1$
> 
> **Resolvendo:** $y_1 \approx 0.3850$, $y_2 \approx 0.7106$, $y_3 \approx 0.9267$
> 
> **Comparação:** $\sin(0.3927) \approx 0.3827$, erro $\approx 0.0023$

---

### 2.2 Implementação em Python (EDO)

> [!code] **Código para EDO com Dirichlet**

```python
import numpy as np
import matplotlib.pyplot as plt

def dirichlet_edo(f, a, b, alpha, beta, n):
    """
    Resolve y''(x) = f(x) com condições de Dirichlet
    y(a)=alpha, y(b)=beta usando diferenças finitas
    
    Parâmetros:
    - f: função f(x) (pode ser também dependente de y)
    - a, b: extremos do intervalo
    - alpha, beta: valores de contorno
    - n: número de subintervalos
    """
    h = (b - a) / n
    x = np.linspace(a, b, n+1)
    
    # Montagem do sistema linear
    A = np.zeros((n-1, n-1))
    b_vec = np.zeros(n-1)
    
    for i in range(1, n):
        xi = x[i]
        # Caso linear: y''(x) = f(x)
        # Equação: y_{i-1} - 2y_i + y_{i+1} = h^2 f(x_i)
        
        if i > 1:
            A[i-1, i-2] = 1
        A[i-1, i-1] = -2
        if i < n-1:
            A[i-1, i] = 1
        
        b_vec[i-1] = h**2 * f(xi)
    
    # Ajuste para as condições de contorno
    b_vec[0] -= alpha      # y0 conhecido
    b_vec[-1] -= beta      # yn conhecido
    
    # Resolução
    y_interno = np.linalg.solve(A, b_vec)
    
    # Montagem da solução completa
    y = np.zeros(n+1)
    y[0] = alpha
    y[1:n] = y_interno
    y[n] = beta
    
    return x, y

# Exemplo: y''(x) = -y(x), y(0)=0, y(pi/2)=1
def f_exemplo(x):
    return -np.sin(x)  # Para o caso linearizado

x, y = dirichlet_edo(f_exemplo, 0, np.pi/2, 0, 1, 20)

plt.plot(x, y, 'bo-', label='Solução numérica')
plt.plot(x, np.sin(x), 'r--', label='Solução exata: sen(x)')
plt.xlabel('x')
plt.ylabel('y(x)')
plt.title('EDO com Condições de Dirichlet')
plt.legend()
plt.grid(True)
plt.show()
```

---

## 3. EDPs com Condições de Dirichlet

### 3.1 Equação do Calor 1D

> [!definition] **Equação do Calor com Dirichlet:**
> 
> $$ \frac{\partial u}{\partial t} = k \frac{\partial^2 u}{\partial x^2}, \quad 0 < x < L, \quad t > 0 $$
> 
> **Condições de Dirichlet:**
> $$ u(0, t) = T_0, \quad u(L, t) = T_L $$
> 
> **Condição inicial:**
> $$ u(x, 0) = f(x) $$

> [!example] **Exemplo físico:**
> Barra metálica de comprimento $L=1$ com extremidades mantidas a $T_0=0°C$ e $T_L=0°C$, temperatura inicial $f(x)=100\sin(\pi x)$.

**Discretização (Diferenças Finitas):**

$$ \frac{u_i^{n+1} - u_i^n}{\Delta t} = k \frac{u_{i-1}^n - 2u_i^n + u_{i+1}^n}{(\Delta x)^2} $$

**Esquema explícito:**
$$ u_i^{n+1} = u_i^n + \frac{k \Delta t}{(\Delta x)^2} (u_{i-1}^n - 2u_i^n + u_{i+1}^n) $$

- **Condições de Dirichlet impostas a cada passo:** $u_0^n = T_0$, $u_N^n = T_L$ para todo $n$

> [!warning] **Estabilidade:**
> Para o esquema explícito, é necessário:
> $$ \frac{k \Delta t}{(\Delta x)^2} \le \frac{1}{2} $$
> Caso contrário, o método torna-se instável.

---

### 3.2 Implementação da Equação do Calor

> [!code] **Código da Equação do Calor com Dirichlet**

```python
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

def calor_dirichlet(L, T_max, k, T0, TL, f, nx, nt):
    """
    Resolve a equação do calor com condições de Dirichlet
    u_t = k u_xx
    u(0,t)=T0, u(L,t)=TL
    u(x,0)=f(x)
    
    Parâmetros:
    - L: comprimento da barra
    - T_max: tempo máximo de simulação
    - k: difusividade térmica
    - T0, TL: temperaturas nas extremidades
    - f: função temperatura inicial
    - nx: número de pontos espaciais
    - nt: número de passos temporais
    """
    dx = L / (nx - 1)
    dt = T_max / nt
    x = np.linspace(0, L, nx)
    
    # Verificação de estabilidade
    alpha = k * dt / dx**2
    if alpha > 0.5:
        print(f"Aviso: alpha = {alpha:.3f} > 0.5. Método instável!")
    
    # Inicialização
    u = np.zeros((nt, nx))
    u[0, :] = f(x)  # Condição inicial
    
    # Condições de contorno de Dirichlet (fixas no tempo)
    u[:, 0] = T0
    u[:, -1] = TL
    
    # Evolução temporal
    for n in range(nt - 1):
        for i in range(1, nx - 1):
            u[n+1, i] = u[n, i] + alpha * (u[n, i-1] - 2*u[n, i] + u[n, i+1])
        # Reaplicando condições de contorno (redundante mas seguro)
        u[n+1, 0] = T0
        u[n+1, -1] = TL
    
    return x, u

# Parâmetros
L = 1.0
T_max = 0.5
k = 0.01
T0, TL = 0.0, 0.0

def f_inicial(x):
    return 100 * np.sin(np.pi * x)

nx, nt = 51, 500
x, u = calor_dirichlet(L, T_max, k, T0, TL, f_inicial, nx, nt)

# Visualização
plt.figure(figsize=(10, 6))
for t in [0, 0.1, 0.2, 0.3, 0.4, 0.5]:
    idx = int(t / T_max * nt)
    plt.plot(x, u[idx], label=f't = {t:.1f}s')

plt.xlabel('Posição x (m)')
plt.ylabel('Temperatura u(x,t) (°C)')
plt.title('Equação do Calor com Condições de Dirichlet (u(0,t)=u(L,t)=0)')
plt.legend()
plt.grid(True)
plt.show()
```

---

### 3.3 Equação da Onda 1D

> [!definition] **Equação da Onda com Dirichlet:**
> 
> $$ \frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}, \quad 0 < x < L, \quad t > 0 $$
> 
> **Condições de Dirichlet (extremidades fixas):**
> $$ u(0, t) = 0, \quad u(L, t) = 0 $$
> 
> **Condições iniciais:**
> $$ u(x, 0) = f(x), \quad u_t(x, 0) = g(x) $$

> [!example] **Exemplo físico:**
> Corda de violão presa nas duas extremidades, puxada no centro e solta.

**Discretização:**
$$ \frac{u_i^{n+1} - 2u_i^n + u_i^{n-1}}{\Delta t^2} = c^2 \frac{u_{i-1}^n - 2u_i^n + u_{i+1}^n}{\Delta x^2} $$

**Esquema explícito:**
$$ u_i^{n+1} = 2u_i^n - u_i^{n-1} + \frac{c^2 \Delta t^2}{\Delta x^2} (u_{i-1}^n - 2u_i^n + u_{i+1}^n) $$

- **Condições de Dirichlet:** $u_0^n = 0$, $u_N^n = 0$ para todo $n$

> [!note] **Estabilidade (CFL):**
> $$ \frac{c \Delta t}{\Delta x} \le 1 $$

---

### 3.4 Implementação da Equação da Onda

> [!code] **Código da Equação da Onda com Dirichlet**

```python
def onda_dirichlet(L, T_max, c, f, g, nx, nt):
    """
    Resolve a equação da onda com condições de Dirichlet
    u_tt = c^2 u_xx
    u(0,t)=0, u(L,t)=0
    u(x,0)=f(x), u_t(x,0)=g(x)
    """
    dx = L / (nx - 1)
    dt = T_max / nt
    x = np.linspace(0, L, nx)
    
    # Verificação de estabilidade (CFL)
    C = c * dt / dx
    if C > 1:
        print(f"Aviso: CFL = {C:.3f} > 1. Método instável!")
    
    # Inicialização
    u = np.zeros((nt, nx))
    u_prev = np.zeros(nx)
    
    # Condição inicial u(x,0) = f(x)
    u[0, :] = f(x)
    
    # Primeiro passo usando u_t(x,0) = g(x)
    # Aproximação: u_i^1 = u_i^0 + dt * g(x_i) + (C^2/2) * (u_{i-1}^0 - 2u_i^0 + u_{i+1}^0)
    for i in range(1, nx-1):
        u[1, i] = u[0, i] + dt * g(x[i]) + (C**2/2) * (u[0, i-1] - 2*u[0, i] + u[0, i+1])
    
    # Condições de contorno de Dirichlet
    u[:, 0] = 0
    u[:, -1] = 0
    u[1, 0] = 0
    u[1, -1] = 0
    
    # Evolução temporal
    for n in range(1, nt-1):
        for i in range(1, nx-1):
            u[n+1, i] = 2*u[n, i] - u[n-1, i] + C**2 * (u[n, i-1] - 2*u[n, i] + u[n, i+1])
        # Reaplicando Dirichlet
        u[n+1, 0] = 0
        u[n+1, -1] = 0
    
    return x, u

# Parâmetros
L = 1.0
T_max = 2.0
c = 1.0

def f_onda(x):
    # Forma inicial: triângulo no centro
    return np.where(x < 0.5, 2*x, 2*(1-x))

def g_onda(x):
    return np.zeros_like(x)  # Velocidade inicial nula

nx, nt = 101, 500
x, u = onda_dirichlet(L, T_max, c, f_onda, g_onda, nx, nt)

# Visualização
plt.figure(figsize=(10, 6))
for t in [0, 0.25, 0.5, 0.75, 1.0, 1.5, 2.0]:
    idx = int(t / T_max * nt)
    plt.plot(x, u[idx], label=f't = {t:.2f}s')

plt.xlabel('Posição x')
plt.ylabel('Deslocamento u(x,t)')
plt.title('Equação da Onda com Condições de Dirichlet (extremidades fixas)')
plt.legend()
plt.grid(True)
plt.show()
```

---

## 4. EDPs em 2D: Equação de Laplace

> [!definition] **Equação de Laplace com Dirichlet:**
> 
> $$ \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0, \quad (x,y) \in \Omega $$
> 
> **Condição de Dirichlet na fronteira:**
> $$ u(x,y) = g(x,y) \quad \text{em } \partial\Omega $$

> [!example] **Exemplo físico:**
> Distribuição de temperatura estacionária em uma placa com bordas mantidas em temperaturas específicas.

**Discretização (diferenças finitas 2D):**

$$ \frac{u_{i-1,j} - 2u_{i,j} + u_{i+1,j}}{\Delta x^2} + \frac{u_{i,j-1} - 2u_{i,j} + u_{i,j+1}}{\Delta y^2} = 0 $$

**Para $\Delta x = \Delta y = h$:**
$$ u_{i,j} = \frac{1}{4}(u_{i-1,j} + u_{i+1,j} + u_{i,j-1} + u_{i,j+1}) $$

> [!method] **Método de Gauss-Seidel (iterativo):**
> 
> 1. Chute inicial para todos os pontos internos
> 2. Atualize cada $u_{i,j}$ usando a média dos vizinhos
> 3. Repita até convergência
> 4. Pontos de fronteira são fixos (Dirichlet)

---

### 4.1 Implementação de Laplace 2D

> [!code] **Código para Equação de Laplace 2D com Dirichlet**

```python
def laplace_2d_dirichlet(g, nx, ny, Lx, Ly, tol=1e-6, max_iter=10000):
    """
    Resolve a equação de Laplace em 2D com condições de Dirichlet
    u_xx + u_yy = 0
    u(x,y) = g(x,y) na fronteira
    
    Parâmetros:
    - g: função que define valores de contorno
    - nx, ny: número de pontos em x e y
    - Lx, Ly: dimensões do domínio
    - tol: tolerância para convergência
    """
    dx = Lx / (nx - 1)
    dy = Ly / (ny - 1)
    x = np.linspace(0, Lx, nx)
    y = np.linspace(0, Ly, ny)
    
    # Inicialização
    u = np.zeros((nx, ny))
    
    # Aplicando condições de contorno de Dirichlet
    for i in range(nx):
        u[i, 0] = g(x[i], 0)      # fronteira inferior (y=0)
        u[i, ny-1] = g(x[i], Ly)  # fronteira superior (y=Ly)
    for j in range(ny):
        u[0, j] = g(0, y[j])      # fronteira esquerda (x=0)
        u[nx-1, j] = g(Lx, y[j])  # fronteira direita (x=Lx)
    
    # Método de Gauss-Seidel
    for _ in range(max_iter):
        u_old = u.copy()
        
        for i in range(1, nx-1):
            for j in range(1, ny-1):
                u[i, j] = 0.25 * (u[i-1, j] + u[i+1, j] + u[i, j-1] + u[i, j+1])
        
        # Verificação de convergência
        erro = np.max(np.abs(u - u_old))
        if erro < tol:
            print(f"Convergência em {_+1} iterações. Erro: {erro:.2e}")
            break
    
    return x, y, u

# Definição do problema
def contorno_g(x, y):
    # Exemplo: borda superior aquecida, outras a 0
    if y == 1.0:  # borda superior
        return 100.0
    else:
        return 0.0

Lx, Ly = 1.0, 1.0
nx, ny = 31, 31

x, y, u = laplace_2d_dirichlet(contorno_g, nx, ny, Lx, Ly)

# Visualização
plt.figure(figsize=(10, 8))
X, Y = np.meshgrid(x, y)
plt.contourf(X, Y, u.T, levels=20, cmap='hot')
plt.colorbar(label='Temperatura u(x,y)')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Equação de Laplace 2D - Condições de Dirichlet\n(borda superior a 100°C, demais a 0°C)')
plt.show()
```

---

## 5. Comparação: Dirichlet vs Neumann

| Característica | Dirichlet | Neumann |
|----------------|-----------|---------|
| **Condição** | $u(\text{fronteira}) = \text{valor}$ | $\frac{\partial u}{\partial n}(\text{fronteira}) = \text{valor}$ |
| **Significado físico (calor)** | Temperatura fixa | Fluxo de calor fixo |
| **Significado físico (onda)** | Extremidade fixa | Extremidade livre |
| **Implementação** | Valores conhecidos | Derivada aproximada |
| **Matriz resultante** | Tridiagonal (1D) | Tridiagonal com modificação |

🔗 **Notas relacionadas:** [[Condições de Neumann]], [[Condições de Robin]], [[Problemas Mistos]]

---

## 6. Resumo

> [!success] **Pontos Principais:**
> 
> 1. **Condições de Dirichlet** especificam o **valor** da função na fronteira
> 2. Em **EDOs**, geram um sistema linear onde as extremidades são conhecidas
> 3. Em **EDPs**, são aplicadas a cada passo temporal (evolutivas) ou como condições de contorno (elípticas)
> 4. A implementação numérica é **direta**: basta fixar os valores nos pontos de fronteira
> 5. São **estáveis** e **bem-postas** para a maioria dos problemas físicos
