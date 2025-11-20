
---

## 🚫 O que NÃO é Função?

> [!danger] Violações da Definição
> 
> **1. Um elemento do domínio sem correspondência:**
> ```
> A = {1, 2, 3}, B = {a, b}
> 1 → a
> 2 → b
> 3 → ?      ❌ Não é função
> ```
> 
> **2. Um elemento com múltiplas correspondências:**
> ```
> A = {1, 2}, B = {a, b, c}
> 1 → a
> 1 → b      ❌ Não é função
> 2 → c
> ```

> [!example] Casos Comuns que Não São Funções
> - $y^2 = x$ (para $x > 0$, temos $y = \sqrt{x}$ e $y = -\sqrt{x}$)
> - Relações que dão mais de um resultado para mesma entrada

---

## 🔄 Funções Definidas por Partes

> [!note] Funções com Múltiplas Expressões
> Funções que usam fórmulas diferentes em diferentes intervalos do domínio.
> 
> ```math
> f(x) = \begin{cases}
> x^2 & \text{se } x < 0 \\
> 2x + 1 & \text{se } 0 \leq x \leq 2 \\
> 5 & \text{se } x > 2
> \end{cases}
> ```

> [!example] Cálculo com Função por Partes
> Para $f(x)$ acima:
> - $f(-2) = (-2)^2 = 4$
> - $f(1) = 2(1) + 1 = 3$
> - $f(3) = 5$

---

## 📚 Aplicações Práticas

> [!real-world] Exemplos do Mundo Real
> 
> **1. Função de Conversão de Temperatura:**
> $C(f) = \frac{5}{9}(f - 32)$ (Fahrenheit para Celsius)
> 
> **2. Função de Frete:**
> ```
> f(peso) = { 
>   10,00   se peso ≤ 1kg
>   15,00   se 1kg < peso ≤ 5kg
>   25,00   se peso > 5kg
> }
> ```
> 
> **3. Função de Desconto:**
> $V(q) = q \times preço \times \text{ (1 - desconto)}$

---

## 💡 Dicas Importantes

> [!tip] Para Identificar Funções
> 1. **Pergunte**: "Para este x, existe UM E SOMENTE UM y?"
> 2. **Verifique** o domínio: há restrições?
> 3. **Use** o teste da linha vertical em gráficos
> 4. **Lembre-se**: A mesma entrada não pode produzir saídas diferentes

> [!warning] Erros Comuns
> - Confundir imagem com contradomínio
> - Esquecer de determinar o domínio natural
> - Assumir que toda equação em x e y define y como função de x

**Tags:** [[pre-calculo]] [[funções]] [[matemática]] [[álgebra]] [[domínio]] [[imagem]]