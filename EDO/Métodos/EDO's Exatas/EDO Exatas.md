
> [!NOTE] Definição
> Uma EDO da forma $M(x, y)dx + N(x, y)dy = 0$ é **exata** se existe uma função $F(x, y)$ tal que:
> $$\frac{\partial F}{\partial x} = M(x, y) \quad \text{e} \quad \frac{\partial F}{\partial y} = N(x, y)$$
> A solução geral é dada implicitamente por $F(x, y) = C$.

## 📋 Condição de Exatidão

> [!IMPORTANT] Teorema Fundamental
> Se $M(x, y)$ e $N(x, y)$ têm derivadas parciais contínuas em uma região retangular, então a EDO é **exata** se e somente se:
> $$\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$$

---

## 🔍 Método de Solução

### Passo a Passo

> [!ABSTRACT] Algoritmo para Resolver EDOs Exatas
> 1. **Verificar exatidão**: $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$
> 2. **Encontrar $F(x, y)$** integrando $M$ em relação a $x$ ou $N$ em relação a $y$
> 3. **Determinar a função "perdida"** usando a outra derivada parcial
> 4. **Escrever a solução**: $F(x, y) = C$

---

## 📚 Exemplos Resolvidos

### Exemplo 1: EDO Exata Básica

> [!EXAMPLE]
> Resolva: $(2x + y)dx + (x + 2y)dy = 0$

**Solução:**
**Passo 1:** Verificar exatidão
$$
\begin{align*}
M(x, y) &= 2x + y \Rightarrow \frac{\partial M}{\partial y} = 1 \\
N(x, y) &= x + 2y \Rightarrow \frac{\partial N}{\partial x} = 1 \\
\frac{\partial M}{\partial y} &= \frac{\partial N}{\partial x} = 1 \quad \text{✓ É exata}
\end{align*}
$$

**Passo 2:** Encontrar $F(x, y)$
$$
\begin{align*}
\frac{\partial F}{\partial x} &= 2x + y \\
F(x, y) &= \int (2x + y)dx = x^2 + xy + g(y)
\end{align*}
$$

**Passo 3:** Determinar $g(y)$
$$
\begin{align*}
\frac{\partial F}{\partial y} &= x + g'(y) \\
\text{Comparando com } N(x, y) &= x + 2y: \\
x + g'(y) &= x + 2y \Rightarrow g'(y) = 2y \\
g(y) &= \int 2y\,dy = y^2 + C_1
\end{align*}
$$

**Passo 4:** Solução geral
$$
F(x, y) = x^2 + xy + y^2 = C
$$

### Exemplo 2: EDO com Funções Trigonométricas

> [!EXAMPLE]
> Resolva: $(\cos x \cos y + 2x)dx - (\sin x \sin y + 2y)dy = 0$

**Solução:**
**Verificação:**
$$
\begin{align*}
M &= \cos x \cos y + 2x \Rightarrow \frac{\partial M}{\partial y} = -\cos x \sin y \\
N &= -(\sin x \sin y + 2y) \Rightarrow \frac{\partial N}{\partial x} = -\cos x \sin y \\
\frac{\partial M}{\partial y} &= \frac{\partial N}{\partial x} \quad \text{✓ É exata}
\end{align*}
$$

**Encontrar $F(x, y)$:**
$$
\begin{align*}
\frac{\partial F}{\partial x} &= \cos x \cos y + 2x \\
F(x, y) &= \int (\cos x \cos y + 2x)dx = \sin x \cos y + x^2 + g(y)
\end{align*}
$$

**Determinar $g(y)$:**
$$
\begin{align*}
\frac{\partial F}{\partial y} &= -\sin x \sin y + g'(y) \\
\text{Comparando com } N &= -\sin x \sin y - 2y: \\
-\sin x \sin y + g'(y) &= -\sin x \sin y - 2y \\
g'(y) &= -2y \Rightarrow g(y) = -y^2 + C_1
\end{align*}
$$

**Solução geral:**
$$
\sin x \cos y + x^2 - y^2 = C
$$

### Exemplo 3: EDO com Função Exponencial

> [!EXAMPLE]
> Resolva: $(2xy + e^y)dx + (x^2 + xe^y)dy = 0$

**Solução:**
**Verificação:**
$$
\begin{align*}
M &= 2xy + e^y \Rightarrow \frac{\partial M}{\partial y} = 2x + e^y \\
N &= x^2 + xe^y \Rightarrow \frac{\partial N}{\partial x} = 2x + e^y \\
\frac{\partial M}{\partial y} &= \frac{\partial N}{\partial x} \quad \text{✓ É exata}
\end{align*}
$$

