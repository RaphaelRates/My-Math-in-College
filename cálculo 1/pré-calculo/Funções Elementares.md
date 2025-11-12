**Funções Elementares: O Alfabeto da Matemática**

## 📚 Classificação das Funções Elementares

As funções elementares são os "blocos de construção" básicos para funções mais complexas.

### 🎯 Funções Polinomiais

> [!info] Definição Geral
> `P(x) = aₙxⁿ + aₙ₋₁xⁿ⁻¹ + ... + a₁x + a₀`
> onde `aₙ ≠ 0` e `n` é um inteiro não-negativo

#### Grau 0: Função Constante
`f(x) = c`
- **Domínio**: `ℝ`
- **Imagem**: `{c}`
- **Gráfico**: Reta horizontal
- **Exemplo**: `f(x) = 5`

#### Grau 1: Função Linear
`f(x) = ax + b`
- **Domínio**: `ℝ`
- **Imagem**: `ℝ`
- **Gráfico**: Reta com inclinação `a`
- **Taxa de variação constante**
- **Exemplo**: `f(x) = 2x - 3`

#### Grau 2: Função Quadrática
`f(x) = ax² + bx + c`
- **Domínio**: `ℝ`
- **Imagem**: 
  - Se `a > 0`: `[y_v, ∞)`
  - Se `a < 0`: `(-∞, y_v]`
- **Gráfico**: Parábola
- **Vértice**: `x_v = -b/(2a)`
- **Exemplo**: `f(x) = x² - 4x + 3`

```python
def analisar_polinomio(grau, coeficientes):
    """
    Analisa propriedades de funções polinomiais
    """
    if grau == 0:
        return f"Função constante: f(x) = {coeficientes[0]}"
    elif grau == 1:
        a, b = coeficientes
        return f"Função linear: f(x) = {a}x + {b}, inclinação = {a}"
    elif grau == 2:
        a, b, c = coeficientes
        vertice_x = -b/(2*a)
        vertice_y = a*vertice_x**2 + b*vertice_x + c
        return f"Função quadrática: vértice em ({vertice_x:.2f}, {vertice_y:.2f})"
```

---

## 🔄 Funções Racionais

> [!warning] Definição e Cuidados
> `f(x) = P(x)/Q(x)` onde `P` e `Q` são polinômios
> - **Domínio**: `ℝ - {raízes de Q(x)}`
> - **Assíntotas verticais** nos zeros do denominador

### Exemplos Importantes

#### Função Recíproca
`f(x) = 1/x`
- **Domínio**: `ℝ - {0}`
- **Imagem**: `ℝ - {0}`
- **Assíntotas**: `x = 0` e `y = 0`
- **Simetria**: Ímpar `(f(-x) = -f(x))`

#### Função Racional Linear
`f(x) = (ax + b)/(cx + d)`
- **Domínio**: `ℝ - {-d/c}`
- **Assíntota vertical**: `x = -d/c`
- **Assíntota horizontal**: `y = a/c`

```python
def analisar_racional(numerador, denominador):
    """
    Analisa funções racionais
    """
    # Encontra assíntotas verticais
    raizes_denominador = np.roots(denominador)
    assintotas_verticais = raizes_denominador
    
    # Assíntota horizontal
    grau_num = len(numerador) - 1
    grau_den = len(denominador) - 1
    
    if grau_num < grau_den:
        assintota_horizontal = 0
    elif grau_num == grau_den:
        assintota_horizontal = numerador[0] / denominador[0]
    else:
        assintota_horizontal = "Não existe (comportamento assintótico polinomial)"
    
    return {
        'assintotas_verticais': assintotas_verticais,
        'assintota_horizontal': assintota_horizontal,
        'dominio': f"ℝ - {set(assintotas_verticais)}"
    }
```

---

## 📈 Funções Algébricas

### Funções Potência
`f(x) = xⁿ`

| Tipo | Exemplo | Domínio | Imagem | Características |
|------|---------|---------|---------|-----------------|
| n par | `x²` | `ℝ` | `[0, ∞)` | Simetria par |
| n ímpar | `x³` | `ℝ` | `ℝ` | Simetria ímpar |
| n negativo | `1/x` | `ℝ - {0}` | `ℝ - {0}` | Assíntotas |

### Funções Radicais
`f(x) = ⁿ√x` ou `x^(1/n)`

