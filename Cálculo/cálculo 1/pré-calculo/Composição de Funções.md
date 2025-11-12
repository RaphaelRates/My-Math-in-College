## 🧮 Composição de Funções

A composição de funções é a aplicação de uma função ao resultado de outra, criando uma nova função.

### 📌 Definição Formal

Dadas duas funções `f` e `g`, a **composição de f com g**, denotada por `f ∘ g` (lê-se "f círculo g"), é definida por:
`(f ∘ g)(x) = f(g(x))`

> [!info] Domínio da Composta
> O domínio de `(f ∘ g)(x)` consiste em todos os valores de `x` no domínio de `g` para os quais `g(x)` está no domínio de `f`.
> - `Dom(f ∘ g) = { x ∈ Dom(g) | g(x) ∈ Dom(f) }`

---

## 🔢 Como Calcular

### Passo a Passo
Para calcular `(f ∘ g)(x)`:
1.  Calcule `g(x)`.
2.  Tome esse resultado e substitua em `f`, ou seja, calcule `f(g(x))`.

> [!example] Exemplo Prático
> Se `f(x) = x²` e `g(x) = x + 3`:
> 1.  `(f ∘ g)(x) = f(g(x)) = f(x + 3) = (x + 3)²`
> 2.  `(g ∘ f)(x) = g(f(x)) = g(x²) = x² + 3`
>
> *Observe que `(f ∘ g)(x) ≠ (g ∘ f)(x)` na maioria dos casos. A ordem importa!*

---

## ⚠️ Propriedades Importantes

> [!warning] A Composição não é Comutativa
> De modo geral, `f ∘ g ≠ g ∘ f`. A ordem em que as funções são aplicadas altera o resultado final.

> [!tip] Propriedade Associativa
> A composição de funções é **associativa**:
> `(f ∘ g) ∘ h = f ∘ (g ∘ h)`
> Isso significa que podemos definir uma função composta `f ∘ g ∘ h` sem ambiguidade.

---

## 🆔 O Elemento Identidade

> [!abstract] Função Identidade
> A função `I(x) = x` é o **elemento identidade** da composição.
> Para qualquer função `f`:
> `(f ∘ I)(x) = (I ∘ f)(x) = f(x)`

---

## 🔍 Decompondo Funções

Uma habilidade crucial é decompor uma função complexa em funções mais simples.

> [!question] Como Decompor?
> Dada uma função `H(x)`, encontre funções `f` e `g` tais que `H(x) = (f ∘ g)(x)`.
> - Pergunte-se: "Se eu tivesse que calcular `H(x)` em uma calculadora, qual operação eu faria **por último**?" Essa última operação geralmente é a função externa, `f`.

> [!example] Exemplo de Decomposição
> Decomponha `H(x) = √(2x + 1)`.
> 1.  A operação final é a raiz quadrada. Portanto, a função externa é `f(x) = √x`.
> 2.  O "dentro" da raiz é `2x + 1`. Portanto, a função interna é `g(x) = 2x + 1`.
> 3.  Verificação: `(f ∘ g)(x) = f(g(x)) = f(2x + 1) = √(2x + 1) = H(x)`.

---

## 📈 Análise Gráfica e de Domínio

> [!note] Domínio e Imagem
> Sempre verifique o domínio da função resultante. O valor `g(x)` deve pertencer ao domínio de `f`. A imagem da composta é um subconjunto da imagem de `f`.

> [!faq] É possível compor mais de duas funções?
> Sim! Podemos ter composições do tipo `(f ∘ g ∘ h)(x) = f(g(h(x)))`. O processo é o mesmo: aplicar as funções da direita para a esquerda.

---

**Tags:** #pre-calculo #funções #composição #matemática