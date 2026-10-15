# Catálogo de tags por matéria

## Seções

1. **Explicação**
2. **Lista de tags por matéria**

---

## 1. Explicação

Este catálogo define um vocabulário de tags para organizar matérias atuais e futuras.  
As tags servem para padronizar a classificação de notas, permitindo que uma IA identifique área, matéria, tipo de conteúdo, prática, computação e finalidade de estudo.

### Regras de uso

- Usar letras minúsculas, sem acentos e com hífens entre palavras.
- Exemplos: `#algebra-linear`, `#equacoes-diferenciais`.
- Escolher a área, a matéria, o tipo de nota e os assuntos que realmente descrevem o conteúdo.
- Não é necessário usar todas as tags disponíveis para uma matéria.
- No texto, escrever `#sumario`; na propriedade YAML `tags`, escrever `sumario`, sem `#`.
- `[[limites]]` é um wikilink para uma nota, não uma tag.
- As listas antigas de links chamadas “Tags” permanecem como estão.
- `tipo` e `materia` são propriedades; `aliases` contém nomes alternativos.
- Nenhum desses campos cria uma tag automaticamente.
- As tags abaixo são grafias recomendadas para uso futuro, não um inventário de etiquetas já aplicadas.

---

## 2. Lista de tags por matéria

### Etiquetas comuns

| Grupo | Tags disponíveis | Quando usar |
| --- | --- | --- |
| Área | `#matematica`, `#fisica`, `#computacao-cientifica` | Conforme o campo da nota; podem coexistir em conteúdo interdisciplinar |
| Organização | `#sumario`, `#bibliografia`, `#formulario`, `#plano-de-estudo` | Para a função da nota; `#sumario` é comum a qualquer matéria |
| Conteúdo | `#definicao`, `#conceito`, `#teorema`, `#lema`, `#corolario`, `#proposicao`, `#demonstracao`, `#formula`, `#exemplo` | Para identificar o tipo de conteúdo |
| Prática | `#exercicio`, `#exercicio-resolvido`, `#lista-de-exercicios`, `#problema`, `#aplicacoes`, `#modelagem` | Para exercícios e aplicações |
| Computação | `#algoritmos`, `#computacional`, `#simulacao`, `#visualizacao`, `#python`, `#matlab`, `#julia`, `#r` | Apenas quando o conteúdo abordar essas ferramentas ou práticas |
| Estudo | `#resumo`, `#revisao`, `#duvida`, `#erro-comum` | Conforme a finalidade ou necessidade de estudo |

---

### Cálculo

Base compartilhada: `#matematica`, `#calculo`.  
Nos sumários, acrescentar `#sumario`.  
As tags específicas de cada parte são opcionais conforme o conteúdo.

| Matéria | Identificação | Assuntos disponíveis |
| --- | --- | --- |
| Cálculo 1 | `#calculo1` | `#funcoes`, `#limites`, `#continuidade`, `#derivadas`, `#derivacao`, `#regra-da-cadeia`, `#otimizacao`, `#integrais`, `#integracao`, `#teorema-fundamental-do-calculo`, `#taylor`, `#aproximacao-linear`, `#taxas-relacionadas`, `#maximos-e-minimos`, `#concavidade`, `#esboco-de-graficos`, `#areas`, `#volumes`, `#comprimento-de-arco`, `#integrais-improperias` |
| Cálculo 2 | `#calculo2` | `#integracao`, `#tecnicas-de-integracao`, `#integrais-improprias`, `#coordenadas-polares`, `#sequencias`, `#series`, `#series-de-potencias`, `#taylor`, `#curvas-parametricas`, `#funcoes-de-varias-variaveis`, `#derivadas-parciais`, `#integrais-multiplas`, `#jacobiano`, `#integrais-duplas`, `#integrais-triplas`, `#mudanca-de-variaveis`, `#campos-vetoriais`, `#integrais-de-linha`, `#integrais-de-superficie`, `#teorema-de-green`, `#teorema-de-stokes`, `#teorema-da-divergencia` |
| Cálculo 3 · Cálculo Vetorial | `#calculo3`, `#calculo-vetorial` | `#vetores`, `#funcoes-vetoriais`, `#curvas`, `#curvatura`, `#campos`, `#campos-escalares`, `#campos-vetoriais`, `#gradiente`, `#divergente`, `#rotacional`, `#operadores-diferenciais`, `#integrais-de-linha`, `#integrais-de-superficie`, `#green`, `#gauss`, `#stokes`, `#parametrizacao`, `#superficies`, `#orientacao`, `#fluxo`, `#circulacao`, `#potencial`, `#funcao-potencial` |
| Cálculo 4 · Cálculo Numérico | `#calculo4`, `#calculo-numerico`, `#analise-numerica` | `#erros-numericos`, `#estabilidade`, `#condicionamento`, `#convergencia`, `#zeros-de-funcoes`, `#interpolacao`, `#aproximacao`, `#minimos-quadrados`, `#integracao-numerica`, `#diferenciacao-numerica`, `#sistemas-lineares`, `#autovalores`, `#metodos-iterativos`, `#otimizacao-numerica`, `#ajuste-de-curvas`, `#regressao-numerica`, `#equacoes-nao-lineares`, `#metodo-de-newton`, `#metodo-da-bissecao`, `#metodo-da-secante`, `#fatoracao-lu`, `#fatoracao-qr`, `#gauss-seidel`, `#jacobi` |

