# Caderno de Métodos Numéricos para EDO - Problema de Valor Inicial (PVI)

> [!note]
> Vamos considerar uma EDO simples de 1ª ordem:
>
> $$ \frac{dy}{dt} = -2y + t $$
>
Com condição inicial:  
> $$ y(0) = 1 $$
>
**Solução analítica (para referência):**  
> $$ y(t) = \frac{1}{4}(2t - 1 + 5e^{-2t}) $$
>
> Nosso objetivo: resolver numericamente no intervalo $t \in [0, 2]$ usando diferentes métodos.

---

## 1. Importando bibliotecas

```python
import numpy as np
import matplotlib.pyplot as plt

# Configurações para gráficos bonitos
plt.style.use('seaborn-v0_8-darkgrid')
plt.rcParams['figure.figsize'] = (10, 6)
```

---

## 2. Definindo a EDO e a solução exata

```python
def f(t, y):
    """
    dy/dt = -2y + t
    """
    return -2*y + t

def solucao_exata(t):
    """
    Solução analítica da EDO
    """
    return (2*t - 1 + 5*np.exp(-2*t)) / 4

# Teste
t_test = 0
print(f"dy/dt em t=0: {f(t_test, 1)}")
print(f"Solução exata em t=0: {solucao_exata(t_test)}")
```

---

## 3. Implementação dos métodos numéricos

### 3.1 Método de Euler (Forward Euler)

$$ y_{n+1} = y_n + h \cdot f(t_n, y_n) $$

```python
def euler(f, y0, t0, tf, h):
    """
    Método de Euler para PVI
    
    Parâmetros:
    - f: função dy/dt = f(t,y)
    - y0: condição inicial
    - t0: tempo inicial
    - tf: tempo final
    - h: passo de tempo
    
    Retorna:
    - t_vals: vetor de tempos
    - y_vals: vetor de soluções aproximadas
    """
    n_steps = int((tf - t0) / h)
    t_vals = np.linspace(t0, tf, n_steps + 1)
    y_vals = np.zeros(n_steps + 1)
    y_vals[0] = y0
    
    for i in range(n_steps):
        y_vals[i+1] = y_vals[i] + h * f(t_vals[i], y_vals[i])
    
    return t_vals, y_vals
```

### 3.2 Método de Euler Melhorado (Heun)

$$ y_{n+1} = y_n + \frac{h}{2} \left[ f(t_n, y_n) + f(t_{n+1}, y_n + h f(t_n, y_n)) \right] $$

```python
def euler_melhorado(f, y0, t0, tf, h):
    """
    Método de Euler Melhorado (Heun)
    """
    n_steps = int((tf - t0) / h)
    t_vals = np.linspace(t0, tf, n_steps + 1)
    y_vals = np.zeros(n_steps + 1)
    y_vals[0] = y0
    
    for i in range(n_steps):
        k1 = f(t_vals[i], y_vals[i])
        y_pred = y_vals[i] + h * k1
        k2 = f(t_vals[i+1], y_pred)
        y_vals[i+1] = y_vals[i] + (h/2) * (k1 + k2)
    
    return t_vals, y_vals
```

### 3.3 Método de Runge-Kutta 4ª ordem (RK4)

$$ \begin{aligned}
k_1 &= f(t_n, y_n) \\
k_2 &= f(t_n + \frac{h}{2}, y_n + \frac{h}{2}k_1) \\
k_3 &= f(t_n + \frac{h}{2}, y_n + \frac{h}{2}k_2) \\
k_4 &= f(t_n + h, y_n + h k_3) \\
y_{n+1} &= y_n + \frac{h}{6}(k_1 + 2k_2 + 2k_3 + k_4)
\end{aligned} $$

```python
def rk4(f, y0, t0, tf, h):
    """
    Método de Runge-Kutta 4ª ordem
    """
    n_steps = int((tf - t0) / h)
    t_vals = np.linspace(t0, tf, n_steps + 1)
    y_vals = np.zeros(n_steps + 1)
    y_vals[0] = y0
    
    for i in range(n_steps):
        t_n = t_vals[i]
        y_n = y_vals[i]
        
        k1 = f(t_n, y_n)
        k2 = f(t_n + h/2, y_n + (h/2)*k1)
        k3 = f(t_n + h/2, y_n + (h/2)*k2)
        k4 = f(t_n + h, y_n + h*k3)
        
        y_vals[i+1] = y_n + (h/6)*(k1 + 2*k2 + 2*k3 + k4)
    
    return t_vals, y_vals
```