**Encontrar $F(x, y)$:**
$$
\begin{align*}
\frac{\partial F}{\partial x} &= 2xy + e^y \\
F(x, y) &= \int (2xy + e^y)dx = x^2y + xe^y + g(y)
\end{align*}
$$

**Determinar $g(y)$:**
$$
\begin{align*}
\frac{\partial F}{\partial y} &= x^2 + xe^y + g'(y) \\
\text{Comparando com } N &= x^2 + xe^y: \\
x^2 + xe^y + g'(y) &= x^2 + xe^y \\
g'(y) &= 0 \Rightarrow g(y) = C_1
\end{align*}
$$

**Solução geral:**
$$
x^2y + xe^y = C
$$

---

## 🛠️ Fator Integrante

> [!CAUTION] Quando uma EDO Não é Exata
> Se $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$, podemos tentar encontrar um **fator integrante** $\mu(x, y)$ tal que:
> $$\mu M dx + \mu N dy = 0 \quad \text{seja exata}$$

### Casos Especiais para Fator Integrante

> [!TIP] Fator Integrante que Só Depende de $x$
> Se $\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N}$ é função só de $x$, então:
> $$\mu(x) = \exp\left(\int \frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} dx\right)$$

> [!TIP] Fator Integrante que Só Depende de $y$
> Se $\frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M}$ é função só de $y$, então:
> $$\mu(y) = \exp\left(\int \frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M} dy\right)$$

### Exemplo 4: Usando Fator Integrante

> [!EXAMPLE]
> Resolva: $(3xy + y^2)dx + (x^2 + xy)dy = 0$

**Solução:**
**Verificação inicial:**
$$
\begin{align*}
M &= 3xy + y^2 \Rightarrow \frac{\partial M}{\partial y} = 3x + 2y \\
N &= x^2 + xy \Rightarrow \frac{\partial N}{\partial x} = 2x + y \\
\frac{\partial M}{\partial y} &\neq \frac{\partial N}{\partial x} \quad \text{Não é exata}
\end{align*}
$$

**Encontrar fator integrante:**
$$
\begin{align*}
\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} &= \frac{(3x + 2y) - (2x + y)}{x^2 + xy} = \frac{x + y}{x(x + y)} = \frac{1}{x} \\
\mu(x) &= \exp\left(\int \frac{1}{x} dx\right) = e^{\ln|x|} = x
\end{align*}
$$

**Multiplicar pelo fator integrante:**
$$
\begin{align*}
x[(3xy + y^2)dx + (x^2 + xy)dy] &= 0 \\
(3x^2y + xy^2)dx + (x^3 + x^2y)dy &= 0
\end{align*}
$$

**Verificar nova exatidão:**
$$
\begin{align*}
M &= 3x^2y + xy^2 \Rightarrow \frac{\partial M}{\partial y} = 3x^2 + 2xy \\
N &= x^3 + x^2y \Rightarrow \frac{\partial N}{\partial x} = 3x^2 + 2xy \\
\frac{\partial M}{\partial y} &= \frac{\partial N}{\partial x} \quad \text{✓ Agora é exata}
\end{align*}
$$

**Resolver a EDO exata:**
$$
\begin{align*}
\frac{\partial F}{\partial x} &= 3x^2y + xy^2 \\
F(x, y) &= \int (3x^2y + xy^2)dx = x^3y + \frac{1}{2}x^2y^2 + g(y) \\
\frac{\partial F}{\partial y} &= x^3 + x^2y + g'(y) = x^3 + x^2y \\
\Rightarrow g'(y) &= 0 \Rightarrow g(y) = C_1
\end{align*}
$$

**Solução geral:**
$$
x^3y + \frac{1}{2}x^2y^2 = C
$$

---

## 💻 Implementação Computacional

### Verificação de Exatidão em Python

