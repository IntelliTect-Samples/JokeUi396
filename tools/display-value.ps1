# Parameter help description
param([string]$value = "")

if ($value) {
    Write-Host "Value is $value"
}
else {
    Write-Host "no value provided"
}
