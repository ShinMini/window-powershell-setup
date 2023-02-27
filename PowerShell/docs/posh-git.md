# Posh-git library 설치

---

## 사전 준비

1. 관리자 권한으로 해당 파워쉘 프롬프트에 모듈 접근 권한 부여,

```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm
```

2. 사용자 컴퓨터에 git이 제대로 설치되어있는지 확인

```powershell
git --version
```

2-1. [깃 설치 설명서](install_git.md)

---

## posh-git 설치 방법 총 3가지

### 방법1. PowerShellGet을 통해 설치 [추천]

- PowerShellGallery를 통해 설치 -> 권장입니당

```powershell
Install-Module PowershellGet -Force

```

- 설치를 성공적으로 끝마친 뒤, 아래명령어 입력

1. 이전에 Powershell Gallery를 통해 모듈을 사용해 모듈을 설치했다.

```powershell
PowerShellGet\Update-Module posh-git
```

2. 난 그런거 모르겠고, 이번이 처음이다.

```powershell
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
```

---

### 방법 2. chocolatey를 통해 설치

- chocolatey란? -> powershell module 자동 관리 tool

```powershell
# chocolatey를 통한 라이브러리(posh-git) 설치!
choco install poshgit
```

- 만약 chocolatey 라이브러리가 설치되어있지 않다면?
- [chocolatey 설치 가이드](install_choco.md) 참고

### 방법 3. scoop을 통해 설치

- scoop이란? -> 대충 chocolatey랑 비슷한 애

```powershell
scoop install posh-git
Add-PoshGitToProfile
```

- 만약 scoop라이브러리가 설치되어있지 않다면?
- [scoop설치 가이드](install_scoop.md) 참고

---

## 모든 설치를 끝마쳤다면?

### git-posh configuration 완료하기

- [profile 설정 가이드](config_profile.md)

- 이렇게 매번 module import를 통해 git posh를 사용하기 위해 애써야한다면, 상당히 귀찮아 질 것이다.
- 따라서, 이러한 귀찮음을 해결하고자 window powershell 실행시 자동으로 실행되는 profile.m1 파일에 위의 powershell 실행시 자동으로 깃 관련 설정을 마무리해주도록 작성한다.

1. 현재 powershell profile 설정 문서 열기

```powershell
notepad $PROFILE
```

2. 열린 내 powershell config profile에 설정할 정보 기입해주기.

```txt
# git-posh config

Import-Module posh-git
Add-PoshGitToProfile
```

3. 저장 위치

`C:\Users\[대충 유저이름]\Documents\PowerShell`

- or

`C:\Users\[대충 유저이름]\OneDrive\Documents\PowerShell`

- ~~정보) OneDrive를 절대 믿지 않을 것...~~

4. 파일 이름,

- Microsoft.PowerShell_profile.ps1

5. 저장 후, powershell 을 종료 후 다시 재 실행,

6. 혹은 `.$PROFILE` 커맨드를 입력해 적용되는 지 확인.
