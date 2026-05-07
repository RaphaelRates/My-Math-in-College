
# 📘 Condições de Neumann em Métodos Numéricos

## Aplicações em EDOs e Introdução às EDPs

> [!info] **O que são Condições de Neumann?**
> As **condições de contorno de Neumann** (nomeadas em homenagem ao matemático alemão **Carl Gottfried Neumann**) especificam o **valor da derivada normal** da solução na fronteira do domínio.
> 
> $$ y'(a) = \alpha \quad \text{e} \quad y'(b) = \beta $$
> 
> ou em EDPs:
> $$ \frac{\partial u}{\partial n}(x,y) = g(x,y) \quad \text{em } \partial\Omega $$
> 
> Em contraste, as [[Condições de Dirichlet]] especificam o **valor** da função na fronteira.

---

## 1. Contexto Geral

### 1.1 EDOs vs EDPs com Neumann

| Tipo | Equação | Condição de Neumann |
|------|---------|---------------------|
| **EDO** | $y''(x) = f(x, y, y')$ | $y'(a) = \alpha$, $y'(b) = \beta$ |
| **EDP (1D)** | $u_t = k u_{xx}$ | $u_x(0,t) = 0$ (isolamento térmico) |
| **EDP (2D)** | $\nabla^2 u = 0$ | $\frac{\partial u}{\partial n}(x,y) = 0$ (fronteira isolada) |

> [!note] **Interpretação física:**
> - **Calor:** Fluxo de calor fixo (isolamento $\Rightarrow$ derivada zero)
> - **Ondas:** Extremidade livre (pode se mover)
> - **Potencial:** Campo elétrico fixo na fronteira

---

## 2. EDOs com Condições de Neumann

### 2.1 Desafio: Condições apenas nas derivadas

> [!warning] **Problema de unicidade:**
> Em EDOs de segunda ordem com duas condições de Neumann, a solução é **única a menos de uma constante**.
> 
> Exemplo: $y''(x) = 0$, com $y'(0)=1$, $y'(1)=1$ → $y(x) = x + C$ (infinitas soluções)

**Solução:** Adicionar uma condição adicional (ex: fixar um ponto, ou usar valor médio)

---

### 2.2 Discretização da Condição de Neumann

> [!definition] **Aproximações para $y'(a) = \alpha$:**

| Método | Fórmula | Ordem |
|--------|---------|-------|
| **Diferença progressiva** | $\frac{y_1 - y_0}{h} = \alpha$ | $O(h)$ |
| **Diferença regressiva** | $\frac{y_n - y_{n-1}}{h} = \beta$ | $O(h)$ |
| **Diferença centrada (ponto fantasma)** | $\frac{y_1 - y_{-1}}{2h} = \alpha$ | $O(h^2)$ |

> [!example] **Método do ponto fantasma (Ghost Point):**
> 
> Criamos um ponto fictício $x_{-1}$ fora do domínio e usamos a EDO nele.

---

### 2.3 Exemplo Manual: EDO com Neumann

> [!example] **Problema:** $y''(x) = -2$, com $y'(0)=1$, $y'(1)=0$, no intervalo $[0,1]$

**Solução analítica:**
$$ y'(x) = -2x + C_1 $$
$$ y'(0) = C_1 = 1 \Rightarrow y'(x) = -2x + 1 $$
$$ y'(1) = -2 + 1 = -1 \neq 0 \text{?} $$

> [!warning] **Inconsistência!** As condições são incompatíveis. Para uma EDO de segunda ordem, as condições de Neumann devem satisfazer uma relação de consistência.

**Problema consistente:** $y''(x) = -2$, $y'(0)=1$, $y'(1)=-1$

**Solução analítica:** $y(x) = -x^2 + x + C$

---

### 2.4 Implementação com Diferenças Finitas (Neumann)

> [!code] **Código para EDO com Neumann em uma extremidade**

```python
import numpy as np
import matplotlib.pyplot as plt

def neumann_edo_misto(f, a, b, alpha, beta, tipo_a, tipo_b, n=20):
    """
    Resolve y''(x) = f(x) com condições mistas:
    - tipo_a = 'D': y(a)=alpha, 'N': y'(a)=alpha
    - tipo_b = 'D': y(b)=beta,  'N': y'(b)=beta
    """
    h = (b - a) / n
    x = np.linspace(a, b, n+1)
    
    # Sistema para pontos internos (i=1,...,n-1)
    # Equação: y_{i-1} - 2y_i + y_{i+1} = h^2 f(x_i)
    
    A = np.zeros((n+1, n+1))
    B = np.zeros(n+1)
    
    # Equações internas
    for i in range(1, n):
        A[i, i-1] = 1
        A[i, i] = -2
        A[i, i+1] = 1
        B[i] = h**2 * f(x[i])
    
    # Condição na fronteira esquerda (x=a)
    if tipo_a == 'D':  # Dirichlet
        A[0, 0] = 1
        B[0] = alpha
    else:  # Neumann (diferença progressiva, 1ª ordem)
        A[0, 0] = -1
        A[0, 1] = 1
        B[0] = h * alpha
    
    # Condição na fronteira direita (x=b)
    if tipo_b == 'D':  # Dirichlet
        A[n, n] = 1
        B[n] = beta
    else:  # Neumann (diferença regressiva, 1ª ordem)
        A[n, n-1] = -1
        A[n, n] = 1
        B[n] = h * beta
    
    # Resolução
    y = np.linalg.solve(A, B)
    
    return x, y

# Exemplo: y''(x) = -2, y'(0)=1, y(1)=0
def f_exemplo(x):
    return -2 * np.ones_like(x) if hasattr(x, '__len__') else -2

x, y = neumann_edo_misto(f_exemplo, 0, 1, 1, 0, 'N', 'D', n=30)

# Solução exata: y(x) = -x^2 + x + C, y(1)=0 => 0 = -1+1+C => C=0
y_exato = -x**2 + x

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'bo-', label='Solução numérica')
plt.plot(x, y_exato, 'r--', linewidth=2, label='Solução exata: -x² + x')
plt.xlabel('x')
plt.ylabel('y(x)')
plt.title('EDO com Condição de Neumann em x=0 e Dirichlet em x=1')
plt.legend()
plt.grid(True)
plt.show()
```

---

### 2.5 Método de Ordem 2 (Ponto Fantasma)

> [!code] **Neumann com precisão $O(h^2)$**

```python
def neumann_ordem2(f, a, b, ypa, ypb, n=20):
    """
    Resolve y''(x) = f(x) com condições de Neumann em ambas extremidades
    Usando método do ponto fantasma (ordem 2)
    y'(a) = ypa, y'(b) = ypb
    """
    h = (b - a) / n
    x = np.linspace(a, b, n+1)
    
    # Sistema para pontos internos (i=0,...,n)
    # Incluímos pontos fantasmas x_{-1} e x_{n+1}
    A = np.zeros((n+1, n+1))
    B = np.zeros(n+1)
    
    # Equações internas (i=1,...,n-1)
    for i in range(1, n):
        A[i, i-1] = 1
        A[i, i] = -2
        A[i, i+1] = 1
        B[i] = h**2 * f(x[i])
    
    # Condição esquerda (Neumann com ponto fantasma)
    # y'(a) = ypa => (y1 - y_{-1})/(2h) = ypa => y_{-1} = y1 - 2h*ypa
    # Equação da EDO em i=0: y_{-1} - 2y0 + y1 = h^2 f(x0)
    # Substituindo: (y1 - 2h*ypa) - 2y0 + y1 = h^2 f0
    # => -2y0 + 2y1 = h^2 f0 + 2h*ypa
    A[0, 0] = -2
    A[0, 1] = 2
    B[0] = h**2 * f(x[0]) + 2*h*ypa
    
    # Condição direita (Neumann com ponto fantasma)
    # y'(b) = ypb => (y_{n+1} - y_{n-1})/(2h) = ypb => y_{n+1} = y_{n-1} + 2h*ypb
    # Equação da EDO em i=n: y_{n-1} - 2yn + y_{n+1} = h^2 f(xn)
    # Substituindo: y_{n-1} - 2yn + (y_{n-1} + 2h*ypb) = h^2 fn
    # => 2y_{n-1} - 2yn = h^2 fn - 2h*ypb
    A[n, n-1] = 2
    A[n, n] = -2
    B[n] = h**2 * f(x[n]) - 2*h*ypb
    
    # Resolução
    y = np.linalg.solve(A, B)
    
    return x, y

# Exemplo: y''(x) = -2, y'(0)=1, y'(1)=-1
x, y = neumann_ordem2(f_exemplo, 0, 1, 1, -1, n=30)
y_exato = -x**2 + x + 0  # constante arbitrária (fixada numericamente)

# Ajuste da constante (solução única a menos de constante)
constante = y[0] - y_exato[0]
y_exato_ajustado = y_exato + constante

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'bo-', label='Solução numérica')
plt.plot(x, y_exato_ajustado, 'r--', linewidth=2, label='Solução exata (ajustada)')
plt.xlabel('x')
plt.ylabel('y(x)')
plt.title('EDO com Condições de Neumann em ambas extremidades')
plt.legend()
plt.grid(True)
plt.show()
```

---

## 3. EDPs com Condições de Neumann

### 3.1 Equação do Calor com Isolamento Térmico

> [!definition] **Equação do Calor com Neumann:**
> 
> $$ \frac{\partial u}{\partial t} = k \frac{\partial^2 u}{\partial x^2}, \quad 0 < x < L, \quad t > 0 $$
> 
> **Condições de Neumann (isolamento):**
> $$ \frac{\partial u}{\partial x}(0, t) = 0, \quad \frac{\partial u}{\partial x}(L, t) = 0 $$
> 
> **Condição inicial:**
> $$ u(x, 0) = f(x) $$

> [!note] **Significado físico:**
> Extremidades isoladas termicamente → **nenhum fluxo de calor** nas bordas.

**Conservação de energia:**
$$ \int_0^L u(x,t) \, dx = \text{constante} = \int_0^L f(x) \, dx $$

---

### 3.2 Discretização de Neumann na Equação do Calor

> [!example] **Aproximação da condição $u_x(0,t)=0$:**
> 
> **Ordem 1 (diferença progressiva):**
> $$ \frac{u_1^n - u_0^n}{\Delta x} = 0 \Rightarrow u_0^n = u_1^n $$
> 
> **Ordem 2 (ponto fantasma):**
> $$ \frac{u_1^n - u_{-1}^n}{2\Delta x} = 0 \Rightarrow u_{-1}^n = u_1^n $$
> 
> Aplicando a EDO no ponto $i=0$:
> $$ u_0^{n+1} = u_0^n + \alpha (u_{-1}^n - 2u_0^n + u_1^n) $$
> $$ u_0^{n+1} = u_0^n + \alpha (u_1^n - 2u_0^n + u_1^n) = u_0^n + \alpha (2u_1^n - 2u_0^n) $$
> $$ u_0^{n+1} = u_0^n + 2\alpha (u_1^n - u_0^n) $$

---

### 3.3 Implementação do Calor com Neumann

> [!code] **Código da Equação do Calor com Condições de Neumann**

```python
def calor_neumann(L, T_max, k, f, nx, nt):
    """
    Resolve a equação do calor com condições de Neumann (isolamento)
    u_t = k u_xx
    u_x(0,t)=0, u_x(L,t)=0
    u(x,0)=f(x)
    """
    dx = L / (nx - 1)
    dt = T_max / nt
    x = np.linspace(0, L, nx)
    
    alpha = k * dt / dx**2
    
    if alpha > 0.5:
        print(f"Aviso: alpha = {alpha:.3f} > 0.5. Método instável!")
    
    u = np.zeros((nt, nx))
    u[0, :] = f(x)
    
    for n in range(nt - 1):
        # Pontos internos
        for i in range(1, nx-1):
            u[n+1, i] = u[n, i] + alpha * (u[n, i-1] - 2*u[n, i] + u[n, i+1])
        
        # Condições de Neumann (ponto fantasma, ordem 2)
        # Extremidade esquerda: u_x=0 => u_{-1} = u_1
        u[n+1, 0] = u[n, 0] + 2*alpha * (u[n, 1] - u[n, 0])
        
        # Extremidade direita: u_x=0 => u_{N+1} = u_{N-1}
        u[n+1, -1] = u[n, -1] + 2*alpha * (u[n, -2] - u[n, -1])
    
    return x, u

# Parâmetros
L = 1.0
T_max = 0.5
k = 0.01

def f_inicial(x):
    # Temperatura inicial: pico no centro
    return np.exp(-((x - 0.5)/0.1)**2)

nx, nt = 51, 500
x, u = calor_neumann(L, T_max, k, f_inicial, nx, nt)

# Verificação da conservação de energia
energia_inicial = np.trapz(u[0, :], x)
energia_final = np.trapz(u[-1, :], x)
print(f"Energia inicial: {energia_inicial:.6f}")
print(f"Energia final:   {energia_final:.6f}")
print(f"Conservação:     {(energia_final/energia_inicial - 1)*100:.2e}%")

# Visualização
plt.figure(figsize=(12, 5))

plt.subplot(1, 2, 1)
for t in [0, 0.1, 0.2, 0.3, 0.4, 0.5]:
    idx = int(t / T_max * nt)
    plt.plot(x, u[idx], label=f't = {t:.1f}s')
plt.xlabel('Posição x')
plt.ylabel('Temperatura u(x,t)')
plt.title('Calor com Neumann (bordas isoladas)')
plt.legend()
plt.grid(True)

plt.subplot(1, 2, 2)
energias = [np.trapz(u[n, :], x) for n in range(0, nt, 10)]
plt.plot(np.linspace(0, T_max, len(energias)), energias, 'b-')
plt.xlabel('Tempo t')
plt.ylabel('Energia total')
plt.title('Conservação da energia')
plt.grid(True)

plt.tight_layout()
plt.show()
```

---

### 3.4 Equação da Onda com Neumann (Extremidade Livre)

> [!definition] **Equação da Onda com Neumann:**
> 
> $$ \frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}, \quad 0 < x < L, \quad t > 0 $$
> 
> **Condições de Neumann (extremidades livres):**
> $$ \frac{\partial u}{\partial x}(0, t) = 0, \quad \frac{\partial u}{\partial x}(L, t) = 0 $$
> 
> **Condições iniciais:**
> $$ u(x, 0) = f(x), \quad u_t(x, 0) = g(x) $$

