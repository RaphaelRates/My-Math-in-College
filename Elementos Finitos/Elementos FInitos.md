---
tipo: sumario
materia: Métodos dos Elementos Finitos
tags:
  - matematica
  - sumario
  - elementos-finitos
---

# 🧩 Métodos dos Elementos Finitos

> [!abstract] Visão geral
> Fundamentos, formulação, implementação, aplicações e exercícios de elementos finitos.

> [!tip] Como usar este sumário
> Use os links de navegação para acessar as seções. Quando houver blocos recolhíveis, expanda-os para consultar os tópicos.

## 🧭 Navegação rápida

| Seção | Acesso |
| --- | --- |
| 01 | [[#📚 SUMÁRIO ESTRUTURADO: MÉTODOS DOS ELEMENTOS FINITOS (FEM)\|📚 SUMÁRIO ESTRUTURADO: MÉTODOS DOS ELEMENTOS FINITOS (FEM)]] |
| 02 | [[#Fundamentos de Elementos Finitos\|Fundamentos de Elementos Finitos]] |
| 03 | [[#Formulação Matemática de Elementos Finitos\|Formulação Matemática de Elementos Finitos]] |
| 04 | [[#Tipos de Elementos\|Tipos de Elementos]] |
| 05 | [[#Montagem do Sistema Global\|Montagem do Sistema Global]] |
| 06 | [[#Integração Numérica\|Integração Numérica]] |
| 07 | [[#Solução do Sistema Linear\|Solução do Sistema Linear]] |
| 08 | [[#Análise de Erro e Convergência\|Análise de Erro e Convergência]] |
| 09 | [[#Aplicações por Domínio\|Aplicações por Domínio]] |
| 10 | [[#Software e Implementação\|Software e Implementação]] |
| 11 | [[#Avanços e Tópicos Especiais\|Avanços e Tópicos Especiais]] |
| 12 | [[#Exercícios e Problemas Clássicos\|Exercícios e Problemas Clássicos]] |

---

## 📚 SUMÁRIO ESTRUTURADO: MÉTODOS DOS ELEMENTOS FINITOS (FEM)

---

## Fundamentos de Elementos Finitos

[[Fundamentos de Elementos Finitos]]

> [!note]- [[Conceitos Fundamentais]]
> - Discretização do domínio contínuo em subdomínios (elementos finitos)
> - Aproximação por partes usando funções de base polinomiais
> - Formulação fraca vs. formulação forte de EDPs
> - Funções de forma (shape functions)

> [!note]- [[Motivação Física]]
> - Problemas de valor de contorno (PVC)
> - Equações diferenciais parciais (EDPs): Poisson, Elasticidade, Navier-Stokes
> - Quando métodos analíticos falham → necessidade numérica

---

## Formulação Matemática de Elementos Finitos

[[Formulação Matemática de Elementos Finitos]]

> [!note]- [[Formulação Fraca (Método dos Resíduos Ponderados)]]
> - Função teste (weight function)
> - Integração por partes → redução da ordem da derivada
> - Condições de contorno naturais vs. essenciais
> - Forma variacional do problema

> [!note]- [[Método de Galerkin]]
> - Escolha das funções teste = funções de base
> - Aproximação de Galerkin: $u_h(x) = \sum_{j=1}^N u_j \phi_j(x)$
> - Sistema linear resultante: $[K]\{u\} = \{F\}$

---

## Tipos de Elementos

[[Tipos de Elementos]]

> [!note]- [[Classificação por Dimensão]]
> - 1D: Elementos lineares (2 nós) e quadráticos (3 nós)
> - 2D: Triângulos (linear, quadrático), quadriláteros
> - 3D: Tetraedros, hexaedros (blocos)

> [!note]- [[Funções de Forma (Shape Functions)]]
> - Coordenadas naturais ($\xi, \eta, \zeta$)
> - Funções de forma lineares: $\phi_i(\xi) = \frac{1 \pm \xi}{2}$
> - Funções de forma quadráticas: pontos interiores
> - Propriedade: $\phi_i(x_j) = \delta_{ij}$ (Kronecker)

> [!note]- [[Elementos Isoparamétricos]]
> - Mapeamento do elemento real → elemento mestre
> - Jacobiano da transformação
> - Integração numérica no elemento mestre

---

## Montagem do Sistema Global

[[Montagem do Sistema Global]]

> [!note]- [[Matriz de Rigidez Elementar]]
> - $[k^e] = \int_{\Omega^e} [B]^T [D] [B] \, d\Omega$
> - $[B]$: matriz das derivadas das funções de forma
> - $[D]$: matriz constitutiva (material)

> [!note]- [[Vetor de Carga Elementar]]
> - $\{f^e\} = \int_{\Omega^e} [N]^T \mathbf{b} \, d\Omega + \int_{\Gamma^e} [N]^T \mathbf{t} \, d\Gamma$
> - Forças de corpo ($b$) e forças de superfície ($t$)

> [!note]- [[Processo de Montagem]]
> - Mapeamento local → global (conectividade dos nós)
> - Soma das contribuições elementares na matriz global
> - Aplicação das condições de contorno

---

## Integração Numérica

[[Integração Numérica]]

> [!note]- [[Quadratura de Gauss-Legendre]]
> - $\int_{-1}^{1} f(\xi) \, d\xi \approx \sum_{i=1}^{n} w_i f(\xi_i)$
> - Tabelas de pontos e pesos de Gauss
> - Ordem de integração: regra de ordem $m$ integra polinômio de grau $2m-1$

> [!note]- [[Integração em 2D e 3D]]
> - Produto tensorial (quadriláteros, hexaedros)
> - Triângulos: pontos de Hammer
> - Tetraedros: fórmulas específicas

---

## Solução do Sistema Linear

[[Solução do Sistema Linear]]

> [!note]- [[Características da Matriz Global]]
> - Esparsa (poucos elementos não-nulos)
> - Simétrica (problemas auto-adjuntos)
> - Definida positiva (para problemas elípticos)
> - Mal-condicionada para grandes malhas ($\kappa \sim h^{-2}$)

> [!note]- [[Métodos Diretos]]
> - Fatoração LU com reordenação (Cuthill-McKee, AMD)
> - Fatoração de Cholesky (para matrizes simétricas definidas positivas)
> - Vantagem: robustez; Desvantagem: $O(N^3)$

> [!note]- [[Métodos Iterativos]]
> - Gradiente Conjugado (CG) para sistemas SPD
> - GMRES para sistemas não-simétricos
> - Pré-condicionamento (Jacobi, SSOR, multigrid)
> - Vantagem: $O(N \cdot \text{iterações})$; Desvantagem: convergência lenta para malhas finas

---

## Análise de Erro e Convergência

[[Análise de Erro e Convergência]]

> [!note]- [[Tipos de Erro]]
> - Erro de discretização ($h$-convergência)
> - Erro de integração numérica (quadratura)
> - Erro de solução do sistema linear
> - Erro de aproximação ($p$-convergência)

> [!note]- [[Estimativas de Erro]]
> - Norma da energia: $\|u - u_h\|_E \leq C h^p \|u\|_{p+1}$
> - Lema de Céa: quase-melhor aproximação
> - Teorema de Bramble-Hilbert: limites de interpolação

> [!note]- [[Refinamento de Malha]]
> - $h$-refinamento: diminuir tamanho dos elementos
> - $p$-refinamento: aumentar ordem polinomial
> - $hp$-refinamento adaptivo
> - Estimadores de erro a posteriori (Kelly, Zienkiewicz-Zhu)

---

## Aplicações por Domínio

[[Aplicações por Domínio]]

> [!note]- [[Mecânica dos Sólidos e Estruturas]]
> - Elasticidade linear: $[K]\{u\} = \{F\}$
> - Elementos de viga (Euler-Bernoulli, Timoshenko)
> - Elementos de casca e placa
> - Plasticidade e grandes deformações

> [!note]- [[Transferência de Calor e Massa]]
> - Equação do calor: condução, convecção, radiação
> - Problemas estacionários vs. transientes
> - Elementos para CFD (Computational Fluid Dynamics)

> [!note]- [[Eletromagnetismo]]
> - Equações de Maxwell
> - Elementos de aresta (Nédélec)
> - Problemas de alta frequência

> [!note]- [[Dinâmica e Vibrações]]
> - Matriz de massa: $[M]\{\ddot{u}\} + [C]\{\dot{u}\} + [K]\{u\} = \{F(t)\}$
> - Análise modal: autovalores e autovetores
> - Integração temporal: Newmark, HHT, Euler implícito

---

## Software e Implementação

[[Software e Implementação]]

> [!note]- [[Softwares Comerciais]]
> - ANSYS, Abaqus, COMSOL, LS-DYNA
> - Simcenter (Siemens), Altair (HyperMesh)

> [!note]- [[Open Source]]
> - FEniCS, FreeFEM, deal.II
> - Elmer, OpenFOAM (FVM + FEM), CalculiX

> [!note]- [[Estrutura de Código FEM]]
> - Pré-processamento: malha, condições de contorno, materiais
> - Cálculo de matrizes e vetores elementares
> - Montagem global
> - Solução do sistema
> - Pós-processamento: visualização, tensões, deformações

---

## Avanços e Tópicos Especiais

[[Avanços e Tópicos Especiais]]

> [!note]- [[Métodos sem Malha (Meshfree)]]
> - EFG (Element-Free Galerkin)
> - SPH (Smoothed Particle Hydrodynamics)
> - Vantagens: elimina distorção de malha

> [!note]- [[XFEM (eXtended Finite Element Method)]]
> - Enriquecimento da aproximação com funções especiais
> - Propagação de trincas (fracture mechanics)
> - Interfaces e descontinuidades móveis

> [!note]- [[Isogeometric Analysis (IGA)]]
> - Uso de NURBS como funções de base
> - Integração direta entre CAD e FEM
> - Continuidade $C^p$ nas interfaces

> [!note]- [[Multiescala e Homogeneização]]
> - FE² (método dos elementos finitos em duas escalas)
> - Materiais compostos e heterogêneos
> - Microestrutura → propriedades macro

---

## Exercícios e Problemas Clássicos

[[Exercícios e Problemas Clássicos]]

> [!note]- [[Problema 1D: Barra Tracionada]]
> - EDP: $-\frac{d}{dx}\left(EA\frac{du}{dx}\right) = f(x)$
> - Solução analítica vs. FEM com 2 e 3 elementos
> - Cálculo manual da matriz de rigidez

> [!note]- [[Problema 2D: Chapa com Furo]]
> - Concentração de tensões
> - Refinamento local da malha
> - Comparação com soluções analíticas (Kirsch)

> [!note]- [[Problema Térmico: Aleta de Resfriamento]]
> - EDP: $-\nabla \cdot (k\nabla T) + h(T - T_\infty) = Q$
> - Condições de contorno de Robin (convecção)
> - Distribuição de temperatura ao longo da aleta

---

**Pronto!** Agora todos os `> [!element]` estão de volta. É exatamente isso que você queria?
