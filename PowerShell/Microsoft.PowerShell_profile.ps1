# window power shell profile ps1 writed by mini
# 권한이 없다며 에러가 발생할 경우, 아래주석을 제거하고 실행해주세요
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm


# 모듈 불러오기
Import-Module -Name Terminal-Icons
Import-Module -Name posh-git
Import-Module PSReadLine

# Set-PSReadLineOption -PredictionSource History # 자동완성 기능을 설정 명령어입니다.
Set-PoshPrompt -Theme jandedobbeleer
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Invoke-Expression -Command $(gh completion -s powershell | Out-String)

# 테마를 설정하는 명령어입니다. - 취향에 맞게 테마를 설정해주세요.
# 테마 목록은, https://ohmyposh.dev/docs/themes 에서 확인할 수 있습니다.
# 테마 변경을 원하시면, 아래 주석을 해제하고, 테마 이름을 변경해주세요. 현재 설정된 테마 이름 : [paradox]
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression 

# 관리자 모드로 파워쉘을 실행하는 함수입니다. 
function admin {
   start-process powershell -verb runAs
   Write-Output "				[ADMIN MODE] START "
}

# chrome을 실행하는 함수입니다. 
function chrome { 
   Push-Location .
   Write-Output "		[OPEN chrome] "
   Set-Location "C:\Program Files\Google\Chrome\Application"
   .\chrome.exe
   Pop-Location
}

## c++ 자동 빌더 & 실행 함수 -> 해당 함수를 실행하기 위해서는, build_file.cpp 파일이 존재해야합니다.
function build {
   param (
      [string]$build_file
   )
   g++ -g .\${build_file}.cpp -o .\${build_file}.exe
   Write-Output " [파일 빌더 완료] "
   invoke-item ".\${build_file}.exe"
}


## Set-Alias -> alias를 설정하는 명령어입니다. (단축키를 설정하는 명령어입니다)
Set-Alias note notepad.exe
Set-Alias touch New-Item
Set-Alias rename Rename-Item

# profile set up이 종료되었을 때 표시됩니다. 
Write-Output "
  			[load done]		
"

# 만일 powershell이 chocolatey library 환경변수 위치를 파악하지 못하는 경우, 아래 주석을 해제해주세요.

# $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
# if (Test-Path($ChocolateyProfile)) {
#   Import-Module "$ChocolateyProfile"
# }