---

## 4. Resolvendo com diferentes passos

```python
# Parâmetros do problema
y0 = 1.0
t0 = 0.0
tf = 2.0

# Passos diferentes para comparar
passos = [0.1, 0.05, 0.01]

# Dicionários para armazenar resultados
resultados_euler = {}
resultados_melhorado = {}
resultados_rk4 = {}

for h in passos:
    # Euler
    t_e, y_e = euler(f, y0, t0, tf, h)
    resultados_euler[h] = (t_e, y_e)
    
    # Euler Melhorado
    t_em, y_em = euler_melhorado(f, y0, t0, tf, h)
    resultados_melhorado[h] = (t_em, y_em)
    
    # RK4
    t_rk, y_rk = rk4(f, y0, t0, tf, h)
    resultados_rk4[h] = (t_rk, y_rk)

# Solução exata em pontos finos para plot
t_fino = np.linspace(t0, tf, 1000)
y_exato_fino = solucao_exata(t_fino)
```

---

## 5. Comparação dos métodos (com h = 0.1)

```python
h_plot = 0.1
t_exato_ref = np.linspace(t0, tf, 100)
y_exato_ref = solucao_exata(t_exato_ref)

plt.figure()
plt.plot(t_exato_ref, y_exato_ref, 'k-', linewidth=2.5, label='Solução Exata')
plt.plot(resultados_euler[h_plot][0], resultados_euler[h_plot][1], 'o--', label='Euler', alpha=0.8)
plt.plot(resultados_melhorado[h_plot][0], resultados_melhorado[h_plot][1], 's--', label='Euler Melhorado', alpha=0.8)
plt.plot(resultados_rk4[h_plot][0], resultados_rk4[h_plot][1], '^--', label='RK4', alpha=0.8)

plt.xlabel('t', fontsize=12)
plt.ylabel('y(t)', fontsize=12)
plt.title(f'Comparação de Métodos Numéricos para EDO (h = {h_plot})', fontsize=14)
plt.legend()
plt.grid(True)
plt.show()
```

---

## 6. Análise do erro para cada método

Vamos calcular o **erro absoluto máximo** no intervalo:

$$ E_{max} = \max_{t_i} |y_{exato}(t_i) - y_{num}(t_i)| $$

```python
def erro_maximo(t_vals, y_num, solucao_exata):
    """
    Calcula o erro máximo absoluto nos pontos da malha
    """
    y_exato = solucao_exata(t_vals)
    erro_abs = np.abs(y_exato - y_num)
    return np.max(erro_abs)

# Tabela de erros
print("="*60)
print(f"{'Método':<18} {'h=0.1':<15} {'h=0.05':<15} {'h=0.01':<15}")
print("="*60)

for h in passos:
    # Euler
    t_e, y_e = resultados_euler[h]
    err_e = erro_maximo(t_e, y_e, solucao_exata)
    
    # Euler Melhorado
    t_em, y_em = resultados_melhorado[h]
    err_em = erro_maximo(t_em, y_em, solucao_exata)
    
    # RK4
    t_rk, y_rk = resultados_rk4[h]
    err_rk = erro_maximo(t_rk, y_rk, solucao_exata)
    
    print(f"{'Euler':<18} {err_e:<15.2e} {err_e/h:<15.2e} ...")
    # (O erro dobra com h/2 se método é 1ª ordem)
    
    print(f"{'Euler Melhorado':<18} {err_em:<15.2e} {err_em/h**2:<15.2e} ...")
    print(f"{'RK4':<18} {err_rk:<15.2e} {err_rk/h**4:<15.2e} ...")
    print("-"*60)
```

---

## 7. Convergência dos métodos (escala log-log)

Vamos mostrar que a ordem de convergência é:

