# window power shell profile ps1 writed by mini

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

## c++ 자동 빌더 & 실행 함수
function build {
   param (
      [string]$build_file
   )
   g++ -g .\${build_file}.cpp -o .\${build_file}.exe
   echo " [파일 빌더 완료] "
   invoke-item ".\${build_file}.exe"
}

function admin {
   Start-Process wt -Verb runas
}

## Set-Alias
Set-Alias note notepad.exe
Set-Alias touch New-Item
Set-Alias rename Rename-Item

## make loading bar status(when starting updating)
for ($I = 1; $I -lt 101; $I++ ) {
   Write-Progress -Activity Updating -Status 'Progress->' -PercentComplete $I -CurrentOperation OuterLoop
   for ($j = 1; $j -lt 101; $j++ ) {
      Write-Progress -Id 1 -Activity Updating -Status 'Progress' -PercentComplete $j -CurrentOperation InnerLoop
   }
}

echo "
  			[load done]		
"