---

### Demais matérias

Nas matérias matemáticas abaixo, usar `#matematica` como área.  
Nos sumários, acrescentar `#sumario`.

| Matéria | Identificação | Assuntos disponíveis |
| --- | --- | --- |
| Álgebra | `#algebra` | `#algebra-linear`, `#algebra-abstrata`, `#matrizes`, `#determinantes`, `#sistemas-lineares`, `#espacos-vetoriais`, `#transformacoes-lineares`, `#autovalores`, `#autovetores`, `#polinomios`, `#grupos`, `#aneis`, `#corpos`, `#subespacos`, `#bases`, `#dimensao`, `#produto-interno`, `#ortogonalidade`, `#diagonalizacao`, `#forma-de-jordan`, `#homomorfismos`, `#ideais`, `#corpos-finitos` |
| Álgebra Computacional | `#algebra-computacional` | `#algebra-linear`, `#computacao-simbolica`, `#eliminacao-gaussiana`, `#decomposicao-lu`, `#decomposicao-qr`, `#svd`, `#polinomios`, `#bases-de-groebner`, `#aritmetica-exata`, `#computacao-algebrica`, `#simplificacao-simbolica`, `#fatoracao-simbolica`, `#resultantes`, `#eliminacao`, `#sistemas-polinomiais`, `#variedades-algebricas`, `#ideais-polinomiais`, `#algoritmo-de-buchberger`, `#aritmetica-modular`, `#calculo-simbolico` |
| EDO | `#edo`, `#equacoes-diferenciais` | `#equacoes-de-primeira-ordem`, `#equacoes-lineares`, `#equacoes-separaveis`, `#equacoes-exatas`, `#fator-integrante`, `#equacoes-de-ordem-superior`, `#sistemas-de-edo`, `#problemas-de-valor-inicial`, `#problemas-de-contorno`, `#transformada-de-laplace`, `#estabilidade`, `#modelagem`, `#equacoes-homogeneas`, `#equacoes-nao-homogeneas`, `#coeficientes-constantes`, `#coeficientes-variaveis`, `#series-de-potencias`, `#metodo-de-frobenius`, `#sistemas-lineares-de-edo`, `#plano-de-fase`, `#retrato-de-fase`, `#bifurcacao`, `#caos` |
| EDP | `#edp`, `#equacoes-diferenciais` | `#classificacao-de-edp`, `#equacoes-elipticas`, `#equacoes-parabolicas`, `#equacoes-hiperbolicas`, `#equacao-do-calor`, `#equacao-da-onda`, `#equacao-de-laplace`, `#equacao-de-poisson`, `#separacao-de-variaveis`, `#series-de-fourier`, `#condicoes-de-contorno`, `#funcoes-de-green`, `#problemas-de-valor-inicial`, `#problemas-de-contorno`, `#metodo-das-caracteristicas`, `#solucoes-fracas`, `#solucoes-classicas`, `#principio-do-maximo`, `#energia`, `#unicidade`, `#estabilidade`, `#transformada-de-fourier`, `#transformada-de-laplace`, `#metodos-numericos-para-edp` |
| Elementos Finitos | `#elementos-finitos` | `#formulacao-fraca`, `#metodos-variacionais`, `#galerkin`, `#funcoes-de-forma`, `#malhas`, `#elementos-de-referencia`, `#matriz-de-rigidez`, `#montagem`, `#condicoes-de-contorno`, `#quadratura`, `#estimativa-de-erro`, `#adaptatividade`, `#convergencia`, `#espacos-de-sobolev`, `#formulacao-variacional`, `#minimizacao-de-energia`, `#elementos-finitos-1d`, `#elementos-finitos-2d`, `#elementos-finitos-3d`, `#triangulacao`, `#refinamento-de-malha`, `#erro-a-priori`, `#erro-a-posteriori`, `#metodo-de-galerkin`, `#metodo-de-petrov-galerkin` |
| Estatística | `#estatistica` | `#estatistica-descritiva`, `#probabilidade`, `#variaveis-aleatorias`, `#distribuicoes`, `#esperanca`, `#variancia`, `#amostragem`, `#inferencia-estatistica`, `#estimacao`, `#intervalos-de-confianca`, `#testes-de-hipoteses`, `#regressao`, `#correlacao`, `#analise-de-variancia`, `#distribuicao-normal`, `#distribuicao-binomial`, `#distribuicao-poisson`, `#distribuicao-exponencial`, `#teorema-do-limite-central`, `#lei-dos-grandes-numeros`, `#probabilidade-condicional`, `#independencia`, `#covariancia`, `#correlacao-linear`, `#regressao-linear`, `#regressao-multipla`, `#teste-t`, `#teste-z`, `#teste-qui-quadrado`, `#anova` |
| Física | `#fisica` | `#mecanica`, `#cinematica`, `#dinamica`, `#leis-de-newton`, `#energia`, `#trabalho`, `#momento-linear`, `#momento-angular`, `#oscilacoes`, `#ondas`, `#fluidos`, `#termodinamica`, `#eletromagnetismo`, `#optica`, `#fisica-moderna`, `#gravitacao`, `#movimento-circular`, `#conservacao-de-energia`, `#conservacao-de-momento`, `#colisoes`, `#corpo-rigido`, `#rotacao`, `#torque`, `#equilibrio`, `#elasticidade`, `#hidrostatica`, `#hidrodinamica`, `#calor`, `#temperatura`, `#leis-da-termodinamica`, `#entropia`, `#maquinas-termicas`, `#cargas-eletricas`, `#campo-eletrico`, `#potencial-eletrico`, `#corrente-eletrica`, `#circuitos`, `#campo-magnetico`, `#inducao-magnetica`, `#equacoes-de-maxwell`, `#ondas-eletromagneticas`, `#reflexao`, `#refracao`, `#interferencia`, `#difracao`, `#relatividade`, `#mecanica-quantica`, `#fisica-atomica`, `#fisica-nuclear`, `#fisica-de-particulas` |
| Matemática Discreta | `#matematica-discreta` | `#logica`, `#teoria-dos-conjuntos`, `#relacoes`, `#funcoes`, `#inducao`, `#combinatoria`, `#contagem`, `#recorrencias`, `#grafos`, `#arvores`, `#algoritmos`, `#complexidade`, `#algebra-booleana`, `#logica-proposicional`, `#logica-de-predicados`, `#conjuntos-finitos`, `#relacoes-de-equivalencia`, `#relacoes-de-ordem`, `#principio-da-inducao`, `#principio-da-casa-dos-pombos`, `#permutacoes`, `#combinacoes`, `#principio-de-inclusao-exclusao`, `#relacoes-de-recorrencia`, `#funcoes-geradoras`, `#grafos-dirigidos`, `#grafos-nao-dirigidos`, `#caminhos`, `#ciclos`, `#conectividade`, `#coloracao-de-grafos`, `#arvores-de-geracao`, `#complexidade-assintotica`, `#notacao-big-o` |
| Métodos Numéricos para EDO | `#metodos-numericos-edo`, `#edo`, `#analise-numerica` | `#metodo-de-euler`, `#runge-kutta`, `#metodos-multipasso`, `#adams-bashforth`, `#adams-moulton`, `#preditor-corretor`, `#controle-de-passo`, `#erro-local`, `#erro-global`, `#consistencia`, `#estabilidade`, `#convergencia`, `#rigidez`, `#diferencas-finitas`, `#metodo-do-tiro`, `#euler-implicito`, `#euler-explicito`, `#runge-kutta-4`, `#metodos-de-passo-variavel`, `#metodos-implicitos`, `#metodos-explicitos`, `#analise-de-estabilidade`, `#regiao-de-estabilidade`, `#problemas-de-valor-de-contorno`, `#metodo-de-collocation`, `#metodo-dos-elementos-finitos-1d` |
| Teoria dos Números | `#teoria-dos-numeros` | `#divisibilidade`, `#numeros-primos`, `#fatoracao`, `#mdc`, `#mmc`, `#algoritmo-de-euclides`, `#congruencias`, `#aritmetica-modular`, `#equacoes-diofantinas`, `#teorema-chines-dos-restos`, `#funcao-totiente`, `#residuos-quadraticos`, `#criptografia`, `#teorema-fundamental-da-aritmetica`, `#numeros-perfeitos`, `#numeros-de-mersenne`, `#primalidade`, `#testes-de-primalidade`, `#fatoracao-em-primos`, `#congruencias-lineares`, `#sistemas-de-congruencias`, `#teorema-de-fermat`, `#teorema-de-euler`, `#raizes-primitivas`, `#logaritmo-discreto`, `#curvas-elipticas`, `#criptografia-rsa`, `#criptografia-de-curvas-elipticas` |
| Variáveis Complexas | `#variaveis-complexas`, `#analise-complexa` | `#numeros-complexos`, `#plano-complexo`, `#funcoes-complexas`, `#holomorfia`, `#equacoes-de-cauchy-riemann`, `#integracao-complexa`, `#teorema-de-cauchy`, `#formula-integral-de-cauchy`, `#series-de-laurent`, `#singularidades`, `#residuos`, `#teorema-dos-residuos`, `#transformacoes-conformes`, `#funcoes-analiticas`, `#funcoes-harmonicas`, `#derivadas-complexas`, `#caminhos-complexos`, `#integrais-de-contorno`, `#teorema-de-liouville`, `#principio-do-modulo-maximo`, `#polos`, `#zeros`, `#singularidades-essenciais`, `#calculo-de-residuos`, `#aplicacoes-de-residuos`, `#transformacao-de-mobius`, `#mapeamento-conforme` |

---

### Exemplos de uso

| Nota | Conjunto sugerido |
| --- | --- |
| Sumário de Cálculo 2 | `#matematica`, `#sumario`, `#calculo`, `#calculo2` |
| Sumário de Álgebra | `#matematica`, `#sumario`, `#algebra` |
| Sumário de EDO | `#matematica`, `#sumario`, `#edo`, `#equacoes-diferenciais` |
| Sumário de Física | `#fisica`, `#sumario` |
| Exercício de Runge-Kutta | `#matematica`, `#metodos-numericos-edo`, `#edo`, `#runge-kutta`, `#exercicio-resolvido` |

```yaml
tags:
  - matematica
  - sumario
  - algebra
```

---

### Compatibilidade com as notas atuais

Há grafias antigas com acentos ou maiúsculas, como `#matemática`, `#cálculo` e `#EDO`, além de listas de wikilinks apresentadas como tags.  
Este catálogo recomenda `#matematica`, `#calculo` e `#edo` para futuras notas, mas não migra nem remove as formas existentes.

Para acrescentar uma matéria, registrar sua etiqueta de identificação e os assuntos pertinentes nesta tabela.  
Para criar um sumário, consultar [[Sumários de matérias]].