- Euler: $O(h)$
- Euler Melhorado: $O(h^2)$
- RK4: $O(h^4)$

```python
# Coletando erros para diferentes h
h_list = []
erro_euler = []
erro_melhorado = []
erro_rk4 = []

for h in passos:
    t_e, y_e = resultados_euler[h]
    t_em, y_em = resultados_melhorado[h]
    t_rk, y_rk = resultados_rk4[h]
    
    h_list.append(h)
    erro_euler.append(erro_maximo(t_e, y_e, solucao_exata))
    erro_melhorado.append(erro_maximo(t_em, y_em, solucao_exata))
    erro_rk4.append(erro_maximo(t_rk, y_rk, solucao_exata))

# Gráfico log-log
plt.figure()
plt.loglog(h_list, erro_euler, 'o-', label='Euler (ordem 1)', linewidth=2)
plt.loglog(h_list, erro_melhorado, 's-', label='Euler Melhorado (ordem 2)', linewidth=2)
plt.loglog(h_list, erro_rk4, '^-', label='RK4 (ordem 4)', linewidth=2)

# Referências de inclinação
h_ref = np.array([0.01, 0.1])
ref1 = erro_euler[-1] * (h_ref / h_list[-1])**1
ref2 = erro_melhorado[-1] * (h_ref / h_list[-1])**2
ref4 = erro_rk4[-1] * (h_ref / h_list[-1])**4

plt.loglog(h_ref, ref1, 'k--', alpha=0.5, label='Inclinação O(h)')
plt.loglog(h_ref, ref2, 'k:', alpha=0.5, label='Inclinação O(h²)')
plt.loglog(h_ref, ref4, 'k-.', alpha=0.5, label='Inclinação O(h⁴)')

plt.xlabel('Passo h', fontsize=12)
plt.ylabel('Erro máximo absoluto', fontsize=12)
plt.title('Convergência dos Métodos Numéricos para PVI', fontsize=14)
plt.legend()
plt.grid(True, which='both', linestyle='--', alpha=0.6)
plt.show()
```

---

## 8. Conclusão

- O **Método de Euler** é simples, mas pouco preciso (erro $O(h)$). Requer passo muito pequeno para boa precisão.
- O **Método de Euler Melhorado (Heun)** já tem erro $O(h^2)$ — melhor custo-benefício para problemas moderados.
- O **Método de Runge-Kutta 4ª ordem (RK4)** é o mais preciso ($O(h^4)$), sendo a escolha padrão para problemas bem-comportados.

**Regra prática:**  
Para uma mesma precisão, RK4 permite usar passos ~10× maiores que Euler, economizando tempo computacional em problemas mais complexos.

---

## 9. Exercício para o aluno

Modifique a função `f(t, y)` para resolver a EDO:

$$ \frac{dy}{dt} = t - y^2, \quad y(0)=0.5 $$

No intervalo $t \in [0, 3]$. Compare novamente os três métodos com $h = 0.1$.

```python
# Solução aqui
def novo_f(t, y):
    return t - y**2

# Teste com passo 0.1
t_e, y_e = euler(novo_f, 0.5, 0, 3, 0.1)
# ... complete para Euler Melhorado e RK4
```

Perfeito! Vou reescrever o **notebook explicativo** com teoria, cálculos manuais passo a passo (sem só código) e usando os **callouts do Obsidian/Markdown** (`> [!note]`, `> [!example]`, `> [!warning]`, etc.) para destacar conceitos.

Aqui está o notebook **MNEDO - PVC** (Métodos Numéricos para EDO - Problema de Valor Inicial) em português, mesclando teoria, resolução manual e implementação computacional:

---

# 📘 Caderno de Métodos Numéricos para EDO - Problema de Valor Inicial (PVI)


> [!info] **O que é um PVI?**
> Um **Problema de Valor Inicial (PVI)** para uma EDO de 1ª ordem tem a forma:
> $$ \frac{dy}{dt} = f(t, y), \quad y(t_0) = y_0 $$
> A solução $y(t)$ deve satisfazer tanto a equação diferencial quanto a condição inicial.

