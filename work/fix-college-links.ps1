param([switch]$Apply)
$ErrorActionPreference='Stop'
$v='C:/Users/rafae/OneDrive/Documentos/Obsidian/My-Program-In-College'
$files=@(Get-ChildItem -LiteralPath $v -Recurse -File -Filter '*.md')
$index=@{};foreach($file in $files){if(!$index.ContainsKey($file.BaseName)){$index[$file.BaseName]=[Collections.Generic.List[object]]::new()};$index[$file.BaseName].Add($file)}
$targets=@('Processamento de Imagens/Processamento de Imagens.md','Introdução a Programação/Introdução à Programação.md','Programação Orientado a Objetos/Programação Orientada a Objetos.md','AED/Estruturas de Dados.md')
$plans=[Collections.Generic.List[object]]::new()
foreach($target in $targets){
 $p=Join-Path $v $target;$original=[IO.File]::ReadAllText($p);$stats=@{Count=0;Missing=[Collections.Generic.HashSet[string]]::new();Paths=[Collections.Generic.List[string]]::new()}
 $fence=$false
 $lines=[Collections.Generic.List[string]]::new()
 foreach($line in [regex]::Split($original,'(?<=\n)')){
  if($line -match '^\s*(?:>\s*)*(```|~~~)'){$fence=!$fence;$lines.Add($line);continue}
  if($fence){$lines.Add($line);continue}
  $table=$line -match '^\s*(?:>\s*)*\|'
  $parts=[regex]::Split($line,'(`+[^`\r\n]*`+)')
  for($i=0;$i -lt $parts.Count;$i++){
   if($parts[$i].StartsWith('`')){continue}
   $parts[$i]=[regex]::Replace($parts[$i],'(?<!!)\[\[([^\]\r\n]+)\]\]',{
    param($m)
    $inside=$m.Groups[1].Value
    $segments=[regex]::Split($inside,'\\?\|',2)
    $destination=$segments[0];$alias=if($segments.Count -gt 1){$segments[1]}else{$null}
    $fragment='';if($destination.Contains('#')){$fragment=$destination.Substring($destination.IndexOf('#'));$destination=$destination.Substring(0,$destination.IndexOf('#'))}
    if(!$destination){return $m.Value}
    $name=($destination.Trim() -replace '\.md$','')
    $hits=@()
    if($name.Contains('/')){$hits=@($files|Where-Object {([IO.Path]::GetRelativePath($v,$_.FullName).Replace('\','/') -replace '\.md$','') -eq $name})}
    elseif($index.ContainsKey($name)){$hits=@($index[$name].ToArray())}
    if($hits.Count -gt 1){$course=$target.Split('/')[0];$local=@($hits|Where-Object {([IO.Path]::GetRelativePath($v,$_.FullName).Replace('\','/')).StartsWith($course+'/')});if($local.Count -eq 1){$hits=$local}}
    if($hits.Count -ne 1){[void]$stats.Missing.Add($destination);return $m.Value}
    $canonical=[IO.Path]::GetRelativePath($v,$hits[0].FullName).Replace('\','/') -replace '\.md$',''
    $label=if($null -ne $alias){$alias}else{$destination+$fragment}
    $pipe=if($table){'\|'}else{'|'}
    $replacement='[['+$canonical+$fragment+$pipe+$label+']]'
    if($replacement -cne $m.Value){$stats.Count++;$stats.Paths.Add($canonical)}
    return $replacement
   })
  }
  $lines.Add(($parts -join ''))
 }
 $updated=$lines -join ''
 # Replacing each link by its visible label must produce identical text.
 function Visible([string]$s){[regex]::Replace($s,'(?<!!)\[\[([^\]\r\n]+)\]\]',{param($m) $parts=[regex]::Split($m.Groups[1].Value,'\\?\|',2);if($parts.Count -gt 1){$parts[1]}else{$parts[0]}})}
 if((Visible $original) -cne (Visible $updated)){throw "Texto visível alterado: $target"}
 foreach($dest in $stats.Paths){if(!(Test-Path -LiteralPath (Join-Path $v ($dest+'.md')))){throw "Destino ausente: $dest"}}
 $plans.Add(@{Path=$p;Old=$original;New=$updated;Count=$stats.Count;Missing=@($stats.Missing|Sort-Object)})
 "$target : $($stats.Count) links a corrigir; $($stats.Missing.Count) destinos sem nota correspondente."
 if($stats.Missing.Count){'  Pendentes: '+($stats.Missing -join '; ')}
}
if(!$Apply){exit}
$before=@{};foreach($file in $files){$before[$file.FullName]=(Get-FileHash -LiteralPath $file.FullName).Hash}
foreach($plan in $plans){if([IO.File]::ReadAllText($plan.Path) -cne $plan.Old){throw 'Arquivo alterado durante a preparação'}}
foreach($plan in $plans){[IO.File]::WriteAllText($plan.Path,$plan.New,[Text.UTF8Encoding]::new($false));if([IO.File]::ReadAllText($plan.Path) -cne $plan.New){throw 'Falha na gravação'}}
$changedPaths=@($plans|ForEach-Object Path)
foreach($file in $files){if($file.FullName -notin $changedPaths -and (Get-FileHash -LiteralPath $file.FullName).Hash -ne $before[$file.FullName]){throw 'Outra nota alterada'}}
'Correções gravadas; texto visível preservado e destinos conferidos.'
