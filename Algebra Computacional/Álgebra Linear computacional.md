# 🧮 Álgebra Linear Computacional

> [!info] Definição **Álgebra Linear Computacional** é o ramo da matemática aplicada que se dedica ao estudo de **métodos numéricos** para resolver problemas envolvendo **sistemas lineares**, **matrizes** e **operações vetoriais** com enfoque em **eficiência computacional**, **estabilidade algorítmica** e **análise de erro**.

É onde a teoria elegante da álgebra linear encontra os desafios do mundo real — como resolver sistemas com milhares de equações, decompor matrizes gigantescas ou realizar projeções em espaços de alta dimensão.

---

## 🛠️ Aplicações Principais

> [!example] Áreas de Aplicação
> 
> - **Engenharia**: Solução de sistemas lineares massivos (elementos finitos)
> - **Ciência de Dados**: Regressão linear, análise de componentes principais (PCA)
> - **Processamento de Sinais**: Decomposição SVD para compressão
> - **Machine Learning**: Otimização convexa, redes neurais
> - **Computação Gráfica**: Transformações 3D, ray tracing
> - **Simulações Numéricas**: Dinâmica de fluidos, modelagem física
> - **Criptografia**: Sistemas baseados em lattices
> - **Bioinformática**: Análise de sequências genéticas

---

## 📚 Estrutura dos Conteúdos

# 📐 Fundamentos Teóricos

## 📏 Normas e Métricas

- [[Normas Vetoriais]]
    - [[Norma L1 (Manhattan)]]
    - [[Norma L2 (Euclidiana)]]
    - [[Norma L∞ (Supremo)]]
    - [[Norma Lp Generalizada]]
- [[Norma de Matriz]]
    - [[Norma Induzida]]
    - [[Norma de Frobenius]]
    - [[Norma Espectral]]
    - [[Norma Nuclear]]
- [[Número de Condição]]
    - [[Condicionamento de Sistemas]]
    - [[Matriz Mal Condicionada]]
    - [[Análise de Sensibilidade]]
- [[Análise de Matrizes]]
    - [[Propriedades Importantes de Normas de Matrizes]]
    - [[Propriedades Importantes de Normas de Matrizes (continuação)]]
    - [[Raio Espectral]]
    - [[Teorema de Perron-Frobenius]]

## 🏗️ Estruturas Matriciais Especiais

- [[Matrizes Esparsas]]
    - [[Formato CSR]]
    - [[Formato CSC]]
    - [[Formato COO]]
- [[Matrizes Estruturadas]]
    - [[Matrizes de Toeplitz]]
    - [[Matrizes de Hankel]]
    - [[Matrizes Circulantes]]
- [[Matrizes de Baixo Posto]]
- [[Matrizes Positivas Definidas]]
- [[Matrizes Simétricas]]
- [[Matrizes Antisimétricas]]

---

# 🔢 Sistemas Lineares Computacionais

## 🎯 Métodos Diretos

- [[Eliminação Gaussiana]]
    - [[Pivoteamento Parcial]]
    - [[Pivoteamento Total]]
    - [[Pivoteamento por Coluna]]
- [[Fatoração LU]]
    - [[Algoritmo de Doolittle]]
    - [[Algoritmo de Crout]]
    - [[Fatoração LU com Pivoteamento]]
- [[Fatoração LDL^T]]
- [[Fatoração de Cholesky]]
    - [[Decomposição de Cholesky Modificada]]
    - [[Cholesky para Matrizes Esparsas]]
- [[Fatoração QR]]
    - [[Método de Householder]]
    - [[Método de Givens]]
    - [[QR com Pivoteamento por Coluna]]

## 🔄 Métodos Iterativos Clássicos

- [[Método de Jacobi]]
    - [[Convergência do Método de Jacobi]]
    - [[Jacobi por Blocos]]
- [[Método de Gauss-Seidel]]
    - [[Gauss-Seidel por Blocos]]
    - [[Sobre-relaxação Sucessiva (SOR)]]
- [[Método de Richardson]]
- [[Análise de Convergência]]
    - [[Critério de Convergência]]
    - [[Taxa de Convergência]]
    - [[Matriz de Iteração]]

## ⚡ Métodos de Subespaço de Krylov

- [[Gradiente Conjugado (CG)]]
    - [[CG Pré-condicionado]]
    - [[Análise de Convergência do CG]]
- [[GMRES]]
    - [[GMRES Reiniciado]]
    - [[Residual Mínimo]]
- [[BiCGSTAB]]
- [[MINRES]]
- [[CGS (Gradiente Conjugado Quadrado)]]
- [[QMR (Residual Mínimo Quasi)]]

