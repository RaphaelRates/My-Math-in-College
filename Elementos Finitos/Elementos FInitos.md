Aqui está o sumário completo com os títulos dos notes transformados em links `[[]]` e todos os `[[tópico]]` removidos, conforme solicitado:

---

# 📚 SUMÁRIO ESTRUTURADO: MÉTODOS DOS ELEMENTOS FINITOS (FEM)

---

## [[Fundamentos de Elementos Finitos]]

> [[Conceitos Fundamentais]]
> - Discretização do domínio contínuo em subdomínios (elementos finitos)
> - Aproximação por partes usando funções de base polinomiais
> - Formulação fraca vs. formulação forte de EDPs
> - Funções de forma (shape functions)

> [[Motivação Física]]
> - Problemas de valor de contorno (PVC)
> - Equações diferenciais parciais (EDPs): Poisson, Elasticidade, Navier-Stokes
> - Quando métodos analíticos falham → necessidade numérica

---

## [[Formulação Matemática de Elementos Finitos]]

> [[Formulação Fraca (Método dos Resíduos Ponderados)]]
> - Função teste (weight function)
> - Integração por partes → redução da ordem da derivada
> - Condições de contorno naturais vs. essenciais
> - Forma variacional do problema

> [[Método de Galerkin]]
> - Escolha das funções teste = funções de base
> - Aproximação de Galerkin: $u_h(x) = \sum_{j=1}^N u_j \phi_j(x)$
> - Sistema linear resultante: $[K]\{u\} = \{F\}$

---

## [[Tipos de Elementos]]

> [[Classificação por Dimensão]]
> - 1D: Elementos lineares (2 nós) e quadráticos (3 nós)
> - 2D: Triângulos (linear, quadrático), quadriláteros
> - 3D: Tetraedros, hexaedros (blocos)

> [[Funções de Forma (Shape Functions)]]
> - Coordenadas naturais ($\xi, \eta, \zeta$)
> - Funções de forma lineares: $\phi_i(\xi) = \frac{1 \pm \xi}{2}$
> - Funções de forma quadráticas: pontos interiores
> - Propriedade: $\phi_i(x_j) = \delta_{ij}$ (Kronecker)

> [[Elementos Isoparamétricos]]
> - Mapeamento do elemento real → elemento mestre
> - Jacobiano da transformação
> - Integração numérica no elemento mestre

---

## [[Montagem do Sistema Global]]

> [[Matriz de Rigidez Elementar]]
> - $[k^e] = \int_{\Omega^e} [B]^T [D] [B] \, d\Omega$
> - $[B]$: matriz das derivadas das funções de forma
> - $[D]$: matriz constitutiva (material)

> [[Vetor de Carga Elementar]]
> - $\{f^e\} = \int_{\Omega^e} [N]^T \mathbf{b} \, d\Omega + \int_{\Gamma^e} [N]^T \mathbf{t} \, d\Gamma$
> - Forças de corpo ($b$) e forças de superfície ($t$)

> [[Processo de Montagem]]
> - Mapeamento local → global (conectividade dos nós)
> - Soma das contribuições elementares na matriz global
> - Aplicação das condições de contorno

---

## [[Integração Numérica]]

> [[Quadratura de Gauss-Legendre]]
> - $\int_{-1}^{1} f(\xi) \, d\xi \approx \sum_{i=1}^{n} w_i f(\xi_i)$
> - Tabelas de pontos e pesos de Gauss
> - Ordem de integração: regra de ordem $m$ integra polinômio de grau $2m-1$

> [[Integração em 2D e 3D]]
> - Produto tensorial (quadriláteros, hexaedros)
> - Triângulos: pontos de Hammer
> - Tetraedros: fórmulas específicas

---

## [[Solução do Sistema Linear]]

> [[Características da Matriz Global]]
> - Esparsa (poucos elementos não-nulos)
> - Simétrica (problemas auto-adjuntos)
> - Definida positiva (para problemas elípticos)
> - Mal-condicionada para grandes malhas ($\kappa \sim h^{-2}$)

> [[Métodos Diretos]]
> - Fatoração LU com reordenação (Cuthill-McKee, AMD)
> - Fatoração de Cholesky (para matrizes simétricas definidas positivas)
> - Vantagem: robustez; Desvantagem: $O(N^3)$

