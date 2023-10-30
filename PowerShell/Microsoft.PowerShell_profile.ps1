# This PowerShell profile is authored by mini
# 실행 권한이 없다면 아래 주석을 해제하고 실행해주세요
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm

# 관리자 권한으로 PowerShell을 실행하는 함수
function admin {
   start-process powershell -verb runAs
   Write-Host "		[ADMIN MODE] START "
}

# Chrome 브라우저를 실행하는 함수
function chrome { 
   if (Test-Path "C:\Program Files\Google\Chrome\Application\chrome.exe") {
      Push-Location .
      Write-Host "		[OPEN Chrome] "
      Set-Location "C:\Program Files\Google\Chrome\Application"
      .\chrome.exe
      Pop-Location
   } else {
      Write-Host "Chrome not found!"
   }
}

# C++ 코드를 빌드하고 실행하는 함수
function build {
   param (
      [string]$build_file
   )
   if (Test-Command "g++") {
      g++ -g .\${build_file}.cpp -o .\${build_file}.exe
      Write-Host " [파일 빌드 완료] "
      invoke-item ".\${build_file}.exe"
   } else {
      Write-Host "g++ not found!"
   }
}

# 별칭 설정 (Alias 설정)
Set-Alias note notepad.exe
Set-Alias touch New-Item
Set-Alias rename Rename-Item

# 업데이트 시작 시 로딩바를 표시
# 이 부분은 예시입니다. 실제 업데이트 코드와 연동 필요
for ($I = 1; $I -lt 101; $I++) {
   Write-Progress -Activity Updating -Status 'Progress->' -PercentComplete $I -CurrentOperation OuterLoop
   for ($j = 1; $j -lt 101; $j++) {
      Write-Progress -Id 1 -Activity Updating -Status 'Progress' -PercentComplete $j -CurrentOperation InnerLoop
   }
}

# 프로파일 설정이 완료되었을 때 출력됩니다.
Write-Host "		[Load Done] "

# Chocolatey 라이브러리 환경변수 설정 (필요하다면 주석 해제)
# $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
# if (Test-Path($ChocolateyProfile)) {
#   Import-Module "$ChocolateyProfile"
# }
