# Padrão de sumários de matérias

> [!abstract] Finalidade
> Padrão geral para criar e organizar sumários de qualquer matéria do cofre. A estrutura é adaptável ao conteúdo e pode ser expandida para novas disciplinas.

## Localização e nome

- O sumário é a nota central de uma matéria, parte ou módulo. Seu nome deve ser igual ou semelhante ao da matéria ou pasta correspondente.
- O nome pode indicar o assunto específico em vez do número da pasta. Por exemplo, a pasta Cálculo 3 tem o sumário Cálculo Vetorial.md.
- Antes de editar, identificar a nota central. As demais notas são conteúdo de apoio.
- Preservar nomes existentes de arquivos e pastas para manter os links do cofre.
- Este padrão documenta como formatar notas; sua atualização não autoriza alterações automáticas nas matérias.

## Estrutura comum

1. **Propriedades:** `tipo`, `materia`, `aliases` e `tags`.
2. **Título:** nome da matéria com um ícone opcional.
3. **Apresentação:** callout `abstract` com escopo e orientação curta em `tip`.
4. **Navegação rápida:** tabela com links para as unidades da própria nota.
5. **Visão geral:** contexto, objetivos e pré-requisitos, quando disponíveis.
6. **Conteúdo programático:** unidades em títulos de nível 3; assuntos em nível 4 quando necessário.
7. **Apoio:** bibliografia, aplicações, ferramentas, metodologia, conexões e dicas, conforme o conteúdo disponível.

Não inventar seções vazias, objetivos ou bibliografia apenas para preencher o modelo. Manter a ordem pedagógica da matéria.

## Propriedades e etiquetas

Consultar [[Tags por matéria]] para escolher etiquetas. Substituir os campos do exemplo pelos valores da disciplina.

```yaml
---
tipo: sumario
materia: Nome da matéria
aliases:
  - Nome alternativo da matéria
tags:
  - matematica
  - sumario
  - etiqueta-da-materia
---
```

- `tipo: sumario` descreve a função da nota; `#sumario` permite encontrá-la pelas tags.
- `materia` recebe o nome legível, com acentos. Tags seguem a grafia normalizada do catálogo.
- Aliases são opcionais e servem para nomes alternativos; não são etiquetas.
- Usar `#matematica` em matérias matemáticas. Para Física, usar `#fisica` e acrescentar `#matematica` somente quando o conteúdo justificar.
- A tag `#calculo` pertence às matérias de cálculo; não é uma etiqueta geral de todos os sumários.

## Convenções visuais

- Usar callouts nativos do Obsidian, compatíveis com o Admonition instalado.
- `abstract`: apresentação; `note`: tópicos; `tip`: orientação; `warning`: cuidados; `success`: boas práticas; `example`: exemplos.
- `> [!note]- Título` começa recolhido; `+` começa expandido.
- Manter os títulos de seção fora dos callouts para permitir navegação.
- Quando a unidade não possui subtópicos de nível 4, colocar sua lista diretamente em um callout abaixo do título de nível 3.
- Prefixar todas as linhas do corpo com `>`, inclusive listas, linhas vazias e cercas de código. Callouts aninhados recebem um nível adicional: `> >`.
- Usar títulos sem negrito redundante e poucos ícones.
- Evitar CSS, HTML e dependências adicionais.
- Não converter listas de conteúdo em tarefas de progresso sem solicitação.

## Exemplo de organização

```markdown
## 🧭 Navegação rápida

| Unidade | Acesso |
| --- | --- |
| 01 | [[#1. Fundamentos\|Fundamentos]] |

## Conteúdo programático

### 1. Fundamentos

> [!note]- Tópicos da unidade
>
> - [[Nome da nota de conteúdo]]
> - [[Outra nota de conteúdo]]
```

Os nomes e links acima são ilustrativos. Em tabelas, escapar a barra do alias: `[[#Título\|Rótulo]]`.

## Preservação e conferência

- Preservar conteúdo, destinos dos wikilinks, fórmulas, exemplos de código e diagramas Mermaid.
- Comparar os links anteriores e novos; todos os destinos originais devem permanecer.
- Conferir se a navegação aponta para títulos existentes e se as cercas de código estão pareadas.
- Conferir a renderização no Obsidian quando houver acesso à interface.

## Exemplos já aplicados no cofre

| Pasta | Arquivo de sumário |
| --- | --- |
| Cálculo/Cálculo 1 | Cálculo 1.md |
| Cálculo/Cálculo 2 | Cálculo 2.md |
| Cálculo/Cálculo 3 | Cálculo Vetorial.md |
| Cálculo/Cálculo 4 | Cálculo Numérico.md |

Esses exemplos ilustram o padrão geral; novas matérias podem ter nomes, unidades e recursos diferentes.
