$link = "https://github.com/ak1raww/Solari/releases/latest/download/SolariCli.exe"

$outfile = "$env:TEMP\SolariCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
