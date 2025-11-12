v**Funções Inversas**

## 🔄 O Conceito de Função Inversa

A função inversa "desfaz" a operação da função original, retornando ao valor de entrada.

### 📌 Definição Formal

Dada uma função `f: A → B`, sua **inversa** `f⁻¹: B → A` satisfaz:
`f⁻¹(f(x)) = x` para todo `x ∈ A`
`f(f⁻¹(y)) = y` para todo `y ∈ B`

> [!info] Condição para Existência
> Uma função possui inversa **se e somente se** é **bijetora** (injetora e sobrejetora).

---

## ✅ Teste da Linha Horizontal

> [!warning] Verificação Gráfica
> - **Tem inversa**: Toda linha horizontal intercepta o gráfico no máximo uma vez
> - **Não tem inversa**: Alguma linha horizontal intercepta o gráfico mais de uma vez

```python
def tem_inversa(funcao, dominio):
    """
    Verifica se uma função é bijetora no domínio
    """
    valores_y = set()
    for x in dominio:
        y = funcao(x)
        if y in valores_y:
            return False  # Não é injetora
        valores_y.add(y)
    return True
```

---

## 🧮 Como Encontrar a Inversa

### Passo a Passo Detalhado

> [!example] Método Algébrico
> **Dada** `f(x) = 2x + 3`, encontre `f⁻¹(x)`:
> 
> 1. **Substitua** `f(x)` por `y`:
>    `y = 2x + 3`
> 
> 2. **Troque** `x` e `y`:
>    `x = 2y + 3`
> 
> 3. **Isole** `y`:
>    `x - 3 = 2y`
>    `y = (x - 3)/2`
> 
> 4. **Escreva** a notação da inversa:
>    `f⁻¹(x) = (x - 3)/2`

---

## 🔍 Propriedades das Funções Inversas

### Propriedades Algébricas

> [!abstract] Propriedade Fundamental
> `(f⁻¹)⁻¹ = f` - A inversa da inversa é a função original

> [!tip] Composição com a Inversa
> `f(f⁻¹(x)) = f⁻¹(f(x)) = x`

> [!note] Inversa do Produto
> `(f ∘ g)⁻¹ = g⁻¹ ∘ f⁻¹` - **A ordem se inverte!**

> [!warning] Cuidado com a Notação
> `f⁻¹(x) ≠ 1/f(x)` - A inversa **não** é o recíproco!

---

## 📊 Gráficos das Funções Inversas

### Simetria Característica

> [!info] Propriedade de Simetria
> Os gráficos de `f` e `f⁻¹` são **simétricos** em relação à reta `y = x`

```python
import matplotlib.pyplot as plt
import numpy as np

def plotar_funcao_inversa(f, dominio, titulo):
    """
    Plota uma função e sua inversa mostrando a simetria
    """
    x = np.linspace(dominio[0], dominio[1], 100)
    y = f(x)
    
    # Encontra a inversa (assumindo que é simples)
    x_inv = y
    y_inv = x
    
    plt.figure(figsize=(10, 8))
    plt.plot(x, y, label='f(x)', linewidth=2)
    plt.plot(x_inv, y_inv, label='f⁻¹(x)', linewidth=2)
    plt.plot(x, x, 'k--', label='y = x', alpha=0.5)  # Linha de simetria
    plt.legend()
    plt.title(titulo)
    plt.grid(True, alpha=0.3)
    plt.axis('equal')
    plt.show()

# Exemplo: f(x) = x² para x ≥ 0
f = lambda x: x**2
plotar_funcao_inversa(f, [0, 4], 'f(x) = x² e sua inversa')
```

---

## 🎯 Domínio e Imagem da Inversa

### Relação com a Função Original

> [!important] Propriedade de Troca
> - **Domínio de f⁻¹** = **Imagem de f**
> - **Imagem de f⁻¹** = **Domínio de f**

`Dom(f⁻¹) = Im(f)`
`Im(f⁻¹) = Dom(f)`

---

## 🚫 Funções que Não Têm Inversa

### Estratégias para Contornar