> [!note] **Significado físico:**
> Corda com extremidades livres para deslizar verticalmente (sem força nas pontas).

---

### 3.5 Implementação da Onda com Neumann

> [!code] **Código da Equação da Onda com Neumann**

```python
def onda_neumann(L, T_max, c, f, g, nx, nt):
    """
    Resolve a equação da onda com condições de Neumann
    u_tt = c^2 u_xx
    u_x(0,t)=0, u_x(L,t)=0
    u(x,0)=f(x), u_t(x,0)=g(x)
    """
    dx = L / (nx - 1)
    dt = T_max / nt
    x = np.linspace(0, L, nx)
    
    C = c * dt / dx
    if C > 1:
        print(f"Aviso: CFL = {C:.3f} > 1. Método instável!")
    
    u = np.zeros((nt, nx))
    u[0, :] = f(x)
    
    # Primeiro passo usando u_t(x,0)=g(x)
    u[1, 0] = u[0, 0] + dt * g(x[0]) + (C**2/2) * (u[0, 0] - 2*u[0, 0] + u[0, 1])
    for i in range(1, nx-1):
        u[1, i] = u[0, i] + dt * g(x[i]) + (C**2/2) * (u[0, i-1] - 2*u[0, i] + u[0, i+1])
    u[1, -1] = u[0, -1] + dt * g(x[-1]) + (C**2/2) * (u[0, -2] - 2*u[0, -1] + u[0, -1])
    
    # Condições de Neumann para t=dt
    u[1, 0] = u[1, 1]      # u_x=0 => u0 = u1
    u[1, -1] = u[1, -2]    # u_x=0 => uN = u{N-1}
    
    # Evolução temporal
    for n in range(1, nt-1):
        for i in range(1, nx-1):
            u[n+1, i] = 2*u[n, i] - u[n-1, i] + C**2 * (u[n, i-1] - 2*u[n, i] + u[n, i+1])
        
        # Condições de Neumann (u_x=0) => u0 = u1, uN = u{N-1}
        # Método do ponto fantasma
        u[n+1, 0] = u[n+1, 1]
        u[n+1, -1] = u[n+1, -2]
    
    return x, u

# Parâmetros
L = 1.0
T_max = 1.5
c = 1.0

def f_onda(x):
    # Forma inicial: pico no centro
    return np.exp(-((x - 0.5)/0.1)**2)

def g_onda(x):
    return np.zeros_like(x)

nx, nt = 101, 500
x, u = onda_neumann(L, T_max, c, f_onda, g_onda, nx, nt)

# Visualização
plt.figure(figsize=(10, 6))
for t in [0, 0.3, 0.6, 0.9, 1.2, 1.5]:
    idx = int(t / T_max * nt)
    plt.plot(x, u[idx], label=f't = {t:.2f}s')

plt.xlabel('Posição x')
plt.ylabel('Deslocamento u(x,t)')
plt.title('Equação da Onda com Condições de Neumann (extremidades livres)')
plt.legend()
plt.grid(True)
plt.show()
```