---

# ⚡ Decomposições Matriciais

## 🎪 Decomposição SVD

- [[Decomposição em Valores Singulares (SVD)]]
    - [[SVD Completa]]
    - [[SVD Econômica]]
    - [[SVD Truncada]]
- [[Algoritmos para SVD]]
    - [[Algoritmo de Golub-Reinsch]]
    - [[Algoritmo de Divide-and-Conquer]]
    - [[Algoritmo RRQR]]
- [[Exemplos de Decomposições SVD]]
- [[Aplicações da SVD]]
    - [[Aproximação de Baixo Posto]]
    - [[Compressão de Imagens]]
    - [[Análise de Componentes Principais (PCA)]]
    - [[Least Squares via SVD]]

## 🔄 Outras Decomposições Importantes

- [[Ortogonalização de Gram-Schmidt]]
    - [[Gram-Schmidt Clássico]]
    - [[Gram-Schmidt Modificado]]
    - [[Estabilidade Numérica]]
- [[Decomposição Espectral]]
- [[Decomposição de Jordan]]
- [[Decomposição de Schur]]
    - [[Forma de Schur Real]]
    - [[Algoritmo QR para Schur]]
- [[Decomposição Polar]]
- [[Decomposição CUR]]
- [[Decomposição de Rank-Revealing]]

---

# 📈 Métodos Iterativos Avançados

## 🎯 Pré-condicionamento

- [[Conceito de Pré-condicionador]]
- [[Pré-condicionador Diagonal]]
- [[Pré-condicionador ILU]]
    - [[ILU(0)]]
    - [[ILU(k)]]
    - [[ILUT]]
- [[Pré-condicionador de Jacobi por Blocos]]
- [[Pré-condicionador Multigrid]]
- [[Pré-condicionador Polinomial]]

## 🔬 Métodos Multigrid

- [[Multigrid Geométrico]]
- [[Multigrid Algébrico (AMG)]]
- [[V-cycle, W-cycle, F-cycle]]
- [[Operadores de Restrição e Prolongamento]]
- [[Smoothers]]

## ⚙️ Métodos de Decomposição de Domínio

- [[Método de Schwarz]]
- [[Decomposição Aditiva de Schwarz]]
- [[Decomposição Multiplicativa de Schwarz]]
- [[FETI (Finite Element Tearing and Interconnecting)]]

---

# 🎪 Problemas de Autovalores

## 🔍 Métodos para Autovalores

- [[Método da Potência]]
    - [[Potência Inversa]]
    - [[Potência com Deslocamento]]
- [[Algoritmo QR]]
    - [[QR Básico]]
    - [[QR com Deslocamentos]]
    - [[QR Implícito]]
- [[Método de Jacobi para Autovalores]]
- [[Bisseção para Autovalores]]
- [[Método de Lanczos]]
    - [[Lanczos para Matrizes Simétricas]]
    - [[Bi-Lanczos]]
- [[Método de Arnoldi]]

---

# ⚙️ Implementação e Otimização

## 💻 Bibliotecas Computacionais

- BLAS (Basic Linear Algebra Subprograms)
- LAPACK
    - Drivers LAPACK
    - Computational Routines
    - Auxiliary Routines
- ScaLAPAC
- Intel MKL
- OpenBLAS
- ATLAS


---

## 🏷️ Tags

#algebra-linear-computacional #sistemas-lineares #decomposicao-matricial #svd #qr-decomposition #lu-factorization #metodos-iterativos #gradiente-conjugado #gmres #autovalores #estabilidade-numerica #blas #lapack #numpy #scipy #matlab #performance #paralelizacao #gpu-computing #machine-learning #elementos-finitos #processamento-sinais #computacao-grafica

---

> [!tip] **Sugestão de Estudos** Para cada conteúdo, desenvolva:
> 
> - **Definições formais** e fundamentação teórica
> - **Propriedades matemáticas** e teoremas relacionados
> - **Algoritmos passo-a-passo** com pseudocódigo
> - **Exemplos numéricos** resolvidos manualmente
> - **Implementações computacionais** (Python/NumPy, MATLAB, C++)
> - **Análise de complexidade** e estabilidade numérica
> - **Benchmarks de performance** e casos de uso reais

> [!warning] **Considerações Importantes**
> 
> - Sempre analise a **estabilidade numérica** dos algoritmos
> - Considere o **número de condição** das matrizes envolvidas
> - Implemente **testes de convergência** apropriados
> - Utilize **bibliotecas otimizadas** (BLAS/LAPACK) quando possível
> - Documente **casos limites** e **situações degeneradas**