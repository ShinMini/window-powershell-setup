# window power shell profile ps1 
## writed by mini
### this txt written by power shell dir moved to document's folder

##oh-my-posh --init --shell pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression

# import modules
Import-Module -Name Terminal-Icons
Import-Module -Name posh-git
Import-Module PSReadLine

# set modules
Set-PoshPrompt -Theme jandedobbeleer
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Invoke-Expression -Command $(gh completion -s powershell | Out-String)

## set-function 
function admin {
start-process powershell -verb runAs
echo "				[ADMIN MODE] START "
}

function chrome { 
pushd .
echo "		[OPEN chrome] "
cd "C:\Program Files\Google\Chrome\Application"
.\chrome.exe
popd
}


function everything {
pushd .
echo "	everything start	"
cd "C:\Program Files\Everything" 
.\Everything.exe
popd 
}

function book{
pushd .
echo "	YES24 e-book   "
cd "C:\Program Files (x86)\YES24eBook" 
.\YES24eBook.exe
popd 
}


## Set-Alias
Set-Alias note notepad.exe
Set-Alias touch New-Item
Set-Alias rename Rename-Item

## make loading bar status(when starting updating)
for($I = 1; $I -lt 101; $I++ )
{
    Write-Progress -Activity Updating -Status 'Progress->' -PercentComplete $I -CurrentOperation OuterLoop
    for($j = 1; $j -lt 101; $j++ )
    {
        Write-Progress -Id 1 -Activity Updating -Status 'Progress' -PercentComplete $j -CurrentOperation InnerLoop
    }
}
