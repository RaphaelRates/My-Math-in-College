
> [!NOTE] Definição
> Uma EDO de primeira ordem é dita **separável** quando elas aparecem primeiramente como
> $$y' = f(t,y)$$
> Porem podem ser escritas como:
> $$\frac{dy}{dt} = f(t)g(y)$$
> ou equivalentemente:
> $$\frac{dy}{dt} = \frac{p(t)}{q(y)}$$
## 📋 Conceito Fundamental

> [!ABSTRACT] Método de Solução
> **Separação de Variáveis**: Reescrevemos a equação de forma que todos os termos em $y$ fiquem com $dy$ e todos os termos em $t$ fiquem com $dt$:
> $$q(y)dy = p(t)dt$$
> 
> **Integração**: Integramos ambos os lados:
> $$\int q(y)dy = \int p(t)dt + C$$
> onde $C$ é a constante de integração. Assim, 
> $$y' = g(t) \cdot h(y)$$
> $$\frac{1}{h(y)} \cdot y' = g(t)$$
> E por último, integra dos dois lados
> $$ \int \frac{1}{h(y)} \cdot y' dy = \int g(t) dt$$

---

## 📚 Exemplos Resolvidos

### Exemplo 1: Crescimento Exponencial

> [!EXAMPLE] Problema Clássico
> Resolva: $\frac{dy}{dt} = ky$, onde $k$ é constante (modelo de crescimento populacional)

**Solução:**

$$\frac{dy}{dt} = ky$$
$$\frac{dy}{y} = k,dt$$
$$\int \frac{1}{y},dy = \int k,dt$$
$$\ln|y| = kt + C$$
$$y = e^{kt + C} = e^{C},e^{kt}$$
$$Definindo (A = e^{C})$$fica: 
$$y = A e^{kt}$$
### Exemplo 2: Equação Não-Linear

