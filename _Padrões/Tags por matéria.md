# Catálogo de tags por matéria

> [!abstract] Uso deste catálogo
> Vocabulário proposto para organizar as matérias atuais e futuras. Esta documentação não aplica nem renomeia tags nas notas existentes. A lista é extensível: novos assuntos podem receber novas etiquetas seguindo as mesmas convenções.

## Regras de uso

- Usar letras minúsculas, sem acentos e com hífens entre palavras: `#algebra-linear`, `#equacoes-diferenciais`.
- Escolher a área, a matéria, o tipo de nota e os assuntos que realmente descrevem o conteúdo. Não é necessário usar todas as tags da linha.
- No texto, escrever `#sumario`; na propriedade YAML `tags`, escrever `sumario`, sem `#`.
- `[[limites]]` é um wikilink para uma nota, não uma tag. As listas antigas de links chamadas “Tags” permanecem como estão.
- `tipo` e `materia` são propriedades; `aliases` contém nomes alternativos. Nenhum desses campos cria uma tag automaticamente.
- As tags abaixo são grafias recomendadas para uso futuro, não um inventário de etiquetas já aplicadas.

## Etiquetas comuns

| Grupo       | Tags disponíveis                                                                                                     | Quando usar                                                            |
| ----------- | -------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| Área        | `#matematica`, `#fisica`, `#computacao-cientifica`                                                                   | Conforme o campo da nota; podem coexistir em conteúdo interdisciplinar |
| Organização | `#sumario`, `#bibliografia`, `#formulario`, `#plano-de-estudo`                                                       | Para a função da nota; `#sumario` é comum a qualquer matéria           |
| Conteúdo    | `#definicao`, `#conceito`, `#teorema`, `#lema`, `#corolario`, `#proposicao`, `#demonstracao`, `#formula`, `#exemplo` | Para identificar o tipo de conteúdo                                    |
| Prática     | `#exercicio`, `#exercicio-resolvido`, `#lista-de-exercicios`, `#problema`, `#aplicacoes`, `#modelagem`               | Para exercícios e aplicações                                           |
| Computação  | `#algoritmos`, `#computacional`, `#simulacao`, `#visualizacao`, `#python`, `#matlab`, `#julia`, `#r`                 | Apenas quando o conteúdo abordar essas ferramentas ou práticas         |
| Estudo      | `#resumo`, `#revisao`, `#duvida`, `#erro-comum`                                                                      | Conforme a finalidade ou necessidade de estudo                         |

## Cálculo

Base compartilhada: `#matematica`, `#calculo`. Nos sumários, acrescentar `#sumario`. As tags específicas de cada parte são opcionais conforme o conteúdo.

| Matéria | Identificação | Assuntos disponíveis |
| --- | --- | --- |
| Cálculo 1 | `#calculo1` | `#funcoes`, `#limites`, `#continuidade`, `#derivadas`, `#derivacao`, `#regra-da-cadeia`, `#otimizacao`, `#integrais`, `#integracao`, `#teorema-fundamental-do-calculo`, `#taylor` |
| Cálculo 2 | `#calculo2` | `#integracao`, `#tecnicas-de-integracao`, `#integrais-improprias`, `#coordenadas-polares`, `#sequencias`, `#series`, `#series-de-potencias`, `#taylor`, `#curvas-parametricas`, `#funcoes-de-varias-variaveis`, `#derivadas-parciais`, `#integrais-multiplas`, `#jacobiano` |
| Cálculo 3 · Cálculo Vetorial | `#calculo3`, `#calculo-vetorial` | `#vetores`, `#funcoes-vetoriais`, `#curvas`, `#curvatura`, `#campos`, `#campos-escalares`, `#campos-vetoriais`, `#gradiente`, `#divergente`, `#rotacional`, `#operadores-diferenciais`, `#integrais-de-linha`, `#integrais-de-superficie`, `#green`, `#gauss`, `#stokes` |
| Cálculo 4 · Cálculo Numérico | `#calculo4`, `#calculo-numerico`, `#analise-numerica` | `#erros-numericos`, `#estabilidade`, `#condicionamento`, `#convergencia`, `#zeros-de-funcoes`, `#interpolacao`, `#aproximacao`, `#minimos-quadrados`, `#integracao-numerica`, `#diferenciacao-numerica`, `#sistemas-lineares`, `#autovalores`, `#metodos-iterativos`, `#otimizacao-numerica` |

## Demais matérias

Nas matérias matemáticas abaixo, usar `#matematica` como área. Nos sumários, acrescentar `#sumario`.

