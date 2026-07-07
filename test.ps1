$siteItems = Get-ChildItem "$SOURCE_DIR\_site" | Select-Object -ExpandProperty Name
$items = Get-ChildItem
foreach ($item in $items){
 if ($item.Name -notin $siteItems){
  "git rm $item -r"
 }
}

"--------------"

$items = Get-ChildItem
$keepVersions = @("15.2", "16.1", "16.2", "17.0", "17.1", "17.2", "18.0", "18.1")
foreach ($item in $items){
 if ($item.Name -notin $keepVersions){
  "git rm $item -r"
 }
}