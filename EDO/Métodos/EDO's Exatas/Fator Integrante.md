# Fator Integrante para EDOs Não-Exatas

> [!NOTE] Conceito Fundamental
> Um **fator integrante** é uma função $\mu(x, y)$ que, quando multiplicada a uma EDO não-exata, a transforma em uma EDO exata. Dada uma EDO na forma:
> $$M(x, y)dx + N(x, y)dy = 0$$
> Se $\frac{\partial M}{\partial y} \neq \frac{\partial N}{\partial x}$, procuramos $\mu(x, y)$ tal que:
> $$\mu M dx + \mu N dy = 0 \quad \text{seja exata}$$

## 📋 Condição para Fator Integrante

> [!IMPORTANT] Equação Diferencial do Fator Integrante
> Para que $\mu$ seja um fator integrante, ele deve satisfazer:
> $$\frac{\partial (\mu M)}{\partial y} = \frac{\partial (\mu N)}{\partial x}$$
> O que leva à EDP:
> $$M\frac{\partial \mu}{\partial y} - N\frac{\partial \mu}{\partial x} = \mu\left(\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}\right)$$

---

## 🔍 Casos Especiais Práticos

### Caso 1: Fator Integrante que Só Depende de $x$

> [!TIP] Condição e Fórmula
> Se $\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N}$ é função apenas de $x$, então:
> $$\mu(x) = \exp\left(\int \frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} dx\right)$$

**Demonstração:**
$$
\begin{align*}
\text{Assumindo } \mu &= \mu(x) \Rightarrow \frac{\partial \mu}{\partial y} = 0 \\
\text{Condição de exatidão: } &\frac{\partial (\mu M)}{\partial y} = \frac{\partial (\mu N)}{\partial x} \\
\mu \frac{\partial M}{\partial y} &= \mu \frac{\partial N}{\partial x} + N \frac{d\mu}{dx} \\
\frac{d\mu}{dx} &= \mu \cdot \frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N}
\end{align*}
$$

### Caso 2: Fator Integrante que Só Depende de $y$

> [!TIP] Condição e Fórmula
> Se $\frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M}$ é função apenas de $y$, então:
> $$\mu(y) = \exp\left(\int \frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M} dy\right)$$

**Demonstração:**
$$
\begin{align*}
\text{Assumindo } \mu &= \mu(y) \Rightarrow \frac{\partial \mu}{\partial x} = 0 \\
\text{Condição de exatidão: } &\frac{\partial (\mu M)}{\partial y} = \frac{\partial (\mu N)}{\partial x} \\
M \frac{d\mu}{dy} + \mu \frac{\partial M}{\partial y} &= \mu \frac{\partial N}{\partial x} \\
\frac{d\mu}{dy} &= \mu \cdot \frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M}
\end{align*}
$$

---

## 📚 Exemplos Resolvidos

### Exemplo 1: Fator Integrante em $x$

> [!EXAMPLE]
> Resolva: $(3xy + y^2)dx + (x^2 + xy)dy = 0$

**Solução:**
**Passo 1:** Verificar se é exata
$$
\begin{align*}
M &= 3xy + y^2 \Rightarrow \frac{\partial M}{\partial y} = 3x + 2y \\
N &= x^2 + xy \Rightarrow \frac{\partial N}{\partial x} = 2x + y \\
\frac{\partial M}{\partial y} &\neq \frac{\partial N}{\partial x} \quad \text{Não é exata}
\end{align*}
$$

**Passo 2:** Procurar fator integrante $\mu(x)$
$$
\begin{align*}
\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} &= \frac{(3x + 2y) - (2x + y)}{x^2 + xy} \\
&= \frac{x + y}{x(x + y)} = \frac{1}{x} \quad \text{(só depende de x!)}
\end{align*}
$$

**Passo 3:** Calcular $\mu(x)$
$$
\mu(x) = \exp\left(\int \frac{1}{x} dx\right) = e^{\ln|x|} = x
$$

**Passo 4:** Aplicar fator integrante
$$
\begin{align*}
x[(3xy + y^2)dx + (x^2 + xy)dy] &= 0 \\
(3x^2y + xy^2)dx + (x^3 + x^2y)dy &= 0
\end{align*}
$$

**Passo 5:** Verificar nova exatidão
$$
\begin{align*}
M_1 &= 3x^2y + xy^2 \Rightarrow \frac{\partial M_1}{\partial y} = 3x^2 + 2xy \\
N_1 &= x^3 + x^2y \Rightarrow \frac{\partial N_1}{\partial x} = 3x^2 + 2xy \\
\frac{\partial M_1}{\partial y} &= \frac{\partial N_1}{\partial x} \quad \text{✓ Agora é exata}
\end{align*}
$$

**Passo 6:** Resolver EDO exata
$$
\begin{align*}
\frac{\partial F}{\partial x} &= 3x^2y + xy^2 \\
F(x, y) &= \int (3x^2y + xy^2)dx = x^3y + \frac{1}{2}x^2y^2 + g(y) \\
\frac{\partial F}{\partial y} &= x^3 + x^2y + g'(y) = x^3 + x^2y \\
\Rightarrow g'(y) &= 0 \Rightarrow g(y) = C_1
\end{align*}
$$