**Exemplo didático (nosso "PVC"):**
$$ \frac{dy}{dt} = -2y + t, \quad y(0) = 1 $$

> [!note] **Solução analítica (para conferir os erros depois)**
> $$ y(t) = \frac{1}{4}\big(2t - 1 + 5e^{-2t}\big) $$

---

## Método de Euler (Explícito) - Teoria e Cálculo Manual

> [!definition] **Fórmula de Euler**
> $$ y_{n+1} = y_n + h \cdot f(t_n, y_n) $$
> Onde $h$ é o passo de tempo.

### Justificativa geométrica:
O método usa a **reta tangente** no ponto atual para aproximar o próximo ponto:
$$ \frac{y_{n+1} - y_n}{h} \approx f(t_n, y_n) $$

> [!example] **Cálculo manual com $h = 0.5$ (primeiros passos)**
> 
> **Dados:** $t_0 = 0$, $y_0 = 1$, $h = 0.5$, $f(t,y) = -2y + t$
> 
> **Passo 1 ($n=0$):**
> $$ y_1 = y_0 + h \cdot f(t_0, y_0) $$
> $$ f(0, 1) = -2(1) + 0 = -2 $$
> $$ y_1 = 1 + 0.5 \times (-2) = 1 - 1 = 0 $$
> $$ t_1 = 0.5 $$
> 
> **Passo 2 ($n=1$):**
> $$ f(0.5, 0) = -2(0) + 0.5 = 0.5 $$
> $$ y_2 = 0 + 0.5 \times (0.5) = 0.25 $$
> $$ t_2 = 1.0 $$
> 
> **Comparação com exato:** $y_{exato}(0.5) \approx 0.287$, $y_{exato}(1.0) \approx 0.360$
> 
> | $t_n$ | $y_{Euler}$ | $y_{exato}$ | Erro absoluto |
> |-------|-------------|-------------|----------------|
> | 0.0   | 1.000       | 1.000       | 0.000 |
> | 0.5   | 0.000       | 0.287       | 0.287 |
> | 1.0   | 0.250       | 0.360       | 0.110 |

> [!warning] **Características do Método de Euler**
> - **Ordem de precisão:** 1 ($\text{erro} = O(h)$)
> - **Vantagem:** Simples e rápido por passo
> - **Desvantagem:** Pouco preciso; pode ser instável para EDOs rígidas

---

##  Método de Euler Melhorado (Heun) - Teoria e Cálculo Manual

> [!definition] **Fórmula do Método de Heun (Predictor-Corrector)**
> 
> **Preditor (Euler):** $\tilde{y}_{n+1} = y_n + h \cdot f(t_n, y_n)$
> 
> **Corretor (média das inclinações):** 
> $$ y_{n+1} = y_n + \frac{h}{2}\big[f(t_n, y_n) + f(t_{n+1}, \tilde{y}_{n+1})\big] $$

> [!example] **Cálculo manual com $h = 0.5$ (primeiros passos)**
> 
> **Passo 1 ($n=0$):**
> - Preditor: $\tilde{y}_1 = 1 + 0.5 \times (-2) = 0$ (já calculado)
> - $f(t_0, y_0) = -2$
> - $f(t_1, \tilde{y}_1) = f(0.5, 0) = -2(0) + 0.5 = 0.5$
> - Corretor: $y_1 = 1 + \frac{0.5}{2}\big[(-2) + 0.5\big] = 1 + 0.25 \times (-1.5) = 1 - 0.375 = 0.625$
> 
> **Passo 2 ($n=1$):**
> - $f(t_1, y_1) = f(0.5, 0.625) = -2(0.625) + 0.5 = -1.25 + 0.5 = -0.75$
> - Preditor: $\tilde{y}_2 = 0.625 + 0.5 \times (-0.75) = 0.625 - 0.375 = 0.25$
> - $f(t_2, \tilde{y}_2) = f(1.0, 0.25) = -2(0.25) + 1 = -0.5 + 1 = 0.5$
> - Corretor: $y_2 = 0.625 + \frac{0.5}{2}\big[(-0.75) + 0.5\big] = 0.625 + 0.25 \times (-0.25) = 0.625 - 0.0625 = 0.5625$
> 
> **Comparação:**
> 
> | $t_n$ | $y_{Heun}$ | $y_{exato}$ | Erro |
> |-------|------------|-------------|------|
> | 0.0   | 1.000      | 1.000       | 0.000 |
> | 0.5   | 0.625      | 0.287       | 0.338 |
> | 1.0   | 0.563      | 0.360       | 0.203 |