> [!caution] Funções Não Injetoras
> **Problema**: `f(x) = x²` não é injetora em `ℝ`
> - `f(2) = 4` e `f(-2) = 4` (dois x's para o mesmo y)

> [!tip] Solução: Restringir o Domínio
> - `f(x) = x²` com `x ≥ 0` → **é injetora**
> - Inversa: `f⁻¹(x) = √x`

> [!example] Outros Exemplos Comuns
> - `f(x) = sen(x)` → Restrinja a `[-π/2, π/2]`
> - `f(x) = cos(x)` → Restrinja a `[0, π]`
> - `f(x) = x²` → Restrinja a `[0, ∞)` ou `(-∞, 0]`

---

## 🧪 Exemplos Detalhados

### Exemplo 1: Função Linear
`f(x) = 3x - 5`

**Passo a passo:**
1. `y = 3x - 5`
2. `x = 3y - 5`
3. `x + 5 = 3y`
4. `y = (x + 5)/3`

**Resultado:** `f⁻¹(x) = (x + 5)/3`

**Verificação:**
`f(f⁻¹(x)) = 3((x + 5)/3) - 5 = x + 5 - 5 = x` ✅

### Exemplo 2: Função Racional
`f(x) = (2x + 1)/(x - 3)`

**Passo a passo:**
1. `y = (2x + 1)/(x - 3)`
2. `x = (2y + 1)/(y - 3)`
3. `x(y - 3) = 2y + 1`
4. `xy - 3x = 2y + 1`
5. `xy - 2y = 3x + 1`
6. `y(x - 2) = 3x + 1`
7. `y = (3x + 1)/(x - 2)`

**Resultado:** `f⁻¹(x) = (3x + 1)/(x - 2)`

---

## 💻 Implementação Computacional

### Algoritmo para Encontrar Inversas

```python
import sympy as sp

def encontrar_inversa(expressao, variavel='x'):
    """
    Encontra a inversa de uma função usando SymPy
    """
    x = sp.Symbol(variavel)
    y = sp.Symbol('y')
    
    # Define a função
    f = expressao
    
    # Resolve y = f(x) para x
    equacao = sp.Eq(y, f)
    solucao = sp.solve(equacao, x)
    
    if solucao:
        inversa = solucao[0].subs(y, x)  # Substitui y por x
        return inversa
    else:
        return "Função não possui inversa ou é muito complexa"

# Exemplos de uso
print("f(x) = 2x + 3 →", encontrar_inversa(2*x + 3))
print("f(x) = x² →", encontrar_inversa(x**2))  # Cuidado: assume domínio restrito
```

### Verificação Computacional da Inversa

```python
def verificar_inversa(f, f_inv, valores_teste):
    """
    Verifica se duas funções são inversas uma da outra
    """
    resultados = []
    for x in valores_teste:
        # f(f⁻¹(x)) deve ser igual a x
        comp1 = f(f_inv(x))
        # f⁻¹(f(x)) deve ser igual a x  
        comp2 = f_inv(f(x))
        
        resultados.append({
            'x': x,
            'f(f⁻¹(x))': comp1,
            'f⁻¹(f(x))': comp2,
            'é_inversa': abs(comp1 - x) < 1e-10 and abs(comp2 - x) < 1e-10
        })
    
    return resultados

# Teste com f(x) = 2x + 3 e f⁻¹(x) = (x - 3)/2
f = lambda x: 2*x + 3
f_inv = lambda x: (x - 3)/2

testes = verificar_inversa(f, f_inv, [-2, 0, 1, 5])
for teste in testes:
    print(f"x = {teste['x']}: f(f⁻¹(x)) = {teste['f(f⁻¹(x))']}, f⁻¹(f(x)) = {teste['f⁻¹(f(x))']} → {teste['é_inversa']}")
```

---

## 📝 Exercícios Resolvidos

> [!question] **Exercício 1**
> Verifique se `f(x) = √(x + 4)` e `g(x) = x² - 4` (com `x ≥ 0`) são inversas.

**Solução:**
1. `f(g(x)) = √((x² - 4) + 4) = √(x²) = x` (para `x ≥ 0`)
2. `g(f(x)) = (√(x + 4))² - 4 = (x + 4) - 4 = x`
3. **Conclusão**: São inversas no domínio `x ≥ 0`

> [!question] **Exercício 2**
> Encontre a inversa de `f(x) = 1 + ∛(x - 2)`

**Solução:**
1. `y = 1 + ∛(x - 2)`
2. `x = 1 + ∛(y - 2)`
3. `x - 1 = ∛(y - 2)`
4. `(x - 1)³ = y - 2`
5. `y = (x - 1)³ + 2`
6. **Resultado**: `f⁻¹(x) = (x - 1)³ + 2`

---

## 💡 Dicas Avançadas

> [!tip] Para Funções Trigonométricas
> - `sen⁻¹(x)` ou `arcsen(x)` → domínio: `[-1, 1]`, imagem: `[-π/2, π/2]`
> - `cos⁻¹(x)` ou `arccos(x)` → domínio: `[-1, 1]`, imagem: `[0, π]`
> - `tan⁻¹(x)` ou `arctan(x)` → domínio: `ℝ`, imagem: `(-π/2, π/2)`

> [!warning] Cuidado com Funções Definidas por Partes
> A inversa também será definida por partes, e cada parte corresponde a uma parte da função original.

> [!faq] E se a função for muito complexa?
> Use métodos numéricos como o método da bisseção ou Newton-Raphson para calcular valores específicos da inversa.

**Tags:** #pre-calculo #funções #inversas #bijetora #matemática #álgebra

---

## 🎯 Resumo Visual

```
Função Original: f(x) = 2x + 3
     x → [f] → y
     3 → [f] → 9
     0 → [f] → 3
    -1 → [f] → 1

Função Inversa: f⁻¹(x) = (x - 3)/2  
     y → [f⁻¹] → x
     9 → [f⁻¹] → 3
     3 → [f⁻¹] → 0
     1 → [f⁻¹] → -1
```

A função inversa é como "rebobinar" o processo da função original! 🔄