**Solução geral:**
$$x^3y + \frac{1}{2}x^2y^2 = C$$

### Exemplo 2: Fator Integrante em $y$

> [!EXAMPLE]
> Resolva: $(2x^2y - 3y^4)dx + (3x^3 + 2xy^3)dy = 0$

**Solução:**
**Passo 1:** Verificar exatidão
$$
\begin{align*}
M &= 2x^2y - 3y^4 \Rightarrow \frac{\partial M}{\partial y} = 2x^2 - 12y^3 \\
N &= 3x^3 + 2xy^3 \Rightarrow \frac{\partial N}{\partial x} = 9x^2 + 2y^3 \\
\frac{\partial M}{\partial y} &\neq \frac{\partial N}{\partial x} \quad \text{Não é exata}
\end{align*}
$$

**Passo 2:** Procurar fator integrante $\mu(y)$
$$
\begin{align*}
\frac{\frac{\partial N}{\partial x} - \frac{\partial M}{\partial y}}{M} &= \frac{(9x^2 + 2y^3) - (2x^2 - 12y^3)}{2x^2y - 3y^4} \\
&= \frac{7x^2 + 14y^3}{2x^2y - 3y^4} = \frac{7(x^2 + 2y^3)}{y(2x^2 - 3y^3)} \quad \text{(não é só de y)}
\end{align*}
$$

**Tentar $\mu(x)$:**
$$
\begin{align*}
\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} &= \frac{(2x^2 - 12y^3) - (9x^2 + 2y^3)}{3x^3 + 2xy^3} \\
&= \frac{-7x^2 - 14y^3}{x(3x^2 + 2y^3)} = -\frac{7(x^2 + 2y^3)}{x(3x^2 + 2y^3)} \quad \text{(não é só de x)}
\end{align*}
$$

**Passo 3:** Tentar fator integrante $\mu = x^m y^n$
Assumindo $\mu = x^m y^n$, a condição de exatidão fica:
$$
\begin{align*}
\frac{\partial (\mu M)}{\partial y} &= \frac{\partial (\mu N)}{\partial x} \\
\frac{\partial}{\partial y}[x^m y^n(2x^2y - 3y^4)] &= \frac{\partial}{\partial x}[x^m y^n(3x^3 + 2xy^3)]
\end{align*}
$$

Resolvendo o sistema, encontramos $m = -2$, $n = -3$, então:
$$\mu(x, y) = x^{-2}y^{-3}$$

**Passo 4:** Aplicar fator integrante e resolver (exercício deixado para o leitor)

### Exemplo 3: EDO Linear como Caso Especial

> [!EXAMPLE]
> Resolva: $\frac{dy}{dx} + P(x)y = Q(x)$

**Solução:**
Reescrevendo na forma diferencial:
$$[P(x)y - Q(x)]dx + dy = 0$$

**Verificar exatidão:**
$$
\begin{align*}
M &= P(x)y - Q(x) \Rightarrow \frac{\partial M}{\partial y} = P(x) \\
N &= 1 \Rightarrow \frac{\partial N}{\partial x} = 0 \\
\frac{\partial M}{\partial y} &\neq \frac{\partial N}{\partial x} \quad \text{Não é exata}
\end{align*}
$$

**Encontrar fator integrante $\mu(x)$:**
$$
\begin{align*}
\frac{\frac{\partial M}{\partial y} - \frac{\partial N}{\partial x}}{N} &= \frac{P(x) - 0}{1} = P(x) \\
\mu(x) &= \exp\left(\int P(x)dx\right)
\end{align*}
$$

**Que é exatamente o fator integrante para EDOs lineares!**

---

## 🛠️ Casos Especiais de Fatores Integrantes

### Caso 3: Fator Integrante para EDOs Homogêneas

> [!TIP] 
> Se $M(x, y)$ e $N(x, y)$ são funções homogêneas do mesmo grau, então:
> $$\mu = \frac{1}{xM + yN}$$
> é um fator integrante (quando o denominador não é zero).

### Caso 4: Fator Integrante para Formas Especiais

> [!TIP] Fatores Integrantes Conhecidos
> 
> | Se a EDO tem a forma | Fator Integrante |
> |---------------------|------------------|
> | $Mdx + Ndy = 0$ com $\frac{M_y - N_x}{N} = f(x)$ | $\mu(x) = e^{\int f(x)dx}$ |
> | $Mdx + Ndy = 0$ com $\frac{N_x - M_y}{M} = g(y)$ | $\mu(y) = e^{\int g(y)dy}$ |
> | $y dx - x dy = 0$ | $\mu = \frac{1}{x^2}$ ou $\mu = \frac{1}{y^2}$ ou $\mu = \frac{1}{xy}$ |
> | $y dx - x dy = 0$ | $\mu = \frac{1}{x^2 + y^2}$ |