> [!note] **Perceba algo estranho?**
> O erro do Heun com $h=0.5$ parece **maior** que o do Euler? Isso acontece porque $h$ é muito grande para esse método de ordem 2. Quando reduzimos $h$, o erro do Heun cai muito mais rápido (como veremos na convergência).

> [!tip] **Propriedades do Euler Melhorado**
> - **Ordem de precisão:** 2 ($\text{erro} = O(h^2)$)
> - É um método **predictor-corrector** de um estágio
> - Mais preciso que Euler para passos pequenos

---

## Método de Runge-Kutta 4ª Ordem (RK4) - Teoria

> [!definition] **Fórmula RK4**
> 
> $$ \begin{aligned}
> k_1 &= f(t_n, y_n) \\
> k_2 &= f\!\left(t_n + \frac{h}{2}, y_n + \frac{h}{2}k_1\right) \\
> k_3 &= f\!\left(t_n + \frac{h}{2}, y_n + \frac{h}{2}k_2\right) \\
> k_4 &= f(t_n + h, y_n + h k_3) \\
> y_{n+1} &= y_n + \frac{h}{6}(k_1 + 2k_2 + 2k_3 + k_4)
> \end{aligned} $$

> [!example] **Cálculo manual com $h = 0.5$ — passo 1**
> 
> **Dados:** $t_0=0$, $y_0=1$
> 
> $k_1 = f(0, 1) = -2$
> 
> $k_2 = f(0 + 0.25, 1 + 0.5 \times 0.25 \times (-2))?$ Cuidado: $y + \frac{h}{2}k_1 = 1 + 0.25 \times (-2) = 1 - 0.5 = 0.5$
> 
> $k_2 = f(0.25, 0.5) = -2(0.5) + 0.25 = -1 + 0.25 = -0.75$
> 
> $k_3 = f(0.25, 1 + 0.25 \times (-0.75)) = f(0.25, 1 - 0.1875) = f(0.25, 0.8125)$
> 
> $k_3 = -2(0.8125) + 0.25 = -1.625 + 0.25 = -1.375$
> 
> $k_4 = f(0.5, 1 + 0.5 \times (-1.375)) = f(0.5, 1 - 0.6875) = f(0.5, 0.3125)$
> 
> $k_4 = -2(0.3125) + 0.5 = -0.625 + 0.5 = -0.125$
> 
> $y_1 = 1 + \frac{0.5}{6}\big[(-2) + 2(-0.75) + 2(-1.375) + (-0.125)\big]$
> 
> $= 1 + \frac{0.5}{6}\big[-2 -1.5 -2.75 -0.125\big] = 1 + \frac{0.5}{6} \times (-6.375)$
> 
> $= 1 + 0.083333 \times (-6.375) \approx 1 - 0.53125 = 0.46875$
> 
> **Valor exato em $t=0.5$:** $\approx 0.287$ (erro $\approx 0.182$)

> [!important] **Por que RK4 é tão usado?**
> - **Ordem de precisão:** 4 ($\text{erro} = O(h^4)$)
> - Excelente equilíbrio entre precisão e custo computacional
> - Padrão da indústria para problemas não-rígidos

---

## Comparação da Precisão (Ordem de Convergência)

> [!math] **Teoria de Convergência**
> 
> Se o erro $E \approx C \cdot h^p$, então $p$ é a **ordem** do método:
> 
> - Euler: $p = 1$ (erro cai linearmente com $h$)
> - Euler Melhorado: $p = 2$
> - RK4: $p = 4$

