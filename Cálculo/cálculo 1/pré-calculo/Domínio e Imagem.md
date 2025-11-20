**Domínio, Imagem e Relações**

## 🎯 Domínio e Imagem de uma Função

Dois conceitos fundamentais para entender completamente qualquer função.

### 📌 Definições Formais

**Domínio**: Conjunto de todos os valores de entrada (valores de \(x\)) para os quais a função está definida.
`Dom(f) = { x ∈ ℝ | f(x) existe }`

**Imagem**: Conjunto de todos os valores de saída (valores de \(f(x)\)) que a função pode produzir.
`Im(f) = { y ∈ ℝ | ∃ x ∈ Dom(f) com f(x) = y }`

> [!info] Notação Alternativa
> - **Domínio**: `D(f)` ou simplesmente `D`
> - **Imagem**: `Im(f)` ou `CD(f)` (Contradomínio)

---

## 🔍 Como Determinar Domínio

### Restrições Comuns

> [!warning] Divisão por Zero
> Se `f(x) = 1/g(x)`, então `g(x) ≠ 0`
> **Exemplo**: `f(x) = 1/(x-2)` → `x - 2 ≠ 0` → `x ≠ 2`

> [!warning] Raiz Quadrada de Número Negativo
> Se `f(x) = √g(x)`, então `g(x) ≥ 0`
> **Exemplo**: `f(x) = √(x+3)` → `x + 3 ≥ 0` → `x ≥ -3`

> [!warning] Logaritmo de Número Não-Positivo
> Se `f(x) = log(g(x))`, então `g(x) > 0`
> **Exemplo**: `f(x) = ln(x-1)` → `x - 1 > 0` → `x > 1`

> [!example] Exemplo Completo
> Determine o domínio de `f(x) = √(x+2)/(x-3)`
> 1. **Raiz quadrada**: `x + 2 ≥ 0` → `x ≥ -2`
> 2. **Denominador**: `x - 3 ≠ 0` → `x ≠ 3`
> 3. **Domínio**: `[-2, 3) ∪ (3, ∞)`

---

## 📊 Como Determinar Imagem

### Métodos Práticos

> [!tip] Análise Gráfica
> Esboce o gráfico e observe quais valores de \(y\) são atingidos.

> [!tip] Resolução de Equações
> Para encontrar \(y\) na imagem, resolva \(f(x) = y\) para \(x\) e verifique se existe solução no domínio.

> [!example] Exemplo Prático
> Determine a imagem de `f(x) = x² + 1`
> - `x² ≥ 0` para todo \(x\) real
> - `x² + 1 ≥ 1`
> - **Imagem**: `[1, ∞)`

---

## 🎭 Relações vs Funções

### Diferenças Cruciais

> [!note] Definição de Relação
> Qualquer conjunto de pares ordenados \((x, y)\)

> [!abstract] Definição de Função
> Relação especial onde **cada elemento do domínio se relaciona com exatamente um elemento da imagem**

> [!warning] Teste da Linha Vertical
> - **Função**: Toda linha vertical intercepta o gráfico no máximo uma vez
> - **Relação (não-função)**: Alguma linha vertical intercepta o gráfico mais de uma vez

---

## 🔄 Funções Computacionais

### Implementação Prática

> [!example] Pseudocódigo para Verificar Função
> ```python
> def eh_função(relacao):
>     """
>     Verifica se uma relação é uma função
>     relacao: lista de pares (x, y)
>     """
>     valores_x = {}
>     for (x, y) in relacao:
>         if x in valores_x:
>             return False  # x se repete com y diferente
>         valores_x[x] = y
>     return True
> ```

> [!example] Cálculo de Domínio Programático
> ```python
> def calcular_dominio(funcao, restricoes):
>     """
>     Calcula o domínio baseado em restrições
>     """
>     dominio = "Todos os reais"
>     
>     if "denominador" in restricoes:
>         dominio = f"ℝ - {restricoes['denominador']}"
>     
>     if "raiz_quadrada" in restricoes:
>         expressao = restricoes['raiz_quadrada']
>         dominio = f"x ≥ {-expressao}"  # simplificado
>     
>     return dominio
> ```

---

## 📝 Exercícios de Fixação

> [!question] Determine Domínio e Imagem
> 1. `f(x) = 1/(x² - 4)`
> 2. `g(x) = √(9 - x²)`
> 3. `h(x) = |x - 2| + 1`

> [!example] Soluções
> 4. **Domínio**: `x² - 4 ≠ 0` → `x ≠ ±2` → `ℝ - {-2, 2}`
>    **Imagem**: `(-∞, -1/4] ∪ (0, ∞)`
> 
> 5. **Domínio**: `9 - x² ≥ 0` → `-3 ≤ x ≤ 3`
>    **Imagem**: `[0, 3]`
> 
> 6. **Domínio**: `ℝ` (não há restrições)
>    **Imagem**: `[1, ∞)`

---

## 💡 Dicas Importantes

> [!tip] Sempre Verifique
> - Identifique TODAS as operações problemáticas na função
> - Considere o contexto do problema (às vezes o domínio é restrito pelo contexto)
> - Para imagem, pense nos valores mínimo e máximo que a função pode assumir

> [!faq] E se a função for definida por partes?
> Determine o domínio de cada parte e faça a união, tomando cuidado com os pontos de transição.

**Tags:** [[pre-calculo]] [[funções]] [[domínio]] [[imagem]] [[relações]] [[matemática]]

---

## 🖥️ Contexto Computacional

### Implementação Prática em Python

> [!example] Classe para Análise de Funções
> ```python
> class AnalisadorFuncao:
>     def __init__(self, expressao):
>         self.expressao = expressao
>     
>     def avaliar(self, x):
>         """Avalia a função em um ponto x"""
>         try:
>             return eval(self.expressao, {'x': x, 'sqrt': math.sqrt, 'log': math.log})
>         except (ZeroDivisionError, ValueError):
>             return None
>     
>     def verificar_ponto_dominio(self, x):
>         """Verifica se x pertence ao domínio"""
>         return self.avaliar(x) is not None
> 
> # Exemplo de uso
> f = AnalisadorFuncao("1/(x-2)")
> print(f.verificar_ponto_dominio(2))  # False (divisão por zero)
> print(f.verificar_ponto_dominio(3))  # True
> ```

> [!tip] Aplicações no Mundo Real
> - **Validação de dados de entrada** em formulários
> - **Definição de intervalos válidos** em simulações
> - **Otimização de funções** restritas a domínios específicos
> - **Processamento de sinais** com restrições de amplitude

**Tags:** [[programação]] [[python]] [[computação]] [[matemática-aplicada]]