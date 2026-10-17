param([switch]$Apply)
$ErrorActionPreference='Stop'
$v='C:/Users/rafae/OneDrive/Documentos/Obsidian/My-Program-In-College'
$folder=Join-Path $v '_Padrões'
$files=@(Get-ChildItem -LiteralPath $folder -File -Filter '*.md')
$plans=@()
foreach($file in $files){
 $old=[IO.File]::ReadAllText($file.FullName)
 $s=$old.Replace("`r`n","`n")
 $s=[regex]::Replace($s,'\A---\n[\s\S]*?\n---\n','')
 $s=[regex]::Replace($s,'(?m)^>\s?','')
 $s=[regex]::Replace($s,'(?m)^\[![^\]]+\][+-]?\s*(.*)$','$1')
 $s=[regex]::Replace($s,'(?ms)^```yaml\s*\n(.*?)^```\s*$',{
  param($m)
  $rows=[Collections.Generic.List[string]]::new()
  $rows.Add('| Campo | Valor ilustrativo |');$rows.Add('| --- | --- |')
  $key='';$values=[Collections.Generic.List[string]]::new()
  foreach($line in $m.Groups[1].Value.Split("`n")){
   if($line -match '^([a-z_]+):\s*(.*)$'){
    if($key){$rows.Add('| '+$key+' | '+($values -join ', ')+' |')}
    $key=$Matches[1];$values.Clear();if($Matches[2]){$values.Add($Matches[2])}
   }elseif($line -match '^\s+- (.+)$'){$values.Add($Matches[1])}
  }
  if($key){$rows.Add('| '+$key+' | '+($values -join ', ')+' |')}
  return ($rows -join "`n")+"`n"
 })
 $s=[regex]::Replace($s,'(?ms)^```python\s*\n.*?^```\s*$',@'
Exemplo descrito em etapas, usando Python como linguagem de referência:

1. Receber dois pontos com duas coordenadas numéricas cada.
2. Calcular dx como a diferença entre as coordenadas X.
3. Calcular dy como a diferença entre as coordenadas Y.
4. Retornar dx ao quadrado mais dy ao quadrado.
5. Para os pontos (0, 0) e (3, 4), o resultado esperado é 25.

'@)
 $s=[regex]::Replace($s,'(?ms)^```mermaid\s*\n(.*?)^```\s*$',{
  param($m)
  if($m.Groups[1].Value.Contains('Posições dos objetos')){return "Fluxo do exemplo: posições dos objetos → calcular distância ao quadrado → comparar com o raio ao quadrado → decidir se está no alcance.`n"}
  return "Fluxo ilustrativo: entradas → processamento → resultado → verificação.`n"
 })
 $s=[regex]::Replace($s,'(?ms)^```markdown\s*\n.*?^```\s*$',@'
Exemplo de organização descrito:

1. Criar uma seção de navegação rápida com uma tabela de unidades e links internos.
2. Criar a seção de conteúdo programático.
3. Usar um título de unidade, como “1. Fundamentos”.
4. Na nota da matéria, reunir os tópicos em um callout recolhível abaixo desse título.
5. Apontar os tópicos para as notas de conteúdo correspondentes.

'@)
 $s=$s.Replace('**','').Replace('`','')
 $s=$s.Replace('As propriedades YAML ficam no início do arquivo, fora dos callouts; aqui estão dentro de um bloco apenas para demonstrar a sintaxe.','Nas notas de estudo, as propriedades YAML ficam no início do arquivo, fora dos callouts. Neste documento, os campos são apresentados em tabela.')
 $s=$s.Replace('Colocar os parágrafos, listas, tabelas, fórmulas, diagramas, códigos, exercícios e referências em blocos Admonition/callouts.','Nas notas de estudo das matérias, colocar os parágrafos, listas, tabelas, fórmulas, diagramas, códigos, exercícios e referências em blocos Admonition/callouts.')
 $s=$s.Replace('> [!note] Conceito abre um bloco normal. > [!example]- Exemplo detalhado abre um bloco recolhível inicialmente fechado; + o deixa inicialmente expandido.','Um callout do tipo note pode apresentar um conceito. O marcador de recolhimento com sinal de menos inicia o bloco fechado; com sinal de mais, expandido. Exemplos extensos podem usar o tipo example.')
 $s=$s.Replace('O exemplo mostra uma sequência de trabalho; não é uma arquitetura obrigatória para todas as notas.','A sequência acima é apenas ilustrativa; não é uma arquitetura obrigatória para todas as notas.')
 $s=[regex]::Replace($s,'\[\[([^\]]+)\]\]',{param($m) $parts=[regex]::Split($m.Groups[1].Value,'\\?\|',2);if($parts.Count -gt 1){$parts[1]}else{$parts[0]}})
 $s=[regex]::Replace($s,'(?m)^(- )?Em tabelas, escapar a barra do alias:.*$','- Em tabelas nas notas das matérias, colocar uma barra invertida antes da barra vertical que separa o destino de um link de seu nome exibido.')
 $s=$s.Replace('Árvores é um link para uma nota, não uma etiqueta.','Um link interno para a nota Árvores não é uma etiqueta.')
 $s=[regex]::Replace($s,'(?m)^# 📝 ', '# ')
 $s=$s.Replace('Para pontos $a=(a_x,a_y)$ e $b=(b_x,b_y)$, a distância euclidiana ao quadrado é $d^2=(b_x-a_x)^2+(b_y-a_y)^2$. Quando queremos apenas comparar com um raio não negativo, podemos comparar $d^2$ com $r^2$ sem calcular a raiz quadrada.','Para dois pontos do plano, a distância ao quadrado é a soma dos quadrados das diferenças entre suas coordenadas. Para comparar com um raio não negativo, comparar esse resultado com o raio ao quadrado, sem calcular a raiz quadrada.')
 # Insert the documentation-specific exception directly after the main title.
 $notice='Os documentos de _Padrões usam apenas texto simples, títulos, listas e tabelas. As orientações sobre Admonition, Mermaid, fórmulas e código se aplicam às notas das matérias, não à apresentação destes documentos.'
 $s=[regex]::Replace($s,'\A\s*(# .+\n)',{param($m) $m.Groups[1].Value+"`n"+$notice+"`n"})
 $s=[regex]::Replace($s,'\n{3,}',"`n`n").Trim()+"`n"
 if($s -match '(?m)^>|^```|^~~~|^\[!|^flowchart |^graph '){throw "Elemento visual remanescente: $($file.Name)"}
 $plans+=@{Path=$file.FullName;Old=$old;New=$s}
 "$($file.Name): preparado em texto, listas e tabelas."
}
if(!$Apply){exit}
$all=@(Get-ChildItem -LiteralPath $v -Recurse -File -Filter '*.md');$before=@{}
foreach($file in $all){$before[$file.FullName]=(Get-FileHash -LiteralPath $file.FullName).Hash}
foreach($plan in $plans){if([IO.File]::ReadAllText($plan.Path) -cne $plan.Old){throw 'Arquivo mudou durante a preparação'}}
foreach($plan in $plans){[IO.File]::WriteAllText($plan.Path,$plan.New,[Text.UTF8Encoding]::new($false));if([IO.File]::ReadAllText($plan.Path) -cne $plan.New){throw 'Falha na gravação'}}
$targets=@($plans|ForEach-Object Path)
foreach($file in $all){if($file.FullName -notin $targets -and (Get-FileHash -LiteralPath $file.FullName).Hash -ne $before[$file.FullName]){throw 'Arquivo fora de _Padrões alterado'}}
'Salvos os três documentos; todas as notas das matérias preservadas.'
