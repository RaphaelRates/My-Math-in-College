# 📘 EDO — Equações Diferenciais Ordinárias

---

### ⚙️ **O que é uma EDO**

> Uma **Equação Diferencial Ordinária (EDO)** é uma equação que relaciona uma função $y(x)$ com uma ou mais de suas derivadas em relação a **uma única** variável independente $x$.  
> Exemplo:  
> $$y'(x) = f(x, y)$$
> 
> Em palavras simples: ela descreve **como uma quantidade muda** ao longo do tempo (ou de outra variável), com base nessa própria quantidade.

---

### 🎯 **Do que se trata**

As EDOs aparecem em quase tudo que envolve variação contínua:

- 🌱 Crescimento populacional
- ⚡ Circuitos elétricos
- ⚙️ Movimento de partículas
- 🧪 Reações químicas

Elas permitem **modelar, prever e entender** o comportamento dinâmico de sistemas naturais e artificiais.

---

### 🧩 **Classificação rápida**

| Tipo           | Descrição                                          | Exemplo                  |
| -------------- | -------------------------------------------------- | ------------------------ |
| **Ordem**      | Maior derivada presente                            | $y'' + y = 0$ → 2ª ordem |
| **Linear**     | $a_n(x)y^{(n)} + \dots + a_0(x)y = g(x)$           | $y' + y = x$             |
| **Não Linear** | Quando depende de potências ou produtos de $y, y'$ | $y' = y^2 + x$           |
| **Autônoma**   | Não depende explicitamente de $x$                  | $y' = y(1 - y)$          |
| **Separável**  | Pode ser escrita como $g(y)dy = h(x)dx$            | $y' = xy^2$              |

---

### 🎯 **Problema de Valor Inicial (PVI)**

Forma geral:  
$$\begin{cases}  
y' = f(x, y), \  
y(x_0) = y_0  
\end{cases}$$

Um **PVI** busca a função $y(x)$ que satisfaz a EDO e passa pelo ponto inicial $(x_0, y_0)$.

---

### 🧠 **Teorema de Existência e Unicidade**

**Intuição:**  
Se $f(x, y)$ for contínua e "comportada" perto de $(x_0, y_0)$, então existe **uma única solução** local para o PVI.

**Versão curta:**  
Se $f$ e $\partial f / \partial y$ forem contínuas numa vizinhança de $(x_0, y_0)$, então existe $\varepsilon > 0$ tal que há uma única solução $y(x)$ em $(x_0 - \varepsilon, x_0 + \varepsilon)$.

---

### 🧮 **Métodos de Resolução**

| Tipo                          | Ideia básica                                    | Exemplo                             |
| ----------------------------- | ----------------------------------------------- | ----------------------------------- |
| **Separáveis**                | Separe e integre                                | $y' = xy^2 → \frac{dy}{y^2} = xdx$  |
| **Linear 1ª ordem**           | Fator integrante $\mu = e^{\int p(x)dx}$        | $y' - 2y = e^x$                     |
| **Exatas**                    | $\partial M/\partial y = \partial N/\partial x$ | $Mdx + Ndy = 0$                     |
| **2ª ordem linear homogênea** | Resolva equação característica                  | $y'' - 3y' + 2y = 0$                |
| **Numéricas**                 | Euler, RK4, métodos implícitos                  | quando solução analítica não existe |

---

### ✏️ **Exemplos resolvidos**

**1️⃣ Separável**  
$$y' = xy^2$$  
$$\frac{dy}{y^2} = xdx$$ 
$$-\frac{1}{y} = \frac{x^2}{2} + C \Rightarrow y(x) = -\frac{1}{\frac{x^2}{2} + C}$$

---

**2️⃣ Linear de 1ª ordem**  
$$y' - 2y = e^x$$
$$\mu = e^{-2x}, \quad \frac{d}{dx}(y e^{-2x}) = e^{-x}$$ 
$$y = -e^x + Ce^{2x}$$

---

**3️⃣ 2ª ordem com coeficientes constantes**  
$$y'' - 3y' + 2y = 0$$ 
$$r^2 - 3r + 2 = 0 \Rightarrow (r - 1)(r - 2) = 0$$ 
$$y = C_1 e^x + C_2 e^{2x}$$

---

### 💡 **Propriedades importantes**

- A **superposição** só vale para EDOs **lineares homogêneas**.
- Soluções podem explodir em tempo finito (não existe solução global).
- Pequenas variações nos dados iniciais podem gerar grandes diferenças → sensibilidade (especialmente em não lineares).

---

### 🔢 **Nota sobre métodos numéricos**

Quando não há solução analítica:

- **Euler**: simples, mas impreciso.
- **Runge–Kutta (RK4)**: ótimo equilíbrio entre precisão e custo.
- **Métodos implícitos**: ideais para equações rígidas.

> 💬 _Use bibliotecas como `scipy.integrate.solve_ivp` (Python) para resolver EDOs numericamente._

---

### 🌍 **Aplicações práticas**

| Área          | Exemplo                       |
| ------------- | ----------------------------- |
| Física        | Movimento: $m x'' = F(x, x')$ |
| Epidemiologia | Modelos SIR                   |
| Economia      | Crescimento e ciclos          |
| Engenharia    | Circuitos RLC, controle       |
| Biologia      | Dinâmica populacional         |

---

#### 🏷️ Tags

`#matematica` `#EDO` `#diferenciais` `#modelagem`
