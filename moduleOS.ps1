<#Получаем список всех XML в папке "папка запуска скрипта/xml"#>
[array]$ArrayXML= Get-ChildItem -Name -Path $PSScriptRoot'/xml/' -Recurse
$num = 0
Foreach ($item in $ArrayXML)
{
    $file=$ArrayXML[$num]
    [xml]$readXML= Get-Content -Path $PSScriptRoot'/xml/'$file
    Write-Output $readXML
    $nameScript = Select-Xml -Content $readXML -XPath "/path"
    Write-Output $nameScript
    $num++
  
}