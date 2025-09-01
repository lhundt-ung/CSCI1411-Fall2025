
# Load the HTML content
$htmlContent = Get-Content -Path "TempAlert.HTML" -Raw

# Define the regex pattern
$pattern = "Average Temp\s+-\s+value too high\s+-\s+(\d+(\.\d+)?)"

# Apply the regex
if ($htmlContent -match $pattern) {
    $temperature = $matches[1]
    if ([decimal]$value -gt 80.0){
        Write-Host "Temperature is higher than 80F, need to check if A/C is down!!!!" -ForegroundColor Red
    }
    #Write-Output "Extracted Temperature: $temperature"
} else {
    Write-Output "Temperature value not found."
}

