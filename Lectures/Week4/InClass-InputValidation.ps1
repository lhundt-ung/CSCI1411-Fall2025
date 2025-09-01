$EmailRegex = '^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$'

do {
    $Email = Read-Host "Enter a valid Email address"
    $DidItMatch = $Email -match $EmailRegex

    if (-not $DidItMatch) {
        Write-Warning "Invalid email address, please try again."
    }

} until ($DidItMatch)

Write-Host "Email address is valid"