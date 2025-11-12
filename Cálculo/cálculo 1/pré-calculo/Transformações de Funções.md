**Transformações de Funções: A Arte de Modificar Gráficos**

## 🎨 Introdução às Transformações

Transformações são operações que modificam o gráfico de uma função base, permitindo criar novas funções a partir de funções conhecidas.

### 📌 Função Base
Chamamos de **função base** ou **função mãe** a função original antes das transformações.

```python
# Funções base comuns
def funcoes_base():
    bases = {
        'quadratica': lambda x: x**2,
        'linear': lambda x: x,
        'modulo': lambda x: abs(x),
        'cubica': lambda x: x**3,
        'raiz': lambda x: np.sqrt(x),
        'exponencial': lambda x: 2**x,
        'seno': lambda x: np.sin(x)
    }
    return bases
```

---

## 🧭 Tipos de Transformações

### 1. Translações Verticais

> [!info] Definição
> `g(x) = f(x) + c`
> - **c > 0**: Desloca para **cima**
> - **c < 0**: Desloca para **baixo**

**Efeito no Gráfico**: Movimento vertical sem alterar a forma

> [!example] Exemplos
> - `f(x) = x²` → `g(x) = x² + 3` (sobe 3 unidades)
> - `f(x) = sen(x)` → `h(x) = sen(x) - 2` (desce 2 unidades)

### 2. Translações Horizontais

> [!warning] Cuidado com o Sinal!
> `g(x) = f(x - h)`
> - **h > 0**: Desloca para **direita** 
> - **h < 0**: Desloca para **esquerda**

**Efeito no Gráfico**: Movimento horizontal sem alterar a forma

> [!example] Exemplos
> - `f(x) = x²` → `g(x) = (x - 4)²` (direita 4 unidades)
> - `f(x) = √x` → `h(x) = √(x + 5)` (esquerda 5 unidades)

```python
def translacao(f, horizontal=0, vertical=0):
    """
    Aplica translação a uma função
    """
    def funcao_transformada(x):
        return f(x - horizontal) + vertical
    return funcao_transformada

# Exemplo: f(x) = x² com translação
f_base = lambda x: x**2
f_transladada = translacao(f_base, horizontal=2, vertical=-1)
# Resultado: f(x) = (x-2)² - 1
```

---

## 📏 Alongamentos e Compressões

### 3. Alongamento/Compressão Vertical

> [!info] Definição
> `g(x) = a·f(x)`
> - **|a| > 1**: Alongamento vertical
> - **0 < |a| < 1**: Compressão vertical
> - **a < 0**: Reflexão sobre o eixo x

**Efeito no Gráfico**: "Estica" ou "achata" verticalmente

> [!example] Exemplos
> - `f(x) = x²` → `g(x) = 3x²` (alonga verticalmente por fator 3)
> - `f(x) = sen(x)` → `h(x) = 0.5·sen(x)` (comprime verticalmente)

### 4. Alongamento/Compressão Horizontal

> [!warning] Comportamento Inverso!
> `g(x) = f(b·x)`
> - **|b| > 1**: Compressão horizontal
> - **0 < |b| < 1**: Alongamento horizontal  
> - **b < 0**: Reflexão sobre o eixo y

**Efeito no Gráfico**: "Estica" ou "achata" horizontalmente

> [!example] Exemplos
> - `f(x) = sen(x)` → `g(x) = sen(2x)` (comprime horizontalmente)
> - `f(x) = x²` → `h(x) = (0.5x)²` (alonga horizontalmente)

```python
def escala(f, escala_horizontal=1, escala_vertical=1):
    """
    Aplica escala (alongamento/compressão) a uma função
    """
    def funcao_transformada(x):
        return escala_vertical * f(escala_horizontal * x)
    return funcao_transformada

# Exemplo: f(x) = sen(x) transformada
f_base = lambda x: np.sin(x)
f_escalada = escala(f_base, escala_horizontal=2, escala_vertical=0.5)
# Resultado: f(x) = 0.5·sen(2x)
```

---

## 🪞 Reflexões

### 5. Reflexão sobre o Eixo X

> [!info] Definição
> `g(x) = -f(x)`
> **Efeito**: Espelha o gráfico verticalmente

### 6. Reflexão sobre o Eixo Y

> [!info] Definição  
> `g(x) = f(-x)`
> **Efeito**: Espelha o gráfico horizontalmente

