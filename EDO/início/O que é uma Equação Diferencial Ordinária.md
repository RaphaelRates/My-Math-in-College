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

As **Equações Diferenciais Ordinárias (EDOs)** são o coração da modelagem matemática de **sistemas dinâmicos** — isto é, qualquer fenômeno que **muda ao longo do tempo ou de outra variável contínua**.

Em vez de descrever _apenas o estado atual_ de algo, uma EDO descreve **como esse estado muda**.  
Se uma variável $y(t)$ representa algo que evolui com o tempo, a EDO diz _qual é a regra dessa mudança_ — ou seja, a taxa $y'(t)$.
#### 💡 Intuição fundamental

Imagine que $y(t)$ mede uma quantidade qualquer: população, temperatura, tensão elétrica, posição de um corpo...  
A EDO diz **como o ritmo de variação dessa quantidade depende dela mesma ou do tempo.**

Exemplo genérico:

$$\frac{dy}{dt} = f(t, y)$$

Significa: _a velocidade com que $y$ muda no instante $t$ depende do valor atual de $y$ e talvez do próprio $t$._ Resolver a EDO é descobrir **a trajetória completa** de $y(t)$.
#### ⚙️ Exemplos conceituais por área

| Área                      | Fenômeno                 | EDO típica                            | Interpretação                                                       |
| ------------------------- | ------------------------ | ------------------------------------- | ------------------------------------------------------------------- |
| 🌱 **Biologia**           | Crescimento populacional | $\frac{dy}{dt} = ky(1 - \frac{y}{K})$ | Cresce rápido no início, estabiliza no limite (K)                   |
| ⚡ **Engenharia elétrica** | Circuito RC              | $RC\frac{dV}{dt} + V = E(t)$          | A tensão no capacitor responde gradualmente à variação do sinal     |
| ⚙️ **Física clássica**    | Movimento sob força      | $m\frac{d^2x}{dt^2} = F(x, v, t)$     | A segunda derivada da posição (aceleração) é determinada pela força |
| 🧪 **Química**            | Reação (A \rightarrow B) | $\frac{d[A]}{dt} = -k[A]$             | A concentração de (A) decai exponencialmente                        |
| 💰 **Economia**           | Crescimento de capital   | $\frac{dK}{dt} = sY - \delta K$       | Capital cresce pelo investimento e decai pela depreciação           |
| 🌡️ **Termodinâmica**     | Troca de calor           | $\frac{dT}{dt} = -k(T - T_{amb})$     | Temperatura tende ao equilíbrio com o ambiente                      |
#### 🔍 Visão conceitual

As EDOs permitem **entender leis de evolução**:

- Como um sistema **parte de um estado inicial** e se move ao longo do tempo.
- Quais estados são **estáveis** (onde o sistema tende a ficar).
- Quais trajetórias **divergem ou oscilam**.

São a ferramenta que conecta **observações empíricas** (dados) a **modelos teóricos** (leis matemáticas).

| Conceito                         | O que representa                                         |
| -------------------------------- | -------------------------------------------------------- |
| Variável dependente $y$          | Quantidade que muda (posição, temperatura, população...) |
| Variável independente $x$ ou $t$ | “Eixo do tempo” ou outra variável contínua               |
| Derivada $y'$, $y''$, …          | Taxa de mudança de $y$                                   |
| EDO                              | Regra que descreve como $y$ muda                         |
| Solução $y(x)$                   | A trajetória ou evolução completa do sistema             |

> 💬 **Em essência:**  
> uma EDO transforma _mudança_ em _previsão_.  
> Dado o estado atual e a regra de variação, podemos descobrir o passado, o futuro e o comportamento global do sistema.


---

### 🧩 **Classificação rápida**

| Tipo           | Descrição                                          | Exemplo                  |
| -------------- | -------------------------------------------------- | ------------------------ |
| **Ordem**      | Maior derivada presente                            | $y'' + y = 0$ → 2ª ordem |
| **Linear**     | $a_n(x)y^{(n)} + \dots + a_0(x)y = g(x)$           | $y' + y = x$             |
| **Não Linear** | Quando depende de potências ou produtos de $y, y'$ | $y' = y^2 + x$           |
| **Autônoma**   | Não depende explicitamente de $x$                  | $y' = y(1 - y)$          |
| **Separável**  | Pode ser escrita como $g(y)dy = h(x)dx$            | $y' = xy^2$              |

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
