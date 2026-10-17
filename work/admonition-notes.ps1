param([switch]$Apply)
$ErrorActionPreference='Stop'
$v='C:/Users/rafae/OneDrive/Documentos/Obsidian/My-Program-In-College'
$targets=@('Computação gráfica/Coordenadas/Coordenadas.md','Computação gráfica/Introdução/Introdução ao OpenGL.md')
$plans=@()
foreach($target in $targets){
 $path=Join-Path $v $target;$old=[IO.File]::ReadAllText($path);$text=$old.Replace("`r`n","`n")
 $state=@{Out=[Collections.Generic.List[string]]::new();Recovered=[Collections.Generic.List[string]]::new();Pending=[Collections.Generic.List[string]]::new();Count=0}
 function Flush-Block($state){
  if(!$state.Pending.Count){return}
  $chunk=$state.Pending -join "`n"
  if([string]::IsNullOrWhiteSpace($chunk)){foreach($l in $state.Pending){$state.Out.Add($l);$state.Recovered.Add($l)};$state.Pending.Clear();return}
  $kind='note';$title='Explicação'
  if($chunk.Contains('```mermaid')){$kind='example';$title='Diagrama e explicação'}
  elseif($chunk.Contains('```')){$kind='example';$title='Exemplo e explicação'}
  elseif($chunk.Contains('$$')){$title='Conceitos e fórmulas'}
  elseif($chunk -match '(?m)^\|'){$title='Resumo e explicação'}
  $state.Out.Add('');$state.Out.Add("> [!$kind] $title")
  foreach($l in $state.Pending){
   $wrapped=if($l.Length){'> '+$l}else{'>'}
   $state.Out.Add($wrapped)
   $unwrapped=if($wrapped -eq '>'){''}else{$wrapped.Substring(2)}
   $state.Recovered.Add($unwrapped)
  }
  $state.Out.Add('');$state.Count++;$state.Pending.Clear()
 }
 $front=$false;$fence=$false;$math=$false;$i=0
 foreach($line in $text.Split("`n")){
  if($i -eq 0 -and $line -eq '---'){$front=$true;$state.Out.Add($line);$state.Recovered.Add($line);$i++;continue}
  if($front){$state.Out.Add($line);$state.Recovered.Add($line);if($line -eq '---'){$front=$false};$i++;continue}
  if(!$fence -and !$math -and ($line -match '^#{1,6} ' -or $line -match '^>' -or $line -eq '---')){
   Flush-Block $state;$state.Out.Add($line);$state.Recovered.Add($line)
  }else{
   $state.Pending.Add($line)
   if($line -match '^```'){$fence=!$fence}
   if(!$fence -and $line -eq '$$'){$math=!$math}
  }
  $i++
 }
 Flush-Block $state
 if(($state.Recovered -join "`n") -cne $text){throw "Conteúdo alterado: $target"}
 $new=($state.Out -join "`n").TrimEnd()+"`n"
 # Apart from YAML and headings, nothing may remain outside a callout.
 $inYaml=$false;$j=0
 foreach($line in $new.Split("`n")){
  if($j -eq 0 -and $line -eq '---'){$inYaml=$true;$j++;continue}
  if($inYaml){if($line -eq '---'){$inYaml=$false};$j++;continue}
  if($line.Trim() -and $line -notmatch '^>|^#{1,6} |^---$'){throw "Texto fora de bloco: $line"}
  $j++
 }
 $oldLinks=@([regex]::Matches($text,'\[\[.*?\]\]')|ForEach-Object Value)
 foreach($link in $oldLinks){if(!$new.Contains($link)){throw 'Link perdido'}}
 $plans+=@{Path=$path;Old=$old;New=$new;Count=$state.Count;Name=$target}
 "$target : $($state.Count) novos blocos; conteúdo integral preservado."
}
if(!$Apply){exit}
$files=@(Get-ChildItem -LiteralPath $v -Recurse -File -Filter '*.md');$before=@{}
foreach($file in $files){$before[$file.FullName]=(Get-FileHash -LiteralPath $file.FullName).Hash}
foreach($plan in $plans){if([IO.File]::ReadAllText($plan.Path) -cne $plan.Old){throw 'Nota mudou durante a preparação'}}
foreach($plan in $plans){[IO.File]::WriteAllText($plan.Path,$plan.New,[Text.UTF8Encoding]::new($false));if([IO.File]::ReadAllText($plan.Path) -cne $plan.New){throw 'Falha ao salvar'}}
$changed=@($plans|ForEach-Object Path)
foreach($file in $files){if($file.FullName -notin $changed -and (Get-FileHash -LiteralPath $file.FullName).Hash -ne $before[$file.FullName]){throw 'Outra nota alterada'}}
'Notas salvas e verificadas; apenas os dois arquivos foram modificados.'