> [[Métodos Iterativos]]
> - Gradiente Conjugado (CG) para sistemas SPD
> - GMRES para sistemas não-simétricos
> - Pré-condicionamento (Jacobi, SSOR, multigrid)
> - Vantagem: $O(N \cdot \text{iterações})$; Desvantagem: convergência lenta para malhas finas

---

## [[Análise de Erro e Convergência]]

> [[Tipos de Erro]]
> - Erro de discretização ($h$-convergência)
> - Erro de integração numérica (quadratura)
> - Erro de solução do sistema linear
> - Erro de aproximação ($p$-convergência)

> [[Estimativas de Erro]]
> - Norma da energia: $\|u - u_h\|_E \leq C h^p \|u\|_{p+1}$
> - Lema de Céa: quase-melhor aproximação
> - Teorema de Bramble-Hilbert: limites de interpolação

> [[Refinamento de Malha]]
> - $h$-refinamento: diminuir tamanho dos elementos
> - $p$-refinamento: aumentar ordem polinomial
> - $hp$-refinamento adaptivo
> - Estimadores de erro a posteriori (Kelly, Zienkiewicz-Zhu)

---

## [[Aplicações por Domínio]]

> [[Mecânica dos Sólidos e Estruturas]]
> - Elasticidade linear: $[K]\{u\} = \{F\}$
> - Elementos de viga (Euler-Bernoulli, Timoshenko)
> - Elementos de casca e placa
> - Plasticidade e grandes deformações

> [[Transferência de Calor e Massa]]
> - Equação do calor: condução, convecção, radiação
> - Problemas estacionários vs. transientes
> - Elementos para CFD (Computational Fluid Dynamics)

> [[Eletromagnetismo]]
> - Equações de Maxwell
> - Elementos de aresta (Nédélec)
> - Problemas de alta frequência

> [[Dinâmica e Vibrações]]
> - Matriz de massa: $[M]\{\ddot{u}\} + [C]\{\dot{u}\} + [K]\{u\} = \{F(t)\}$
> - Análise modal: autovalores e autovetores
> - Integração temporal: Newmark, HHT, Euler implícito

---

## [[Software e Implementação]]

> [[Softwares Comerciais]]
> - ANSYS, Abaqus, COMSOL, LS-DYNA
> - Simcenter (Siemens), Altair (HyperMesh)

> [[Open Source]]
> - FEniCS, FreeFEM, deal.II
> - Elmer, OpenFOAM (FVM + FEM), CalculiX

> [[Estrutura de Código FEM]]
> - Pré-processamento: malha, condições de contorno, materiais
> - Cálculo de matrizes e vetores elementares
> - Montagem global
> - Solução do sistema
> - Pós-processamento: visualização, tensões, deformações

---

## [[Avanços e Tópicos Especiais]]

> [[Métodos sem Malha (Meshfree)]]
> - EFG (Element-Free Galerkin)
> - SPH (Smoothed Particle Hydrodynamics)
> - Vantagens: elimina distorção de malha

> [[XFEM (eXtended Finite Element Method)]]
> - Enriquecimento da aproximação com funções especiais
> - Propagação de trincas (fracture mechanics)
> - Interfaces e descontinuidades móveis

> [[Isogeometric Analysis (IGA)]]
> - Uso de NURBS como funções de base
> - Integração direta entre CAD e FEM
> - Continuidade $C^p$ nas interfaces

> [[Multiescala e Homogeneização]]
> - FE² (método dos elementos finitos em duas escalas)
> - Materiais compostos e heterogêneos
> - Microestrutura → propriedades macro

---

## [[Exercícios e Problemas Clássicos]]

> [[Problema 1D: Barra Tracionada]]
> - EDP: $-\frac{d}{dx}\left(EA\frac{du}{dx}\right) = f(x)$
> - Solução analítica vs. FEM com 2 e 3 elementos
> - Cálculo manual da matriz de rigidez

> [[Problema 2D: Chapa com Furo]]
> - Concentração de tensões
> - Refinamento local da malha
> - Comparação com soluções analíticas (Kirsch)

> [[Problema Térmico: Aleta de Resfriamento]]
> - EDP: $-\nabla \cdot (k\nabla T) + h(T - T_\infty) = Q$
> - Condições de contorno de Robin (convecção)
> - Distribuição de temperatura ao longo da aleta

---