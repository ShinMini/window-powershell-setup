# 현재 사용자의 실행 정책을 우회
# 주의: 이 작업의 위험을 이해하고 있을 때만 수행하세요.
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser -Force -Confirm

# Documents 폴더의 소유권 가져오기
# 주의: 권한 변경의 영향을 이해해야 합니다.
takeown /F $HOME'\Documents' /R /D Y

# 모듈이 설치되어 있는지 확인하는 함수
function Install-ModuleIfMissing {
    $ModuleName = $args[0]
    if (-not (Get-Module -ListAvailable -Name $ModuleName)) {
        Install-Module -Name $ModuleName -Force
    }
}

# 필요한 PowerShell 모듈이 이미 설치되어 있지 않다면 설치
Install-ModuleIfMissing "PSWindowsUpdate"
Install-ModuleIfMissing "PowershellGet"
Install-ModuleIfMissing "PackageManagement"
Install-ModuleIfMissing "Terminal-Icons"
Install-ModuleIfMissing "posh-git"
Install-ModuleIfMissing "PSReadlineHistory"
Install-ModuleIfMissing "PSReadLine"
Install-ModuleIfMissing "Git"
Install-ModuleIfMissing "oh-my-posh"

# 스쿱(Scoop) 패키지 매니저 설치
# 주의: 이 코드가 개인용이 아니라면 다운로드하는 내용을 검증하세요.
# Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# 필수 모듈 불러오기
Import-Module -Name Terminal-Icons
Import-Module -Name posh-git
Import-Module -Name PSReadLine

# Oh My Posh 테마 설정
# 추가 설정 정보는 홈페이지 참조 https://ohmyposh.dev/docs/installation/windows
# 테마 변경을 원하시면, 아래 주석을 해제하고, 테마 이름을 변경해주세요. 현재 설정된 테마 이름 : [paradox]
Set-PoshPrompt -Theme paradox


# 자동완성을 위한 PSReadLine 설정
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# GitHub CLI 자동완성 활성화
Invoke-Expression -Command $(gh completion -s powershell | Out-String)