---

### 3.6 EDP 2D: Equação de Laplace com Neumann

> [!definition] **Laplace com Neumann:**
> 
> $$ \nabla^2 u = 0 \quad \text{em } \Omega $$
> 
> **Condição de Neumann na fronteira:**
> $$ \frac{\partial u}{\partial n} = 0 \quad \text{em } \partial\Omega $$

> [!warning] **Condição de consistência:**
> Para existir solução, é necessário que:
> $$ \int_{\partial\Omega} \frac{\partial u}{\partial n} \, dS = 0 $$
> 
> Para $\frac{\partial u}{\partial n} = 0$, isso é automaticamente satisfeito, mas a solução é **única a menos de uma constante**.

---

### 3.7 Implementação de Laplace 2D com Neumann

> [!code] **Código para Laplace 2D com Neumann**

```python
def laplace_neumann_2d(nx, ny, Lx, Ly, f_fronteira, tol=1e-6, max_iter=10000):
    """
    Resolve a equação de Laplace em 2D com condições de Neumann
    Adaptado para ter uma condição de Dirichlet em um ponto
    """
    dx = Lx / (nx - 1)
    dy = Ly / (ny - 1)
    x = np.linspace(0, Lx, nx)
    y = np.linspace(0, Ly, ny)
    
    u = np.zeros((nx, ny))
    
    # Aplicando condições de Neumann (derivada = f_fronteira)
    # Vamos usar um ponto fixo para unicidade (u[0,0]=0)
    u[0, 0] = 0
    
    # Método de Gauss-Seidel
    for _ in range(max_iter):
        u_old = u.copy()
        
        for i in range(nx):
            for j in range(ny):
                if (i == 0 and j == 0):  # Ponto fixado
                    continue
                
                # Contagem de vizinhos válidos
                soma = 0
                count = 0
                
                # Vizinhos internos ou com Neumann
                if i > 0:
                    soma += u[i-1, j]
                    count += 1
                else:  # Neumann na borda esquerda (x=0)
                    # u_x(0,y)=0 => u[-1,j] = u[1,j]
                    soma += u[1, j]
                    count += 1
                
                if i < nx-1:
                    soma += u[i+1, j]
                    count += 1
                else:  # Neumann na borda direita (x=Lx)
                    soma += u[nx-2, j]
                    count += 1
                
                if j > 0:
                    soma += u[i, j-1]
                    count += 1
                else:  # Neumann na borda inferior (y=0)
                    soma += u[i, 1]
                    count += 1
                
                if j < ny-1:
                    soma += u[i, j+1]
                    count += 1
                else:  # Neumann na borda superior (y=Ly)
                    soma += u[i, ny-2]
                    count += 1
                
                if count > 0:
                    u[i, j] = soma / count
        
        erro = np.max(np.abs(u - u_old))
        if erro < tol:
            print(f"Convergência em {_+1} iterações. Erro: {erro:.2e}")
            break
    
    return x, y, u

# Parâmetros
Lx, Ly = 1.0, 1.0
nx, ny = 31, 31

x, y, u = laplace_neumann_2d(nx, ny, Lx, Ly, None)

# Visualização
plt.figure(figsize=(10, 8))
X, Y = np.meshgrid(x, y)
plt.contourf(X, Y, u.T, levels=20, cmap='viridis')
plt.colorbar(label='u(x,y)')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Equação de Laplace 2D - Condições de Neumann (todas as bordas)')
plt.show()
```

