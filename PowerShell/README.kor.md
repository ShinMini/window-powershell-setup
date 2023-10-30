# 목차

### 1. [파워쉘 설치하기](#1-파워쉘-설치하기)
### 2. [파워쉘 꾸미기](#2-파워쉘-꾸미기)
### 3. [파워쉘 $PROFILE 설정하기](#3-파워쉘-profile-설정하기)

---

<br />

## 1. 파워쉘 설치하기

1. 윈도우 버튼을 눌러 `cmd`를 검색합니다.
2. 명령 프롬프트를 관리자 권한으로 실행합니다.
3. 아래의 명령어를 통해 파워쉘을 설치합니다.
  ```cmd
   # install with winget command
   winget search Microsoft.PowerShell
  ```
4. `윈도우 + r`을 누르고 `wt`를 입력해 설치가 잘 되었는지 확인합니다.
5. 아래의 명령어로 파워쉘을 관리자 권한으로 실행합니다.
   ```powershell
    start-process powershell -verb runAs
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
6.권한 설정이 완료되면, 파워쉘이 시작될 때 참조하는 $PROFILE을 설정합니다.
  ```powershell
    cd ~/Documents
    mkdir 'Windows PowerShell'
    New-Item '.\Windows PowerShell\profile.ps1'
  ```

<br />

---

<br />


## 자 이제 거의다 왔습니다!

8.이제, 터미널을 조금 더 예쁘게 만들어봅시다!
    1. 먼저 `이모지`와 다양한 `유니코드` 문자를 지원하는 코딩 폰트를 설치합니다.
       - JetBrain Mono NL - [다운로드 링크!](https://www.jetbrains.com/ko-kr/lp/mono/)
    2. Download [Oh-My-Posh](https://ohmyposh.dev/docs/migrating) 터미널 테마를 위힌 Oh-My-Posh 라이브러리
  ```powershell
    # install with winget command
    winget install JanDeDobbeleer.OhMyPosh -s winget
  ```
9. 마지막으로, 파워쉘 프로파일 저장이 완료되었다면 저장한 폴더로 이동해 powershell로 아래 `init.ps1` 스크립트를 실행해줍니다.
   * 정상적으로 위 과정을 따라오셨을 경우, profile 위치는 다음 명령어를 통해 확인할 수 있습니다
   * [init.ps1](./init.ps1) file and [Microsoft.PowerShell_profile.ps1](Microsoft.PowerShell_profile.ps1) file links 
  ``` powershell
   # open the powerhsell dir which located profile file
   ii $HOME'/Documents/Windows PowerShell'
  ```

<kbd>
   <img height="400px" alt="how to run the PS script" src="https://github.com/ShinMini/window-powershell-setup/assets/77220824/5966dda7-a2df-4b52-81eb-b067fcde30a9" />
</kbd>
10. `init.ps1` 파일의 실행이 완료되었을 경우, 이어서 `Microsoft.PowerShell_profile.ps1`  실행시켜 줍니다.

---

## 3. 파워쉘 $PROFILE 설정하기

### [How to Configure $PROFILE](./docs/config_profile.md)

- [Example $PROFILE](Microsoft.PowerShell_profile.ps1)

### [PS json Settings Example](settings.json)

- Press `ctrl + shift + ,` in PowerShell to open the JSON settings file.

---

# HAPPY HACKING :)

---
