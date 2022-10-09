#Alias 
Set-Alias vim nvim 
Set-Alias ll ls 
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Prompt 
$omp_config = Join-Path $PSScriptRoot ".\awsome_prompt.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Completions 


# Ultilities 

  # Terminal Icons 
Import-Module -Name Terminal-Icons