---

## 4. Comparação: Neumann na EDO vs EDP

| Característica | EDO com Neumann | EDP com Neumann |
|----------------|----------------|-----------------|
| **Unicidade** | Solução única a menos de constante | Solução única a menos de constante |
| **Consistência** | Condições devem ser compatíveis | Fluxo total deve ser zero |
| **Implementação** | Ponto fantasma ou diferenças de 1ª ordem | Ponto fantasma |
| **Matriz** | Simplesmente singular (uma dimensão nula) | Singular |
| **Fixaçãoda constante** | Adicionar condição extra (ex: u(0)=0) | Adicionar ponto fixo |

---

## 5. Exercícios Propostos

> [!question] **Exercício 1 (EDO)**
> Resolva $y''(x) = -4$, com $y'(0)=2$, $y'(2)= -6$. Verifique a consistência.

> [!question] **Exercício 2 (EDP 1D)**
> Simule a equação do calor com $u_x(0,t)=0$ e $u_x(1,t)=\text{sen}(t)$ (fluxo variável).

> [!question] **Exercício 3 (EDP 2D)**
> Implemente a equação de Laplace com Neumann em um retângulo, mas com Dirichlet em uma das bordas.

> [!question] **Exercício 4 (Teórico)**
> Explique por que a matriz do sistema para um PVC com duas condições de Neumann é singular.