> [!example] Exemplos
> - `f(x) = x³` → `g(x) = -x³` (reflexão sobre eixo x)
> - `f(x) = eˣ` → `h(x) = e^(-x)` (reflexão sobre eixo y)

```python
def reflexao(f, eixo='x'):
    """
    Aplica reflexão a uma função
    """
    if eixo == 'x':
        return lambda x: -f(x)
    elif eixo == 'y':
        return lambda x: f(-x)
    else:
        return lambda x: -f(-x)  # Reflexão dupla (origem)

# Exemplos
f_base = lambda x: x**3
f_reflexao_x = reflexao(f_base, 'x')  # -x³
f_reflexao_y = reflexao(f_base, 'y')  # (-x)³ = -x³
```

---

## 🧩 Combinação de Transformações

### Ordem das Transformações

> [!important] Sequência Correta
> Para `g(x) = a·f(b(x - h)) + k`, aplique na ordem:
> 1. **Reflexões** (sinais negativos em a e b)
> 2. **Alongamentos/Compressões** (a e b)
> 3. **Translações** (h e k)

> [!tip] Macete Mnemônico
> **"R**efletir → **E**sticar → **M**over"** 
> (Reflect → Stretch → Move)

```python
def transformacao_completa(f, a=1, b=1, h=0, k=0):
    """
    Aplica todas as transformações na ordem correta
    g(x) = a·f(b(x - h)) + k
    """
    def funcao_transformada(x):
        # Ordem: 1. Translação horizontal (h)
        #        2. Escala horizontal (b)  
        #        3. Escala vertical (a)
        #        4. Translação vertical (k)
        return a * f(b * (x - h)) + k
    return funcao_transformada

# Exemplo completo
f_base = lambda x: x**2
g = transformacao_completa(f_base, a=2, b=0.5, h=3, k=-1)
# Resultado: g(x) = 2·(0.5(x-3))² - 1
```

---

## 📊 Tabela Resumo das Transformações

| Transformação | Forma Algébrica | Efeito no Gráfico |
|---------------|-----------------|-------------------|
| **Translação Vertical** | `f(x) + k` | Move para cima/baixo |
| **Translação Horizontal** | `f(x - h)` | Move para direita/esquerda |
| **Alongamento Vertical** | `a·f(x)` (a > 1) | Estica verticalmente |
| **Compressão Vertical** | `a·f(x)` (0 < a < 1) | Achata verticalmente |
| **Alongamento Horizontal** | `f(b·x)` (0 < b < 1) | Estica horizontalmente |
| **Compressão Horizontal** | `f(b·x)` (b > 1) | Achata horizontalmente |
| **Reflexão Eixo X** | `-f(x)` | Espelha verticalmente |
| **Reflexão Eixo Y** | `f(-x)` | Espelha horizontalmente |

---

## 🎯 Exemplos Detalhados

### Exemplo 1: Transformação da Parábola
**Função base**: `f(x) = x²`

Transformação: `g(x) = -2(x + 3)² + 4`

**Análise passo a passo:**
1. `(x + 3)`: Translação de 3 unidades para **esquerda**
2. `-2·`: 
   - Reflexão sobre eixo x (sinal negativo)
   - Alongamento vertical por fator 2
3. `+ 4`: Translação de 4 unidades para **cima**

**Resultado**: Parábola invertida, mais "fina", deslocada para esquerda e para cima.

### Exemplo 2: Transformação do Seno
**Função base**: `f(x) = sen(x)`

Transformação: `g(x) = 3·sen(2x - π) + 1`

**Reescrevendo**: `g(x) = 3·sen(2(x - π/2)) + 1`

**Análise:**
1. `2(x - π/2)`: 
   - Compressão horizontal por fator 2
   - Translação de π/2 para direita
2. `3·`: Alongamento vertical por fator 3
3. `+ 1`: Translação de 1 unidade para cima

```python
def analisar_transformacao(expressao, funcao_base):
    """
    Analisa os efeitos de uma transformação
    """
    componentes = {
        'amplitude': None,
        'periodo': None,
        'deslocamento_horizontal': 0,
        'deslocamento_vertical': 0,
        'reflexao_x': False,
        'reflexao_y': False
    }
    
    # Análise para funções trigonométricas
    if 'sen' in expressao or 'cos' in expressao:
        # Extrai coeficientes (simplificado)
        pass
    
    return componentes
```