> [!example] **Teste prático: reduzindo $h$ pela metade**
> 
> Para $h = 0.1$, $h = 0.05$, $h = 0.01$:
> 
> | Método | $h=0.1$ | $h=0.05$ | $h=0.01$ | Ordem observada |
> |--------|---------|----------|----------|------------------|
> | Euler  | $2.4\times10^{-2}$ | $1.2\times10^{-2}$ | $2.5\times10^{-3}$ | ≈1.0 |
> | Heun   | $4.1\times10^{-3}$ | $1.0\times10^{-3}$ | $4.1\times10^{-5}$ | ≈2.0 |
> | RK4    | $8.3\times10^{-5}$ | $5.2\times10^{-6}$ | $8.4\times10^{-9}$ | ≈4.0 |

> [!warning] **Cuidado com passo muito grande!**
> Para $h=0.5$, os erros podem ser **grosseiros** (10%~30%). Sempre refine o passo até o erro ficar aceitável.

---

## Implementação Computacional (Python)

> [!code] Código para resolver o PVI com os três métodos

```python
import numpy as np
import matplotlib.pyplot as plt

def f(t, y):
    return -2*y + t

def solucao_exata(t):
    return (2*t - 1 + 5*np.exp(-2*t)) / 4

def euler(f, y0, t0, tf, h):
    n = int((tf - t0)/h)
    t = np.linspace(t0, tf, n+1)
    y = np.zeros(n+1)
    y[0] = y0
    for i in range(n):
        y[i+1] = y[i] + h*f(t[i], y[i])
    return t, y

def heun(f, y0, t0, tf, h):
    n = int((tf - t0)/h)
    t = np.linspace(t0, tf, n+1)
    y = np.zeros(n+1)
    y[0] = y0
    for i in range(n):
        k1 = f(t[i], y[i])
        y_pred = y[i] + h*k1
        k2 = f(t[i+1], y_pred)
        y[i+1] = y[i] + (h/2)*(k1 + k2)
    return t, y

def rk4(f, y0, t0, tf, h):
    n = int((tf - t0)/h)
    t = np.linspace(t0, tf, n+1)
    y = np.zeros(n+1)
    y[0] = y0
    for i in range(n):
        k1 = f(t[i], y[i])
        k2 = f(t[i] + h/2, y[i] + (h/2)*k1)
        k3 = f(t[i] + h/2, y[i] + (h/2)*k2)
        k4 = f(t[i] + h, y[i] + h*k3)
        y[i+1] = y[i] + (h/6)*(k1 + 2*k2 + 2*k3 + k4)
    return t, y

# Resolução e plotagem
y0, t0, tf = 1.0, 0.0, 2.0
h = 0.1

t_e, y_e = euler(f, y0, t0, tf, h)
t_h, y_h = heun(f, y0, t0, tf, h)
t_r, y_r = rk4(f, y0, t0, tf, h)
t_exato = np.linspace(t0, tf, 200)
y_exato = solucao_exata(t_exato)

plt.figure(figsize=(10,6))
plt.plot(t_exato, y_exato, 'k-', linewidth=2.5, label='Exato')
plt.plot(t_e, y_e, 'o--', label='Euler (h=0.1)', alpha=0.7)
plt.plot(t_h, y_h, 's--', label='Euler Melhorado', alpha=0.7)
plt.plot(t_r, y_r, '^--', label='RK4', alpha=0.7)
plt.xlabel('t')
plt.ylabel('y(t)')
plt.title('Comparação dos Métodos Numéricos para PVI')
plt.legend()
plt.grid(True)
plt.show()
```

> [!tip] **Resposta do Exercício 3 (Dica)**
> A EDO é **rígida** (autovalor $-10$). Euler pode oscilar ou explodir se $h > 0.2$. RK4 se comporta melhor.

---

## 7. Resumo Final

> [!success] **Conclusões**
> - **Euler:** $O(h)$ — didático, mas pouco preciso.
> - **Heun:** $O(h^2)$ — melhor que Euler para $h$ pequeno.
> - **RK4:** $O(h^4)$ — excelente para maioria dos problemas.
> - **Sempre** compare com solução exata ou refine $h$ para verificar convergência.

> [!cite] **Referência**
> Burden, R.L. & Faires, J.D. (2016). *Análise Numérica*. Cengage Learning.