#### Raiz Quadrada
`f(x) = √x`
- **Domínio**: `[0, ∞)`
- **Imagem**: `[0, ∞)`
- **Inversa** de `x²` (domínio restrito)

#### Raiz Cúbica
`f(x) = ³√x`
- **Domínio**: `ℝ`
- **Imagem**: `ℝ`
- **Inversa** de `x³`

---

## 🌊 Funções Trigonométricas

### Funções Básicas

#### Seno e Cosseno
`f(x) = sen(x)`, `g(x) = cos(x)`
- **Domínio**: `ℝ`
- **Imagem**: `[-1, 1]`
- **Período**: `2π`
- **Paridade**: Seno é ímpar, Cosseno é par

#### Tangente
`f(x) = tan(x) = sen(x)/cos(x)`
- **Domínio**: `ℝ - {π/2 + kπ}`
- **Imagem**: `ℝ`
- **Período**: `π`
- **Assíntotas verticais** em `x = π/2 + kπ`

```python
def propriedades_trigonometricas(funcao):
    """
    Retorna propriedades das funções trigonométricas
    """
    propriedades = {
        'sen': {'periodo': 2*np.pi, 'imagem': [-1, 1], 'paridade': 'ímpar'},
        'cos': {'periodo': 2*np.pi, 'imagem': [-1, 1], 'paridade': 'par'},
        'tan': {'periodo': np.pi, 'imagem': 'ℝ', 'paridade': 'ímpar'},
        'cot': {'periodo': np.pi, 'imagem': 'ℝ', 'paridade': 'ímpar'},
        'sec': {'periodo': 2*np.pi, 'imagem': '(-∞,-1]∪[1,∞)', 'paridade': 'par'},
        'csc': {'periodo': 2*np.pi, 'imagem': '(-∞,-1]∪[1,∞)', 'paridade': 'ímpar'}
    }
    return propriedades.get(funcao, "Função não encontrada")
```

---

## 🚀 Funções Exponenciais e Logarítmicas

### Função Exponencial
`f(x) = aˣ` onde `a > 0`, `a ≠ 1`
- **Domínio**: `ℝ`
- **Imagem**: `(0, ∞)`
- **Assíntota horizontal**: `y = 0`
- **Crescimento**:
  - Se `a > 1`: Crescente
  - Se `0 < a < 1`: Decrescente

#### Exponencial Natural
`f(x) = eˣ`
- **Propriedade única**: `d/dx[eˣ] = eˣ`

### Função Logarítmica
`f(x) = logₐ(x)` onde `a > 0`, `a ≠ 1`
- **Domínio**: `(0, ∞)`
- **Imagem**: `ℝ`
- **Assíntota vertical**: `x = 0`
- **Inversa** da exponencial

#### Logaritmo Natural
`f(x) = ln(x)`
- **Base**: `e ≈ 2.71828`
- **Propriedade**: `ln(eˣ) = x`, `e^(ln(x)) = x`

```python
import numpy as np
import matplotlib.pyplot as plt

def comparar_exponenciais(bases, x_range=(-2, 2)):
    """
    Compara diferentes funções exponenciais
    """
    x = np.linspace(x_range[0], x_range[1], 100)
    
    plt.figure(figsize=(12, 8))
    for a in bases:
        if a > 0 and a != 1:
            y = a ** x
            plt.plot(x, y, label=f'{a}ˣ', linewidth=2)
    
    plt.axhline(y=1, color='k', linestyle='--', alpha=0.5)
    plt.axvline(x=0, color='k', linestyle='--', alpha=0.5)
    plt.legend()
    plt.title('Funções Exponenciais')
    plt.grid(True, alpha=0.3)
    plt.show()

# Exemplo de uso
comparar_exponenciais([0.5, 1.5, 2, 3])
```

---

## 🎭 Funções Definidas por Partes

### Definição Geral
`f(x) = { expressão₁ se condição₁, expressão₂ se condição₂, ... }`

### Exemplos Clássicos

#### Função Valor Absoluto
`f(x) = |x| = { x se x ≥ 0, -x se x < 0 }`
- **Domínio**: `ℝ`
- **Imagem**: `[0, ∞)`
- **V-form** no gráfico

#### Função Sinal
`f(x) = sgn(x) = { 1 se x > 0, 0 se x = 0, -1 se x < 0 }`
- **Domínio**: `ℝ`
- **Imagem**: `{-1, 0, 1}`