---

## 💻 Implementação Computacional

### Algoritmo para Encontrar Fator Integrante

> [!CAUTION] Código Python
```python
import sympy as sp
from sympy import symbols, Function, exp, integrate, simplify, diff, solve

def encontrar_fator_integrante(M, N, x, y):
    """
    Tenta encontrar um fator integrante para a EDO Mdx + Ndy = 0
    """
    # Calcular derivadas parciais
    dM_dy = diff(M, y)
    dN_dx = diff(N, x)
    
    print(f"M = {M}")
    print(f"N = {N}")
    print(f"∂M/∂y = {dM_dy}")
    print(f"∂N/∂x = {dN_dx}")
    
    # Verificar se já é exata
    if simplify(dM_dy - dN_dx) == 0:
        print("A EDO já é exata!")
        return 1
    
    # Tentar fator integrante que só depende de x
    expr_x = (dM_dy - dN_dx) / N
    if simplify(diff(expr_x, y)) == 0:
        print(f"Fator integrante que depende apenas de x:")
        print(f"Expressão: {expr_x}")
        mu_x = exp(integrate(expr_x, x))
        print(f"μ(x) = {mu_x}")
        return mu_x
    
    # Tentar fator integrante que só depende de y
    expr_y = (dN_dx - dM_dy) / M
    if simplify(diff(expr_y, x)) == 0:
        print(f"Fator integrante que depende apenas de y:")
        print(f"Expressão: {expr_y}")
        mu_y = exp(integrate(expr_y, y))
        print(f"μ(y) = {mu_y}")
        return mu_y
    
    print("Não foi possível encontrar um fator integrante simples.")
    return None

# Exemplo de uso
x, y = symbols('x y')

print("=== Exemplo 1 ===")
M1 = 3*x*y + y**2
N1 = x**2 + x*y
mu1 = encontrar_fator_integrante(M1, N1, x, y)

print("\n=== Exemplo 2 ===")
M2 = 2*x**2 - y
N2 = 2*y**2 - x
mu2 = encontrar_fator_integrante(M2, N2, x, y)
```

### Verificação de Fator Integrante

> [!TIP] Código para Verificar
```python
def verificar_fator_integrante(M, N, mu, x, y):
    """
    Verifica se μ é realmente um fator integrante
    """
    M_novo = mu * M
    N_novo = mu * N
    
    dM_dy = diff(M_novo, y)
    dN_dx = diff(N_novo, x)
    
    print(f"μM = {M_novo}")
    print(f"μN = {N_novo}")
    print(f"∂(μM)/∂y = {dM_dy}")
    print(f"∂(μN)/∂x = {dN_dx}")
    print(f"É exata? {simplify(dM_dy - dN_dx) == 0}")
    
    return simplify(dM_dy - dN_dx) == 0

# Testar com o exemplo anterior
if mu1:
    print("\n=== Verificação do Fator Integrante ===")
    verificar_fator_integrante(M1, N1, mu1, x, y)
```

---

## ⚠️ Considerações Importantes

> [!WARNING] Limitações e Cuidados
> 1. **Não unicidade**: Pode existir mais de um fator integrante para a mesma EDO
> 2. **Domínio de validade**: O fator integrante pode não ser válido em todo o domínio
> 3. **Complexidade**: Para fatores integrantes que dependem de ambas variáveis, a EDP pode ser difícil de resolver
> 4. **Singularidades**: Cuidado com divisão por zero ao calcular as expressões

> [!CAUTION] Estratégias quando os Casos Simples Falham
> 1. Tentar $\mu = x^m y^n$ e determinar $m$ e $n$
> 2. Tentar $\mu = \mu(xy)$ ou $\mu = \mu(x/y)$
> 3. Usar substituições para simplificar a EDO
> 4. Em último caso, métodos numéricos

---

## 📊 Resumo dos Métodos

| Tipo de Fator Integrante | Condição | Fórmula |
|--------------------------|----------|---------|
| $\mu(x)$ | $\frac{M_y - N_x}{N} = f(x)$ | $\mu = e^{\int f(x)dx}$ |
| $\mu(y)$ | $\frac{N_x - M_y}{M} = g(y)$ | $\mu = e^{\int g(y)dy}$ |
| $\mu(xy)$ | $M$ e $N$ funções de $xy$ | $\mu = \mu(xy)$ |
| $\mu(x^m y^n)$ | Caso geral | Determinar $m$, $n$ |

> [!SUMMARY] Conclusão
> O método do fator integrante é uma ferramenta poderosa para:
> - **Ampliar a classe** de EDOs que podemos resolver analiticamente
> - **Conectar diferentes tipos** de EDOs (exatas, lineares, homogêneas)
> - **Fornecer insight** sobre a estrutura das equações diferenciais
> 
> Embora nem sempre seja fácil encontrar um fator integrante, os casos que dependem de apenas uma variável cobrem muitas aplicações práticas e são essenciais no arsenal de técnicas para resolver EDOs.