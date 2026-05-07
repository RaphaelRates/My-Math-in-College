
# 📘 Caderno de Métodos Numéricos para EDO - Problema de Valor de Contorno (PVC)

## MNEDO - PVC: Problema de Valor de Contorno

> [!info] **O que é um Problema de Valor de Contorno (PVC)?**
> Enquanto o PVI tem todas as condições no mesmo ponto, o **PVC** tem condições especificadas em **dois pontos diferentes**:
> 
> $$ \begin{cases}
> y''(x) = f(x, y, y') \\[1em]
> y(a) = \alpha \\[0.5em]
> y(b) = \beta
> \end{cases} $$
> 
> onde $x \in [a, b]$ e $\alpha, \beta$ são valores conhecidos.

**Exemplo didático (nosso PVC clássico):**
$$ y''(x) = -y(x) \quad \text{com} \quad y(0) = 0,\; y(\pi/2) = 1 $$

> [!note] **Solução analítica**
> $$ y(x) = \sin(x) $$
> (Verifique: $\sin''(x) = -\sin(x)$, $\sin(0)=0$, $\sin(\pi/2)=1$)
> Normalmente divididas em:
> - [[MNEDO - Condições de DIrichlet]]
> - [[MNEDO - Condições de Neumman]]


---

## Discretização e Método das Diferenças Finitas

> [!definition] **Aproximações das Derivadas por Diferenças Finitas**
> 
> Usando malha com $n+1$ pontos: $x_i = a + i \cdot h$, onde $h = \frac{b-a}{n}$
> 
> **Primeira derivada (central):** 
> $$ y'(x_i) \approx \frac{y_{i+1} - y_{i-1}}{2h} $$
> 
> **Segunda derivada (central):** 
> $$ y''(x_i) \approx \frac{y_{i-1} - 2y_i + y_{i+1}}{h^2} $$

> [!example] **Aplicando ao nosso PVC**
> 
> $y''(x) = -y(x)$ se torna:
> 
> $$ \frac{y_{i-1} - 2y_i + y_{i+1}}{h^2} = -y_i $$
> 
> Multiplicando por $h^2$:
> $$ y_{i-1} - 2y_i + y_{i+1} = -h^2 y_i $$
> 
> Rearrumando:
> $$ y_{i-1} - 2y_i + y_{i+1} + h^2 y_i = 0 $$
> $$ y_{i-1} - (2 - h^2)y_i + y_{i+1} = 0 $$
> 
> Esta é uma **equação de diferenças** que relaciona três pontos consecutivos.

---

## Construção do Sistema Linear

> [!important] **Para $n$ intervalos, temos $n-1$ incógnitas internas**
> 
> Pontos: $x_0, x_1, x_2, \dots, x_n$ com $x_0 = a$, $x_n = b$
> - $y_0 = \alpha$ (conhecido)
> - $y_n = \beta$ (conhecido)
> - $y_1, y_2, \dots, y_{n-1}$ são **incógnitas**

**Equação geral para $i = 1, 2, \dots, n-1$:**
$$ y_{i-1} - (2 - h^2) y_i + y_{i+1} = 0 $$

> [!example] **Montagem manual para $n = 4$ (h = ?)**
> 
> $a=0$, $b=\pi/2 \approx 1.5708$, $n=4 \implies h = 1.5708/4 = 0.3927$
> 
> Pontos: $x_0=0$, $x_1=0.3927$, $x_2=0.7854$, $x_3=1.1781$, $x_4=1.5708$
> Conhecidos: $y_0=0$, $y_4=1$
> 
> **Equações:**
> 
> Para $i=1$: $y_0 - (2 - h^2)y_1 + y_2 = 0$
> $$ 0 - (2 - 0.1542)y_1 + y_2 = 0 $$
> $$ -1.8458 y_1 + y_2 = 0 $$
> 
> Para $i=2$: $y_1 - (2 - h^2)y_2 + y_3 = 0$
> $$ y_1 - 1.8458 y_2 + y_3 = 0 $$
> 
> Para $i=3$: $y_2 - (2 - h^2)y_3 + y_4 = 0$
> $$ y_2 - 1.8458 y_3 + 1 = 0 $$
> $$ y_2 - 1.8458 y_3 = -1 $$
> 
> **Sistema matricial:**
> 
> $$ \begin{bmatrix}
> -1.8458 & 1 & 0 \\
> 1 & -1.8458 & 1 \\
> 0 & 1 & -1.8458
> \end{bmatrix}
> \begin{bmatrix} y_1 \\ y_2 \\ y_3 \end{bmatrix} =
> \begin{bmatrix} 0 \\ 0 \\ -1 \end{bmatrix} $$

> [!tip] **Resolvendo o sistema (por substituição ou eliminação)**
> 
> Da 1ª eq: $y_2 = 1.8458 y_1$
> 
> Da 2ª eq: $y_1 - 1.8458(1.8458 y_1) + y_3 = 0$
> $$ y_1 - 3.4069 y_1 + y_3 = 0 $$
> $$ -2.4069 y_1 + y_3 = 0 \implies y_3 = 2.4069 y_1 $$
> 
> Da 3ª eq: $(1.8458 y_1) - 1.8458(2.4069 y_1) = -1$
> $$ 1.8458 y_1 - 4.443 y_1 = -1 $$
> $$ -2.5972 y_1 = -1 \implies y_1 = 0.3850 $$
> 
> Então: $y_2 = 1.8458 \times 0.3850 = 0.7106$
> $y_3 = 2.4069 \times 0.3850 = 0.9267$
> 
> **Comparação com solução exata $\sin(x)$:**
> 
> | $x_i$ | $y_{num}$ | $\sin(x_i)$ | Erro |
> |-------|-----------|-------------|------|
> | 0.3927 | 0.3850 | 0.3827 | 0.0023 |
> | 0.7854 | 0.7106 | 0.7071 | 0.0035 |
> | 1.1781 | 0.9267 | 0.9239 | 0.0028 |

> [!success] **Erro pequeno (ordem $h^2$)!** O método das diferenças finitas é $O(h^2)$.

---

## Caso Geral: PVC Linear de Segunda Ordem

> [!definition] **Forma geral de um PVC linear**
> 
> $$ y''(x) + p(x) y'(x) + q(x) y(x) = r(x) $$
> $$ y(a) = \alpha, \quad y(b) = \beta $$
> 
> **Discretização:** No ponto $x_i$:
> $$ \frac{y_{i-1} - 2y_i + y_{i+1}}{h^2} + p_i \frac{y_{i+1} - y_{i-1}}{2h} + q_i y_i = r_i $$
> 
> Multiplicando por $h^2$ e rearranjando:
> $$ \underbrace{\left(1 - \frac{h}{2}p_i\right)}_{A_i} y_{i-1} + \underbrace{\left(-2 + h^2 q_i\right)}_{B_i} y_i + \underbrace{\left(1 + \frac{h}{2}p_i\right)}_{C_i} y_{i+1} = h^2 r_i $$
> 
> Para $i = 1, 2, \dots, n-1$, com $y_0 = \alpha$, $y_n = \beta$.

> [!example] **Exemplo prático: PVC com termo de primeira derivada**
> 
> $$ y''(x) + 2y'(x) + y(x) = 0, \quad y(0)=0, \quad y(1)=1 $$
> 
> Aqui: $p(x)=2$, $q(x)=1$, $r(x)=0$
> 
> Para $n=4$ ($h=0.25$):
> - $A_i = 1 - \frac{0.25}{2} \cdot 2 = 1 - 0.25 = 0.75$
> - $B_i = -2 + (0.25)^2 \cdot 1 = -2 + 0.0625 = -1.9375$
> - $C_i = 1 + \frac{0.25}{2} \cdot 2 = 1 + 0.25 = 1.25$
> 
> Sistema para $i=1,2,3$:
> $$ 0.75 y_0 - 1.9375 y_1 + 1.25 y_2 = 0 \implies -1.9375 y_1 + 1.25 y_2 = 0 $$
> $$ 0.75 y_1 - 1.9375 y_2 + 1.25 y_3 = 0 $$
> $$ 0.75 y_2 - 1.9375 y_3 + 1.25 y_4 = 0 \implies 0.75 y_2 - 1.9375 y_3 + 1.25 = 0 $$
> 
> Resolvendo: $y_1 \approx 0.288$, $y_2 \approx 0.445$, $y_3 \approx 0.637$

---

## Implementação Computacional (Python)

> [!code] **Código para resolver PVC pelo método das diferenças finitas**

```python
import numpy as np
import matplotlib.pyplot as plt
from scipy import sparse
from scipy.sparse.linalg import spsolve

def pvc_diferencas_finitas(p, q, r, a, b, alpha, beta, n):
    """
    Resolve o PVC: y''(x) + p(x)y'(x) + q(x)y(x) = r(x)
    com y(a)=alpha, y(b)=beta usando diferenças finitas.
    
    Parâmetros:
    - p, q, r: funções de x (podem ser constantes)
    - a, b: extremos do intervalo
    - alpha, beta: condições de contorno
    - n: número de subintervalos
    
    Retorna:
    - x: vetor com os pontos da malha
    - y: vetor com a solução aproximada
    """
    h = (b - a) / n
    x = np.linspace(a, b, n+1)
    
    # Coeficientes das diagonais
    A = np.zeros(n+1)  # subdiagonal
    B = np.zeros(n+1)  # diagonal principal
    C = np.zeros(n+1)  # superdiagonal
    D = np.zeros(n+1)  # termo independente
    
    # Construção do sistema para pontos internos (i=1..n-1)
    for i in range(1, n):
        pi = p(x[i]) if callable(p) else p
        qi = q(x[i]) if callable(q) else q
        ri = r(x[i]) if callable(r) else r
        
        A[i] = 1 - (h/2) * pi
        B[i] = -2 + h**2 * qi
        C[i] = 1 + (h/2) * pi
        D[i] = h**2 * ri
    
    # Condições de contorno
    # Para i=1: A[1]*y0 + B[1]*y1 + C[1]*y2 = D[1]
    # Como y0 = alpha, levamos para o lado direito
    D[1] = D[1] - A[1] * alpha
    A[1] = 0  # eliminamos y0 da equação
    
    # Para i=n-1: A[n-1]*y_{n-2} + B[n-1]*y_{n-1} + C[n-1]*yn = D[n-1]
    # yn = beta, levamos para o lado direito
    D[n-1] = D[n-1] - C[n-1] * beta
    C[n-1] = 0
    
    # Construção da matriz tridiagonal
    main_diag = B[1:n]  # apenas pontos internos
    sup_diag = C[1:n-1]
    sub_diag = A[2:n]
    
    # Criando matriz esparsa tridiagonal
    diagonals = [sub_diag, main_diag, sup_diag]
    offsets = [-1, 0, 1]
    matriz = sparse.diags(diagonals, offsets, shape=(n-1, n-1), format='csr')
    
    # Vetor dos termos independentes (apenas pontos internos)
    b = D[1:n]  # índices 1 até n-1
    
    # Resolução do sistema
    y_interno = spsolve(matriz, b)
    
    # Montagem da solução completa (incluindo contornos)
    y = np.zeros(n+1)
    y[0] = alpha
    y[1:n] = y_interno
    y[n] = beta
    
    return x, y

# Exemplo 1: y'' = -y, y(0)=0, y(pi/2)=1
print("="*60)
print("EXEMPLO 1: y''(x) = -y(x)")
print("="*60)

def p1(x): return 0  # coeficiente de y'
def q1(x): return 1  # coeficiente de y (note: y'' + 0*y' + 1*y = 0)
def r1(x): return 0

a, b = 0, np.pi/2
alpha, beta = 0, 1

n_values = [4, 8, 16, 32]
plt.figure(figsize=(12, 8))

x_exato = np.linspace(a, b, 200)
y_exato = np.sin(x_exato)
plt.plot(x_exato, y_exato, 'k-', linewidth=2.5, label='Solução exata: sen(x)')

for n in n_values:
    x, y = pvc_diferencas_finitas(p1, q1, r1, a, b, alpha, beta, n)
    plt.plot(x, y, 'o--', label=f'n = {n} (h = { (b-a)/n :.4f})', alpha=0.7)
    
    # Calculando erro máximo
    y_exato_malha = np.sin(x)
    erro = np.max(np.abs(y_exato_malha - y))
    print(f'n = {n:3d}, h = {(b-a)/n:.5f}, erro máximo = {erro:.6f}')

plt.xlabel('x', fontsize=12)
plt.ylabel('y(x)', fontsize=12)
plt.title('PVC: y\" = -y com y(0)=0, y(π/2)=1', fontsize=14)
plt.legend()
plt.grid(True)
plt.show()
```

> [!code] **Exemplo 2: PVC com termo de primeira derivada**

```python
# Exemplo 2: y'' + 2y' + y = 0, y(0)=0, y(1)=1
print("\n" + "="*60)
print("EXEMPLO 2: y''(x) + 2y'(x) + y(x) = 0")
print("="*60)

def p2(x): return 2
def q2(x): return 1
def r2(x): return 0

a, b = 0, 1
alpha, beta = 0, 1

# Solução exata (encontrada resolvendo a equação característica)
# Equação: r^2 + 2r + 1 = 0 -> (r+1)^2 = 0 -> r = -1 (raiz dupla)
# Solução geral: y(x) = (A + Bx)e^{-x}
# Condições: y(0)=0 => A=0; y(1)=1 => B*1*e^{-1}=1 => B = e
# Solução exata: y(x) = x e^{1-x}
def sol_exata2(x):
    return x * np.exp(1 - x)

plt.figure(figsize=(12, 5))

# Subplot do erro
plt.subplot(1, 2, 1)
x_exato = np.linspace(a, b, 200)
plt.plot(x_exato, sol_exata2(x_exato), 'k-', linewidth=2.5, label='Solução exata')

for n in [5, 10, 20]:
    x, y = pvc_diferencas_finitas(p2, q2, r2, a, b, alpha, beta, n)
    plt.plot(x, y, 'o--', label=f'n = {n}', alpha=0.7)
plt.xlabel('x')
plt.ylabel('y(x)')
plt.title('Solução numérica do PVC')
plt.legend()
plt.grid(True)

# Subplot da convergência
plt.subplot(1, 2, 2)
erros = []
hs = []
for n in range(4, 50, 2):
    h = (b - a) / n
    hs.append(h)
    x, y = pvc_diferencas_finitas(p2, q2, r2, a, b, alpha, beta, n)
    y_exato_malha = sol_exata2(x)
    erro = np.max(np.abs(y_exato_malha - y))
    erros.append(erro)

plt.loglog(hs, erros, 'bo-', linewidth=2)
plt.loglog(hs, [0.1 * h**2 for h in hs], 'r--', label='O(h²)')
plt.xlabel('Passo h')
plt.ylabel('Erro máximo')
plt.title('Convergência do método')
plt.legend()
plt.grid(True)

plt.tight_layout()
plt.show()

print(f"Erro para n=10: {erros[3]:.6f}")
print(f"Erro para n=20: {erros[8]:.6f}")
print("Observe que reduzindo h pela metade, o erro cai ~4x (ordem 2)")
```

> [!code] **Exemplo 3: PVC não-linear (método da iteração)**

```python
# PVC não-linear: y'' = (3/2)y^2, y(0)=4, y(1)=1
# Resolvemos por linearização (método de Newton para EDOs)

def pvc_nao_linear_iterativo(n=20, tol=1e-6, max_iter=50):
    """
    Resolve y'' = (3/2)y^2 com y(0)=4, y(1)=1
    Usa linearização: y_{new} = y_{old} + δ
    """
    a, b = 0, 1
    alpha, beta = 4, 1
    h = (b - a) / n
    x = np.linspace(a, b, n+1)
    
    # Chute inicial (reta entre os contornos)
    y = alpha + (beta - alpha) * (x - a) / (b - a)
    
    for iter in range(max_iter):
        # Construção do sistema linearizado
        A = np.zeros((n-1, n-1))
        B = np.zeros(n-1)
        
        for i in range(1, n):
            # Equação: y_{i-1} - 2y_i + y_{i+1} = h^2 * (3/2) * y_i^2
            # Linearização: y_i^2 ≈ y_old^2 + 2*y_old*δ
            yi_old = y[i]
            
            # Coeficientes para δ (correção)
            if i > 1:
                A[i-1, i-2] = 1  # δ_{i-1}
            A[i-1, i-1] = -2 - 3 * h**2 * yi_old  # δ_i
            if i < n-1:
                A[i-1, i] = 1  # δ_{i+1}
            
            # Termo independente: -[y_{i-1} - 2y_i + y_{i+1} - (3/2)h^2 y_i^2]
            B[i-1] = -(y[i-1] - 2*yi_old + y[i+1] - (3/2)*h**2 * yi_old**2)
        
        # Ajuste para condições de contorno
        # δ_0 = 0, δ_n = 0 já estão implícitos
        
        # Resolve para δ
        try:
            delta = np.linalg.solve(A, B)
        except np.linalg.LinAlgError:
            print("Matriz singular!")
            break
        
        # Atualiza solução
        y[1:n] += delta
        
        # Verifica convergência
        if np.linalg.norm(delta, np.inf) < tol:
            print(f"Convergência em {iter+1} iterações")
            break
    else:
        print(f"Não convergiu em {max_iter} iterações")
    
    return x, y

# Testando o PVC não-linear
print("\n" + "="*60)
print("EXEMPLO 3: PVC NÃO-LINEAR y'' = (3/2)y²")
print("="*60)

x_nl, y_nl = pvc_nao_linear_iterativo(n=40)

plt.figure(figsize=(10, 6))
plt.plot(x_nl, y_nl, 'b-', linewidth=2, label='Solução numérica')

# Comparação com solução exata conhecida (y(x) = 4/(1+x)²)
y_exato_nl = 4 / (1 + x_nl)**2
plt.plot(x_nl, y_exato_nl, 'ro', markersize=3, label='Solução exata: 4/(1+x)²')

plt.xlabel('x')
plt.ylabel('y(x)')
plt.title('PVC Não-Linear: y\" = (3/2)y² com y(0)=4, y(1)=1')
plt.legend()
plt.grid(True)

erro_nl = np.max(np.abs(y_nl - y_exato_nl))
print(f"Erro máximo: {erro_nl:.2e}")
plt.show()
```

---

## Métodos de Disparo (Shooting Method)

> [!definition] **Método do Disparo para PVCs**
> 
> Transforma o PVC em um PVI, **chutando** a condição inicial faltante $y'(a) = s$ e ajustando $s$ até que $y(b) = \beta$.
> 
> Passos:
> 1. Chute inicial $s_0$
> 2. Resolva o PVI: $y'' = f(x,y,y')$, $y(a)=\alpha$, $y'(a)=s$
> 3. Calcule o erro $F(s) = y(b; s) - \beta$
> 4. Ajuste $s$ usando um método de busca (secante, Newton, bisseção)

> [!example] **Exemplo manual: método do disparo para $y'' = -y$, $y(0)=0$, $y(\pi/2)=1$**
> 
> **1º chute:** $s = 1.0$ (chute para $y'(0)$)
> 
> Resolvendo o PVI $y'' = -y$, $y(0)=0$, $y'(0)=1$:
> - Solução analítica: $y(x) = \sin(x)$
> - Em $x = \pi/2$: $y(\pi/2) = 1$ (acertamos de primeira!)
> 
> Neste caso, $s=1$ já funciona porque a solução exata é $\sin(x)$ com derivada $\cos(0)=1$.
> 
> **Caso geral (escolhendo s errado):**
> 
> Se chutarmos $s = 0.5$:
> - Solução: $y(x) = 0.5 \sin(x)$
> - Em $x = \pi/2$: $y = 0.5$ (erro = -0.5)
> 
> Se chutarmos $s = 1.5$:
> - Solução: $y(x) = 1.5 \sin(x)$
> - Em $x = \pi/2$: $y = 1.5$ (erro = +0.5)
> 
> **Ajuste por interpolação linear:**
> $$ s_{novo} = s_1 - F(s_1) \frac{s_2 - s_1}{F(s_2) - F(s_1)} $$
> 
> Com $s_1=0.5$ (erro=-0.5), $s_2=1.5$ (erro=+0.5):
> $$ s_{novo} = 0.5 - (-0.5) \times \frac{1.5 - 0.5}{0.5 - (-0.5)} = 0.5 + 0.5 \times 1 = 1.0 $$

> [!code] **Implementação do Método do Disparo**

```python
from scipy.integrate import solve_ivp
from scipy.optimize import root_scalar

def shooting_method(f, a, b, alpha, beta, n=100):
    """
    Resolve PVC y'' = f(x, y, y') usando método do disparo
    f deve retornar [y', y''] para o resolvedor de EDO
    """
    def pvi(s):
        """Resolve o PVI com y'(a)=s e retorna y(b)"""
        def edo(x, Y):
            # Y = [y, y']
            return [Y[1], f(x, Y[0], Y[1])]
        
        x_span = (a, b)
        y0 = [alpha, s]
        sol = solve_ivp(edo, x_span, y0, t_eval=[b], method='RK45')
        return sol.y[0, -1]
    
    def funcao_residuo(s):
        return pvi(s) - beta
    
    # Busca a raiz de F(s) = y(b;s) - beta
    # Primeiro, chutes iniciais
    s1, s2 = 0.0, 2.0
    F1 = funcao_residuo(s1)
    F2 = funcao_residuo(s2)
    
    # Método da secante
    for _ in range(20):
        s_new = s2 - F2 * (s2 - s1) / (F2 - F1)
        F_new = funcao_residuo(s_new)
        
        if abs(F_new) < 1e-8:
            break
        
        s1, s2 = s2, s_new
        F1, F2 = F2, F_new
    
    # Solução final com o s encontrado
    def edo_final(x, Y):
        return [Y[1], f(x, Y[0], Y[1])]
    
    x_vals = np.linspace(a, b, n+1)
    sol = solve_ivp(edo_final, (a, b), [alpha, s_new], t_eval=x_vals, method='RK45')
    
    return sol.t, sol.y[0]

# Teste: y'' = -y, y(0)=0, y(pi/2)=1
def f_exemplo(x, y, yp):
    return -y

print("\n" + "="*60)
print("MÉTODO DO DISPARO: y'' = -y")
print("="*60)

x_shoot, y_shoot = shooting_method(f_exemplo, 0, np.pi/2, 0, 1)

plt.figure(figsize=(10, 6))
plt.plot(x_shoot, y_shoot, 'bo-', label='Método do Disparo', markersize=4)
x_exato = np.linspace(0, np.pi/2, 100)
plt.plot(x_exato, np.sin(x_exato), 'r-', linewidth=2, label='Exato: sen(x)')
plt.xlabel('x')
plt.ylabel('y(x)')
plt.title('Método do Disparo para PVC Linear')
plt.legend()
plt.grid(True)
plt.show()

erro_shoot = np.max(np.abs(y_shoot - np.sin(x_shoot)))
print(f"Erro máximo: {erro_shoot:.2e}")
```

---

## Comparação dos Métodos para PVC

> [!summary] **Resumo dos Métodos para PVC**

| Método | Vantagens | Desvantagens | Ordem |
|--------|-----------|--------------|-------|
| **Diferenças Finitas** | Fácil de implementar, direto, bom para lineares | Sistema linear grande para malhas finas | $O(h^2)$ |
| **Método do Disparo** | Usa resolvedores de PVI robustos | Requer boa estimativa inicial, pode ser instável | Variável |
| **Elementos Finitos** | Mais geral, bom para geometrias complexas | Mais complexo de implementar | $O(h^p)$ |

> [!tip] **Quando usar cada método?**
> - **Lineares com matriz tridiagonal:** Diferenças Finitas (rápido)
> - **Não-lineares suaves:** Disparo + Newton (eficiente)
> - **Problemas rígidos:** Métodos implícitos ou BVP dedicados (ex: `scipy.integrate.solve_bvp`)

---

## Exemplo Avançado: Usando `scipy.solve_bvp`

> [!code] **Resolvedor profissional de PVCs do SciPy**

```python
from scipy.integrate import solve_bvp

def resolver_pvc_avancado():
    """
    Exemplo: y'' + 2y' + y = 0, y(0)=0, y(1)=1
    Usando solve_bvp do SciPy
    """
    def funcao(x, y):
        # y[0] = y, y[1] = y'
        return np.vstack((y[1], -2*y[1] - y[0]))
    
    def cond_contorno(ya, yb):
        return np.array([ya[0] - 0, yb[0] - 1])
    
    # Malha inicial
    x = np.linspace(0, 1, 10)
    # Chute inicial
    y = np.zeros((2, x.size))
    y[0] = x  # chute linear
    
    sol = solve_bvp(funcao, cond_contorno, x, y)
    
    x_fino = np.linspace(0, 1, 100)
    y_fino = sol.sol(x_fino)[0]
    
    return x_fino, y_fino

x_bvp, y_bvp = resolver_pvc_avancado()

plt.figure(figsize=(10, 6))
plt.plot(x_bvp, y_bvp, 'b-', linewidth=2, label='solve_bvp')
plt.plot(x_bvp, x_bvp * np.exp(1 - x_bvp), 'r--', label='Exato: x·e^{1-x}')
plt.xlabel('x')
plt.ylabel('y(x)')
plt.title('PVC resolvido com solve_bvp (Scipy)')
plt.legend()
plt.grid(True)
plt.show()
```

---

## Conclusão Final

> [!success] **Principais Aprendizados**
> - **PVCs** exigem técnicas diferentes de PVIs (disparo ou diferenças finitas)
> - **Diferenças Finitas** transforma o PVC em um sistema linear $A\mathbf{y} = \mathbf{b}$
> - A matriz resultante é **tridiagonal** → resolução eficiente ($O(n)$)
> - **Método do Disparo** converte o PVC em um problema de busca de raiz
> - Ambos os métodos têm **ordem $O(h^2)$** para problemas bem-comportados

> [!cite] **Referências**
> - Burden, R.L. & Faires, J.D. (2016). *Análise Numérica*. Cengage Learning.
> - Ascher, U.M. & Petzold, L.R. (1998). *Computer Methods for Ordinary Differential Equations and Differential-Algebraic Equations*. SIAM.