#### Função Maior Inteiro
`f(x) = ⌊x⌋` (floor function)
- **Domínio**: `ℝ`
- **Imagem**: `ℤ`
- **Descontínua** em todos os inteiros

```python
def funcao_parte_inteira(x):
    """
    Implementa a função maior inteiro (floor)
    """
    return np.floor(x)

def funcao_valor_absoluto(x):
    """
    Implementa |x|
    """
    return np.abs(x)

def funcao_definida_partes(x):
    """
    Exemplo: f(x) = { x² se x < 0, 2x se x ≥ 0 }
    """
    return np.where(x < 0, x**2, 2*x)
```

---

## 📊 Tabela Resumo das Funções Elementares

| Função | Forma | Domínio | Imagem | Características |
|--------|-------|---------|---------|-----------------|
| **Constante** | `f(x) = c` | `ℝ` | `{c}` | Reta horizontal |
| **Linear** | `f(x) = ax + b` | `ℝ` | `ℝ` | Reta inclinada |
| **Quadrática** | `f(x) = ax² + bx + c` | `ℝ` | Depende de `a` | Parábola |
| **Polinomial** | `P(x)` | `ℝ` | Depende do grau | Suave, contínua |
| **Racional** | `P(x)/Q(x)` | `ℝ - {raízes Q}` | Variável | Assíntotas |
| **Exponencial** | `aˣ` | `ℝ` | `(0, ∞)` | Crescimento rápido |
| **Logarítmica** | `logₐ(x)` | `(0, ∞)` | `ℝ` | Crescimento lento |
| **Seno** | `sen(x)` | `ℝ` | `[-1, 1]` | Periódica, ímpar |
| **Cosseno** | `cos(x)` | `ℝ` | `[-1, 1]` | Periódica, par |
| **Tangente** | `tan(x)` | `ℝ - {π/2+kπ}` | `ℝ` | Periódica, assíntotas |
| **Raiz** | `√x` | `[0, ∞)` | `[0, ∞)` | Meia parábola |
| **Absoluto** | `|x|` | `ℝ` | `[0, ∞)` | Forma em V |

---

## 🔧 Operações com Funções Elementares

### Combinações Básicas

> [!tip] Soma e Diferença
> `(f ± g)(x) = f(x) ± g(x)`
> - Domínio: `Dom(f) ∩ Dom(g)`

> [!tip] Produto e Quociente
> `(f·g)(x) = f(x)·g(x)`
> `(f/g)(x) = f(x)/g(x)` (com `g(x) ≠ 0`)

> [!tip] Composição
> `(f ∘ g)(x) = f(g(x))`
> - Domínio: `{x ∈ Dom(g) | g(x) ∈ Dom(f)}`

```python
def operacoes_funcoes(f, g, operacao):
    """
    Realiza operações entre funções
    """
    if operacao == 'soma':
        return lambda x: f(x) + g(x)
    elif operacao == 'produto':
        return lambda x: f(x) * g(x)
    elif operacao == 'composicao':
        return lambda x: f(g(x))
    elif operacao == 'quociente':
        return lambda x: f(x) / g(x) if g(x) != 0 else float('inf')
```

---

## 💡 Aplicações Práticas

> [!example] **Crescimento Populacional**
> `P(t) = P₀·e^(rt)` - Modelo exponencial

> [!example] **Movimento Harmônico**
> `x(t) = A·cos(ωt + φ)` - Oscilações

> [!example] **Queda Livre**
> `h(t) = h₀ - (1/2)gt²` - Função quadrática

> [!example] **Decaimento Radioativo**
> `m(t) = m₀·(1/2)^(t/T)` - Meia-vida

**Tags:** #pre-calculo #funções #matemática #álgebra #trigonometria #exponencial #logaritmo

---

## 🎯 Resumo Final

As funções elementares formam o **vocabulário básico** da matemática aplicada:
- **Polinomiais**: Comportamento suave e previsível
- **Exponenciais**: Crescimento/decrescimento rápido  
- **Logarítmicas**: Crescimento lento, inversas das exponenciais
- **Trigonométricas**: Comportamento periódico e oscilatório
- **Racionais**: Comportamento assintótico interessante

Dominar essas funções é essencial para avançar em cálculo, física, engenharia e ciências! 🚀