> [!question] **Exercício 5 (Código)**
> Modifique o código da equação da onda para Neumann usando diferença centrada de ordem 2.

---

## 6. Tabela Resumo

> [!summary] **Resumo das Condições de Neumann**

| Método | Fórmula | Ordem | Quando usar |
|--------|---------|-------|-------------|
| **Diferença progressiva** | $\frac{y_1 - y_0}{h} = \alpha$ | $O(h)$ | Simplicidade, extremidade esquerda |
| **Diferença regressiva** | $\frac{y_n - y_{n-1}}{h} = \beta$ | $O(h)$ | Simplicidade, extremidade direita |
| **Ponto fantasma (1D)** | $u_0^{n+1} = u_0^n + 2\alpha(u_1^n - u_0^n)$ | $O(h^2)$ | Equação do calor/onda |
| **Ponto fantasma (EDO)** | $y_{-1} = y_1 - 2h\alpha$ | $O(h^2)$ | EDOs de segunda ordem |
| **Média dos vizinhos (2D)** | $u_{0,j} = u_{1,j}$ | $O(h^2)$ | Laplace com Neumann |

---

## Conclusão

> [!success] **Resumo Final**
> 
> As **condições de Neumann** especificam o valor da derivada na fronteira:
> - São fisicamente associadas a **fluxos** ou **forças**
> - Em EDOs, duas condições de Neumann levam a **matriz singular**
> - O método do **ponto fantasma** fornece precisão $O(h^2)$
> - Em EDPs, representam **isolamento** (fluxo zero) ou fluxo prescrito
> - A solução é **única a menos de uma constante** (a menos que fixada)