---

## 🔍 Identificando Transformações a Partir do Gráfico

### Método Sistemático

> [!question] Perguntas para Identificação
> 1. **Posição**: Onde está o vértice/ponto característico?
> 2. **Orientação**: Está virado para cima/baixo? Crescente/decrescente?
> 3. **Forma**: Está mais "gordo" ou "magro" que a função base?
> 4. **Escala**: Qual a amplitude/abertura?

> [!example] Exemplo Prático
> Dado gráfico de `g(x)` que parece uma parábola:
> - Vértice em (2, -1) → `h = 2`, `k = -1`
> - Virada para baixo → `a < 0` 
> - Mais "fina" que x² → `|a| > 1`
> - **Função provável**: `g(x) = -2(x - 2)² - 1`

---

## 💻 Visualização Computacional

```python
import matplotlib.pyplot as plt
import numpy as np

def visualizar_transformacoes(f_base, transformacoes, x_range=(-5, 5)):
    """
    Visualiza múltiplas transformações de uma função base
    """
    x = np.linspace(x_range[0], x_range[1], 400)
    
    plt.figure(figsize=(12, 8))
    
    # Plota função base
    y_base = f_base(x)
    plt.plot(x, y_base, 'k-', linewidth=3, label='Função Base', alpha=0.7)
    
    # Plota funções transformadas
    cores = ['red', 'blue', 'green', 'orange', 'purple']
    for i, (transformacao, label) in enumerate(transformacoes):
        y_transformada = transformacao(x)
        plt.plot(x, y_transformada, 
                color=cores[i % len(cores)], 
                linewidth=2, 
                label=label,
                linestyle='--' if i > 0 else '-')
    
    plt.axhline(y=0, color='black', linewidth=0.5, alpha=0.3)
    plt.axvline(x=0, color='black', linewidth=0.5, alpha=0.3)
    plt.grid(True, alpha=0.3)
    plt.legend()
    plt.title('Transformações de Funções')
    plt.show()

# Exemplo: Transformações de f(x) = x²
f_base = lambda x: x**2
transformacoes = [
    (lambda x: (x-2)**2 + 1, '(x-2)² + 1'),
    (lambda x: -0.5*x**2, '-0.5x²'),
    (lambda x: 2*(x+1)**2 - 2, '2(x+1)² - 2')
]

visualizar_transformacoes(f_base, transformacoes)
```

---

## 📝 Exercícios de Aplicação

> [!question] **Exercício 1**
> Descreva as transformações aplicadas a `f(x) = √x` para obter `g(x) = -3√(x + 4) + 2`

**Solução:**
1. `√(x + 4)`: Translação de 4 unidades para esquerda
2. `-3·`: 
   - Reflexão sobre eixo x
   - Alongamento vertical por fator 3
3. `+ 2`: Translação de 2 unidades para cima

> [!question] **Exercício 2**  
> Escreva a função resultante de aplicar a `f(x) = |x|`:
> - Reflexão sobre eixo x
> - Compressão vertical por fator 1/2
> - Translação de 3 unidades para direita
> - Translação de 1 unidade para baixo

**Solução:** `g(x) = -½|x - 3| - 1`

---

## 💡 Dicas Avançadas

> [!tip] Para Funções Periódicas
> - Translações horizontais múltiplas do período são equivalentes
> - `sen(x + 2π) = sen(x)` (mesma função)

> [!warning] Cuidado com a Ordem
> `f(2x + 3)` NÃO é translação de 3 e depois compressão!
> **Correto**: `f(2(x + 1.5))` → compressão depois translação

> [!faq] E se a transformação for muito complexa?
> Quebre em etapas e desenhe o gráfico em cada etapa para visualizar o processo.

**Tags:** #pre-calculo #funções #transformações #gráficos #matemática #álgebra

---

## 🎯 Resumo Mnemônico


Dentro dos parênteses: AFETA X (horizontal)
- f(x ± h) → translação horizontal
- f(b·x) → escala horizontal

Fora dos parênteses: AFETA Y (vertical)  
- a·f(x) → escala vertical
- f(x) ± k → translação vertical

Negativo: REFLEXÃO
- -f(x) → espelha no eixo x
- f(-x) → espelha no eixo y


> [!cite] As transformações são como "editar" gráficos - você pode movê-los, redimensioná-los e espelhá-los! 🎨✨