> [!TIP] Código para Verificar e Resolver EDOs Exatas
```python
import sympy as sp
from sympy import symbols, Function, Eq, integrate, diff, exp, sin, cos

def verificar_exatidao(M, N, x, y):
    """Verifica se uma EDO é exata"""
    dM_dy = diff(M, y)
    dN_dx = diff(N, x)
    
    print(f"∂M/∂y = {dM_dy}")
    print(f"∂N/∂x = {dN_dx}")
    print(f"É exata? {sp.simplify(dM_dy - dN_dx) == 0}")
    
    return dM_dy == dN_dx

def resolver_edo_exata(M, N, x, y):
    """Resolve uma EDO exata"""
    # Encontrar F integrando M em relação a x
    F = integrate(M, x) + Function('g')(y)
    print(f"F(x,y) = {F}")
    
    # Derivar F em relação a y
    dF_dy = diff(F, y)
    print(f"∂F/∂y = {dF_dy}")
    
    # Encontrar g(y)
    eq_g = Eq(dF_dy, N)
    g_diff = sp.solve(eq_g, diff(Function('g')(y), y))[0]
    g = integrate(g_diff, y)
    
    print(f"g'(y) = {g_diff}")
    print(f"g(y) = {g}")
    
    # Solução final
    solucao = F.subs(Function('g')(y), g)
    print(f"Solução: F(x,y) = {solucao} = C")
    
    return solucao

# Exemplo de uso
x, y = symbols('x y')

# Exemplo 1: (2x + y)dx + (x + 2y)dy = 0
print("=== Exemplo 1 ===")
M1 = 2*x + y
N1 = x + 2*y

if verificar_exatidao(M1, N1, x, y):
    resolver_edo_exata(M1, N1, x, y)

print("\n=== Exemplo 2 ===")
# Exemplo 2: (cos(x)cos(y) + 2x)dx - (sin(x)sin(y) + 2y)dy = 0
M2 = cos(x)*cos(y) + 2*x
N2 = -sin(x)*sin(y) - 2*y

if verificar_exatidao(M2, N2, x, y):
    resolver_edo_exata(M2, N2, x, y)
```

### Método Numérico para EDOs Exatas

> [!CAUTION] Solução Numérica
```python
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

def plot_solucao_exata():
    """Plota curvas de nível da solução exata"""
    x = np.linspace(-3, 3, 100)
    y = np.linspace(-3, 3, 100)
    X, Y = np.meshgrid(x, y)
    
    # Para F(x,y) = x² + xy + y² = C
    Z = X**2 + X*Y + Y**2
    
    plt.figure(figsize=(10, 8))
    contours = plt.contour(X, Y, Z, levels=15)
    plt.clabel(contours, inline=True, fontsize=8)
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Curvas de Nível: $x^2 + xy + y^2 = C$')
    plt.grid(True, alpha=0.3)
    plt.axis('equal')
    plt.show()

plot_solucao_exata()
```

---

## 🎯 Aplicações Práticas

### Exemplo 5: Aplicação Física

> [!SUCCESS] Problema de Potencial
> Encontre as linhas equipotenciais para o campo vetorial $\vec{F} = (2x + y)\hat{i} + (x + 2y)\hat{j}$

**Solução:**
$$
\begin{align*}
\frac{dy}{dx} &= -\frac{2x + y}{x + 2y} \\
(2x + y)dx + (x + 2y)dy &= 0 \quad \text{(EDO exata)} \\
\text{Solução: } x^2 + xy + y^2 &= C \quad \text{(linhas equipotenciais)}
\end{align*}
$$

---

## ⚠️ Considerações Importantes

> [!WARNING] Pontos de Atenção
> 1. **Domínio**: Verifique onde $M$ e $N$ são contínuas e têm derivadas parciais contínuas
> 2. **Constante de integração**: Ao integrar, lembre-se da função "perdida"
> 3. **Solução implícita**: A solução geral é dada implicitamente
> 4. **Fator integrante**: Nem sempre existe um fator integrante simples

> [!TIP] Estratégias para Encontrar F
> - Se $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$, integre $M$ em relação a $x$
> - Ou integre $N$ em relação a $y$ e compare resultados
> - Escolha o caminho que facilita os cálculos

---

## 📊 Resumo do Método

| Passo | Ação | Objetivo |
|-------|------|----------|
| 1 | Verificar $\frac{\partial M}{\partial y} = \frac{\partial N}{\partial x}$ | Confirmar exatidão |
| 2 | Integrar $M$ em relação a $x$ | Encontrar $F(x, y)$ parcial |
| 3 | Derivar resultado em relação a $y$ | Determinar função $g(y)$ |
| 4 | Comparar com $N(x, y)$ | Encontrar $g'(y)$ |
| 5 | Integrar $g'(y)$ | Obter $g(y)$ completa |
| 6 | Escrever $F(x, y) = C$ | Solução geral |

> [!SUMMARY] Conclusão
> EDOs exatas representam uma classe importante de equações diferenciais onde:
> - A solução é encontrada via integração direta
> - O método é sistemático e elegante
> - A condição de exatidão garante a existência de uma função potencial
> - Fatores integrantes podem transformar EDOs não-exatas em exatas
> 
> Esta técnica é fundamental em física matemática, especialmente em problemas de campos conservativos e potenciais.