> [!EXAMPLE] 
> Resolva: $\frac{dy}{dx} = x·y^2$
>
**Solução:**
$$\frac{dy}{dx} = x,y^{2}$$
$$\frac{dy}{y^{2}} = x,dx$$
$$\int y^{-2},dy = \int x,dx$$
Lado esquerdo:
$$\int y^{-2},dy = -y^{-1}$$
Lado direito:
$$ \int x,dx = \frac{1}{2}x^{2} + C$$
Então:
$$-,\frac{1}{y} = \frac{1}{2}x^{2} + C$$
Multiplica por -1:
$$\frac{1}{y} = -\frac{1}{2}x^{2} + C'$$
(troquei (C' = -C), constante nova, normal)
Agora inverte:
$$y = \frac{1}{C' - \frac{1}{2}x^{2}}$$
Se quiser deixar bonito:
> $$y = \frac{1}{C - \frac{1}{2}x^{2}}$$
> ---

## Exemplo 3

> [!example] Exemplo $y' = x \cdot y^3 (1 + x^2)^-\frac{1}{2}$
> Colocando cada variável de um lado, temos:
> $$y^-3 y' = -\frac{x}{\sqrt{1 + x^2}}$$
> Depois integramos tudo:
> $$\int y^-3 y' dy = \int -\frac{x}{\sqrt{1 + x^2}} dx$$
> Para integrar, faremos por substituição, onde $u = 1 + x^2$ e o $du = 2xdx$:
> fica assim: $$-\frac{1}{2} y^-2 = \frac{1}{2} \cdot \int u^-\frac{1}{2} du$$
> $$ = \frac{1}{2} 2 \sqrt{u} + C$$
> $$ = C_{1} - 2\sqrt{1+x^{2}}$$
> 
# Equações Diferenciais Ordinárias Separáveis de Primeira Ordem

> [!NOTE] Definição
> Uma EDO de primeira ordem é dita **separável** quando pode ser escrita na forma:
> $$\frac{dy}{dt} = f(t)g(y)$$
> ou equivalentemente:
> $$\frac{dy}{dt} = \frac{p(t)}{q(y)}$$

## 📋 Conceito Fundamental

> [!ABSTRACT] Método de Solução
> **Separação de Variáveis**: 
> 1. Reescrevemos a equação separando as variáveis:
>    $$q(y)dy = p(t)dt$$
> 
> 2. **Integração**: Integramos ambos os lados:
>    $$\int q(y)dy = \int p(t)dt + C$$
>    onde $C$ é a constante de integração.
> 
> 3. **Forma alternativa**: Podemos escrever como:
>    $$\frac{1}{h(y)} \cdot \frac{dy}{dt} = g(t)$$
>    $$\int \frac{1}{h(y)} dy = \int g(t) dt$$

---

## 📚 Exemplos Resolvidos

### Exemplo 1: Crescimento Exponencial

> [!EXAMPLE] Problema Clássico
> Resolva: $\frac{dy}{dt} = ky$, onde $k$ é constante (modelo de crescimento populacional)

**Solução:**
$$
\begin{align*}
\frac{dy}{dt} &= ky \\
\frac{dy}{y} &= k\,dt \\
\int \frac{1}{y}\,dy &= \int k\,dt \\
\ln|y| &= kt + C \\
y &= e^{kt + C} = e^{C}\cdot e^{kt} \\
y &= A e^{kt} \quad \text{onde } A = e^{C}
\end{align*}
$$

### Exemplo 2: Equação Não-Linear

> [!EXAMPLE] 
> Resolva: $\frac{dy}{dx} = x \cdot y^2$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= x \cdot y^{2} \\
\frac{dy}{y^{2}} &= x\,dx \\
\int y^{-2}\,dy &= \int x\,dx \\
-y^{-1} &= \frac{1}{2}x^{2} + C \\
-\frac{1}{y} &= \frac{1}{2}x^{2} + C \\
\frac{1}{y} &= -\frac{1}{2}x^{2} - C \\
y &= \frac{1}{C' - \frac{1}{2}x^{2}} \quad \text{onde } C' = -C
\end{align*}
$$

### Exemplo 3: Equação com Raiz Quadrada

> [!EXAMPLE] 
> Resolva: $\frac{dy}{dx} = x \cdot y^3 (1 + x^2)^{-\frac{1}{2}}$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= \frac{x \cdot y^3}{\sqrt{1 + x^2}} \\
y^{-3} \frac{dy}{dx} &= \frac{x}{\sqrt{1 + x^2}} \\
\int y^{-3} dy &= \int \frac{x}{\sqrt{1 + x^2}} dx \\
-\frac{1}{2}y^{-2} &= \sqrt{1 + x^2} + C \\
-\frac{1}{2y^2} &= \sqrt{1 + x^2} + C \\
\frac{1}{y^2} &= -2\sqrt{1 + x^2} - 2C \\
y^2 &= \frac{1}{C_1 - 2\sqrt{1 + x^2}} \quad \text{onde } C_1 = -2C
\end{align*}
$$

### Exemplo 4: Equação Trigonométrica

> [!EXAMPLE]
> Resolva: $\frac{dy}{dx} = \sin x \cdot \cos y$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= \sin x \cdot \cos y \\
\frac{dy}{\cos y} &= \sin x\,dx \\
\int \sec y\,dy &= \int \sin x\,dx \\
\ln|\sec y + \tan y| &= -\cos x + C \\
\sec y + \tan y &= Ae^{-\cos x} \quad \text{onde } A = e^{C}
\end{align*}
$$

### Exemplo 5: Equação com Condição Inicial

> [!EXAMPLE]
> Resolva: $\frac{dy}{dx} = 2xy$ com $y(0) = 3$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= 2xy \\
\frac{dy}{y} &= 2x\,dx \\
\int \frac{dy}{y} &= \int 2x\,dx \\
\ln|y| &= x^2 + C \\
y &= Ae^{x^2} \quad \text{onde } A = e^{C}
\end{align*}
$$

**Aplicando a condição inicial:**
$$
\begin{align*}
y(0) &= Ae^{0} = 3 \Rightarrow A = 3 \\
y &= 3e^{x^2}
\end{align*}
$$

### Exemplo 6: Equação Logística

> [!EXAMPLE]
> Resolva: $\frac{dP}{dt} = kP\left(1 - \frac{P}{M}\right)$ (Modelo de Verhulst)

**Solução:**
$$
\begin{align*}
\frac{dP}{dt} &= kP\left(1 - \frac{P}{M}\right) \\
\frac{dP}{P\left(1 - \frac{P}{M}\right)} &= k\,dt \\
\int \frac{dP}{P\left(1 - \frac{P}{M}\right)} &= \int k\,dt
\end{align*}
$$

**Usando frações parciais:**
$$
\begin{align*}
\frac{1}{P\left(1 - \frac{P}{M}\right)} &= \frac{1}{P} + \frac{1}{M - P} \\
\int \left(\frac{1}{P} + \frac{1}{M - P}\right) dP &= \int k\,dt \\
\ln|P| - \ln|M - P| &= kt + C \\
\ln\left|\frac{P}{M - P}\right| &= kt + C \\
\frac{P}{M - P} &= Ae^{kt} \quad \text{onde } A = e^{C} \\
P &= \frac{MAe^{kt}}{1 + Ae^{kt}} = \frac{M}{1 + Be^{-kt}} \quad \text{onde } B = \frac{1}{A}
\end{align*}
$$

### Exemplo 7: Equação com Exponencial

> [!EXAMPLE]
> Resolva: $\frac{dy}{dx} = e^{x-y}$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= e^{x-y} = e^x \cdot e^{-y} \\
e^y\,dy &= e^x\,dx \\
\int e^y\,dy &= \int e^x\,dx \\
e^y &= e^x + C \\
y &= \ln|e^x + C|
\end{align*}
$$

### Exemplo 8: Equação Homogênea

> [!EXAMPLE]
> Resolva: $\frac{dy}{dx} = \frac{x + y}{x}$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= \frac{x + y}{x} = 1 + \frac{y}{x} \\
\text{Substituição: } v &= \frac{y}{x} \Rightarrow y = vx \Rightarrow \frac{dy}{dx} = v + x\frac{dv}{dx} \\
v + x\frac{dv}{dx} &= 1 + v \\
x\frac{dv}{dx} &= 1 \\
dv &= \frac{dx}{x} \\
\int dv &= \int \frac{dx}{x} \\
v &= \ln|x| + C \\
\frac{y}{x} &= \ln|x| + C \\
y &= x\ln|x| + Cx
\end{align*}
$$

### Exemplo 9: Equação com Arco Tangente

> [!EXAMPLE]
> Resolva: $\frac{dy}{dx} = \frac{1}{1 + x^2} \cdot \frac{1}{1 + y^2}$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= \frac{1}{(1 + x^2)(1 + y^2)} \\
(1 + y^2)\,dy &= \frac{dx}{1 + x^2} \\
\int (1 + y^2)\,dy &= \int \frac{dx}{1 + x^2} \\
y + \frac{y^3}{3} &= \arctan x + C
\end{align*}
$$

### Exemplo 10: Problema de Mistura

> [!EXAMPLE] Aplicação Física
> Um tanque contém 100 litros de água com 5 kg de sal. Água salgada com 0.1 kg/L é adicionada a 2 L/min e a mistura é drenada a 2 L/min. Encontre a quantidade de sal no tanque no tempo $t$.

**Solução:**
$$
\begin{align*}
\frac{dS}{dt} &= \text{taxa de entrada} - \text{taxa de saída} \\
&= (0.1)(2) - \left(\frac{S}{100}\right)(2) \\
\frac{dS}{dt} &= 0.2 - 0.02S \\
\frac{dS}{0.2 - 0.02S} &= dt \\
\int \frac{dS}{0.2 - 0.02S} &= \int dt \\
-50\ln|0.2 - 0.02S| &= t + C \\
\ln|0.2 - 0.02S| &= -0.02t + C' \\
0.2 - 0.02S &= Ae^{-0.02t} \\
S &= 10 - 50Ae^{-0.02t}
\end{align*}
$$

**Com condição inicial $S(0) = 5$:**
$$
\begin{align*}
5 &= 10 - 50A \Rightarrow A = 0.1 \\
S(t) &= 10 - 5e^{-0.02t}
\end{align*}
$$

## 💻 Aplicações Práticas

### 1. Modelos Populacionais
> [!SUCCESS] Aplicação Real
> **Lei de Malthus**: $\frac{dP}{dt} = kP$
> - $P$: população
> - $k$: taxa de crescimento
> - Solução: $P(t) = P_0 e^{kt}$

### 2. Resfriamento de Newton
> [!SUCCESS] Aplicação Real
> $$\frac{dT}{dt} = k(T - T_{ambiente})$$
> - $T$: temperatura do objeto
> - $T_{ambiente}$: temperatura ambiente
> - $k$: constante de resfriamento

### 3. Cinética Química
> [!SUCCESS] Aplicação Real
> **Reações de Primeira Ordem**:
> $$\frac{d[A]}{dt} = -k[A]$$
> - $[A]$: concentração do reagente
> - $k$: constante de velocidade

### 4. Movimento com Resistência
> [!SUCCESS] Aplicação Real
> $$\frac{dv}{dt} = g - kv$$
> - $v$: velocidade
> - $g$: aceleração gravitacional
> - $k$: coeficiente de resistência

---

## 🖥️ Métodos Computacionais

### Implementação em Python

> [!TIP] Código para Solução Numérica
```python
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

def edo_separavel(f_x, g_y, x0, y0, x_range, n_points=1000):
    """
    Resolve EDO separável dy/dx = f(x)g(y) numericamente
    """
    def equation(x, y):
        return f_x(x) * g_y(y)
    
    sol = solve_ivp(equation, x_range, [y0], 
                   t_eval=np.linspace(x_range[0], x_range[1], n_points))
    return sol.t, sol.y[0]

# Exemplo 1: dy/dx = x·y
def f_x(x): return x
def g_y(y): return y

x_vals, y_vals = edo_separavel(f_x, g_y, 0, 1, [0, 2])

plt.figure(figsize=(12, 8))

# Plot da solução numérica vs analítica
plt.subplot(2, 2, 1)
plt.plot(x_vals, y_vals, 'b-', label='Solução Numérica', linewidth=2)
plt.plot(x_vals, np.exp(x_vals**2/2), 'r--', label='Solução Analítica: $e^{x^2/2}$')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.title('Solução da EDO: $dy/dx = x·y$')
plt.grid(True)

# Exemplo 2: Equação logística
def logistic_eq(t, P, k=1, M=100):
    return k * P * (1 - P/M)

t_vals = np.linspace(0, 10, 1000)
P0 = 10
sol_logistic = solve_ivp(logistic_eq, [0, 10], [P0], t_eval=t_vals, args=(1, 100))

plt.subplot(2, 2, 2)
plt.plot(sol_logistic.t, sol_logistic.y[0], 'g-', linewidth=2)
plt.xlabel('Tempo')
plt.ylabel('População')
plt.title('Crescimento Logístico')
plt.grid(True)
plt.show()
```

### Método de Euler para EDOs Separáveis

> [!CAUTION] Implementação do Método de Euler
```python
def euler_method(f, x0, y0, h, n_steps):
    """
    Método de Euler para resolver dy/dx = f(x, y)
    """
    x_vals = [x0]
    y_vals = [y0]
    
    x = x0
    y = y0
    
    for i in range(n_steps):
        y += h * f(x, y)
        x += h
        x_vals.append(x)
        y_vals.append(y)
    
    return np.array(x_vals), np.array(y_vals)

# Comparação de métodos
def f_example(x, y):
    return x - y

# Método de Euler
x_euler, y_euler = euler_method(f_example, 0, 1, 0.1, 50)

# Solução analítica exata
y_exact = 2*np.exp(-x_euler) + x_euler - 1

plt.figure(figsize=(10, 6))
plt.plot(x_euler, y_euler, 'bo-', label='Método de Euler', markersize=4)
plt.plot(x_euler, y_exact, 'r-', label='Solução Exata', linewidth=2)
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.title('Comparação: Método de Euler vs Solução Exata')
plt.grid(True)
plt.show()
```

### Solução Simbólica com SymPy

> [!TIP] Cálculo Simbólico
```python
import sympy as sp

# Definindo variáveis simbólicas
x = sp.Symbol('x')
y = sp.Function('y')(x)

# Exemplo: Resolver dy/dx = x*y^2
edo = sp.Eq(y.diff(x), x * y**2)
solucao = sp.dsolve(edo, y)
print("Solução geral:")
print(solucao)

# Com condição inicial
solucao_ci = sp.dsolve(edo, y, ics={y.subs(x, 0): 1})
print("\nSolução com condição inicial y(0) = 1:")
print(solucao_ci)
```

---

## 🎯 Casos Especiais

### 1. Variáveis Já Separadas
> [!NOTE] Caso Imediato
> $$\frac{dy}{dx} = f(x)$$
> Solução direta: $y = \int f(x)dx + C$

### 2. Equação Homogênea
> [!NOTE] Transformação
> $$\frac{dy}{dx} = f\left(\frac{y}{x}\right)$$
> Use substituição: $v = \frac{y}{x} \Rightarrow y = vx \Rightarrow \frac{dy}{dx} = v + x\frac{dv}{dx}$

### 3. Equação de Bernoulli
> [!NOTE] Método
> $$\frac{dy}{dx} + P(x)y = Q(x)y^n$$
> Use substituição: $u = y^{1-n}$

---

## ⚠️ Considerações Importantes

> [!WARNING] Pontos de Atenção
> 1. **Domínio da Solução**: Verifique onde a solução é válida
> 2. **Solução Singular**: Procure por soluções constantes (quando $g(y) = 0$)
> 3. **Condições Iniciais**: Use para determinar a constante específica
> 4. **Existência e Unicidade**: Teorema de Picard-Lindelöf garante solução única sob certas condições

> [!TIP] Verificação da Solução
> Sempre derive sua solução e substitua na equação original para verificar!

> [!CAUTION] Cuidado com Divisão por Zero
> Ao dividir por $g(y)$, certifique-se de que $g(y) \neq 0$ no domínio de interesse

---

## 📊 Comparação: Analítico vs Numérico

| Método | Vantagens | Desvantagens | Aplicação |
|--------|-----------|--------------|-----------|
| **Analítico** | Solução exata, compreensão teórica | Nem sempre possível | Quando as integrais são elementares |
| **Numérico** | Aplicável a qualquer caso | Solução aproximada | Problemas complexos do mundo real |
| **Simbólico** | Precisão absoluta | Limitado a casos resolvíveis | Verificação de soluções |

> [!SUMMARY] Conclusão
> EDOs separáveis representam uma classe fundamental de equações diferenciais que conectam elegantemente cálculo diferencial e integral. Sua solução combina:
> - **Técnicas analíticas** para compreensão teórica
> - **Métodos numéricos** para aplicações práticas
> - **Ferramentas computacionais** para simulação e visualização
> 
> Essas equações são essenciais em modelagem matemática across diversas áreas da ciência e engenharia, desde dinâmica populacional até fenômenos físicos e químicos.