| Matéria | Identificação | Assuntos disponíveis |
| --- | --- | --- |
| Álgebra | `#algebra` | `#algebra-linear`, `#algebra-abstrata`, `#matrizes`, `#determinantes`, `#sistemas-lineares`, `#espacos-vetoriais`, `#transformacoes-lineares`, `#autovalores`, `#autovetores`, `#polinomios`, `#grupos`, `#aneis`, `#corpos` |
| Álgebra Computacional | `#algebra-computacional` | `#algebra-linear`, `#computacao-simbolica`, `#eliminacao-gaussiana`, `#decomposicao-lu`, `#decomposicao-qr`, `#svd`, `#polinomios`, `#bases-de-groebner`, `#aritmetica-exata` |
| EDO | `#edo`, `#equacoes-diferenciais` | `#equacoes-de-primeira-ordem`, `#equacoes-lineares`, `#equacoes-separaveis`, `#equacoes-exatas`, `#fator-integrante`, `#equacoes-de-ordem-superior`, `#sistemas-de-edo`, `#problemas-de-valor-inicial`, `#problemas-de-contorno`, `#transformada-de-laplace`, `#estabilidade`, `#modelagem` |
| EDP | `#edp`, `#equacoes-diferenciais` | `#classificacao-de-edp`, `#equacoes-elipticas`, `#equacoes-parabolicas`, `#equacoes-hiperbolicas`, `#equacao-do-calor`, `#equacao-da-onda`, `#equacao-de-laplace`, `#equacao-de-poisson`, `#separacao-de-variaveis`, `#series-de-fourier`, `#condicoes-de-contorno`, `#funcoes-de-green` |
| Elementos Finitos | `#elementos-finitos` | `#formulacao-fraca`, `#metodos-variacionais`, `#galerkin`, `#funcoes-de-forma`, `#malhas`, `#elementos-de-referencia`, `#matriz-de-rigidez`, `#montagem`, `#condicoes-de-contorno`, `#quadratura`, `#estimativa-de-erro`, `#adaptatividade`, `#convergencia` |
| Estatística | `#estatistica` | `#estatistica-descritiva`, `#probabilidade`, `#variaveis-aleatorias`, `#distribuicoes`, `#esperanca`, `#variancia`, `#amostragem`, `#inferencia-estatistica`, `#estimacao`, `#intervalos-de-confianca`, `#testes-de-hipoteses`, `#regressao`, `#correlacao`, `#analise-de-variancia` |
| Física | `#fisica` | `#mecanica`, `#cinematica`, `#dinamica`, `#leis-de-newton`, `#energia`, `#trabalho`, `#momento-linear`, `#momento-angular`, `#oscilacoes`, `#ondas`, `#fluidos`, `#termodinamica`, `#eletromagnetismo`, `#optica`, `#fisica-moderna` |
| Matemática Discreta | `#matematica-discreta` | `#logica`, `#teoria-dos-conjuntos`, `#relacoes`, `#funcoes`, `#inducao`, `#combinatoria`, `#contagem`, `#recorrencias`, `#grafos`, `#arvores`, `#algoritmos`, `#complexidade`, `#algebra-booleana` |
| Métodos Numéricos para EDO | `#metodos-numericos-edo`, `#edo`, `#analise-numerica` | `#metodo-de-euler`, `#runge-kutta`, `#metodos-multipasso`, `#adams-bashforth`, `#adams-moulton`, `#preditor-corretor`, `#controle-de-passo`, `#erro-local`, `#erro-global`, `#consistencia`, `#estabilidade`, `#convergencia`, `#rigidez`, `#diferencas-finitas`, `#metodo-do-tiro` |
| Teoria dos Números | `#teoria-dos-numeros` | `#divisibilidade`, `#numeros-primos`, `#fatoracao`, `#mdc`, `#mmc`, `#algoritmo-de-euclides`, `#congruencias`, `#aritmetica-modular`, `#equacoes-diofantinas`, `#teorema-chines-dos-restos`, `#funcao-totiente`, `#residuos-quadraticos`, `#criptografia` |
| Variáveis Complexas | `#variaveis-complexas`, `#analise-complexa` | `#numeros-complexos`, `#plano-complexo`, `#funcoes-complexas`, `#holomorfia`, `#equacoes-de-cauchy-riemann`, `#integracao-complexa`, `#teorema-de-cauchy`, `#formula-integral-de-cauchy`, `#series-de-laurent`, `#singularidades`, `#residuos`, `#teorema-dos-residuos`, `#transformacoes-conformes` |

Álgebra Computacional está incluída porque também existe como pasta própria no cofre. Outros assuntos podem compartilhar tags: por exemplo, `#sistemas-lineares` em Álgebra e Cálculo Numérico, ou `#estabilidade` em EDO e métodos numéricos.

## Exemplos de uso

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

## Compatibilidade com as notas atuais

Há grafias antigas com acentos ou maiúsculas, como `#matemática`, `#cálculo` e `#EDO`, além de listas de wikilinks apresentadas como tags. Este catálogo recomenda `#matematica`, `#calculo` e `#edo` para futuras notas, mas não migra nem remove as formas existentes.

Para acrescentar uma matéria, registrar sua etiqueta de identificação e os assuntos pertinentes nesta tabela. Para criar um sumário, consultar [[Sumários de matérias]].
