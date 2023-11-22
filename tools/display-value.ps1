# Parameter help description
param([string]$value = "")

if ($value) {
    Write-Host "Value is $Value"
}
else {
    Write-Host "no value provided"
}
