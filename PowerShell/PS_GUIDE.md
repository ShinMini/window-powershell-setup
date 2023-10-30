
# 목차

### 1. [파워쉘 설치하기](#1-파워쉘-설치하기-1)

### 2. [파워쉘 꾸미기](#2-파워쉘-꾸미기-1)

### 3. [파워쉘 $PROFILE(설정파일) 세팅하기](#3-파워쉘-profile설정파일-세팅하기-1)

---

<br />
<br />
<br />


## 1. 파워쉘 설치하기

1. 윈도우 버튼을 눌러 cmd를 검색한다.
2. 관리자권한으로 실행하기를 눌러 명령 프롬프트창을 실행한다.
3. 아래 명령어를 CMD에 아래 명령어로 파워쉘을 설치합니다.
   ``` cmd
   # winget module 관리시스템을 사용해 powershell을 설치하는 명령어입니다.
   winget search Microsoft.PowerShell
   ```
4. `윈도우 + r` 버튼으로 빠른 실행에서 `wt` 명령어를 입력해 실행을 확인합니다.
5. 실행이 정상적으로 완료되었다면, 아래 명령어를 통해 관리자 권한으로 powershell을 실행해줍니다.
   ``` powershell
   # 관리자 권한으로 powershell 실
   start-process powershell -verb runAs
   # 현재 접속한 사용자(나)에 대해 파워쉘 설정 명령어 실행 권한을 부여하는 명령어입니다.
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
6. 권한 설정이 완료되었다면, powershell이 실행될 때 첫번째로 참고하는 소위 `$PROFIlE`을 설정해줄 차례입니다.
   ``` powershell
   # 먼저 documents 폴더로 이동해줍니다.
   cd ~/Documents
   # Powershell을 위한 profile 기본 설정 폴더를 생성해줍니다.
   mkdir 'Windows PowerShell'
   # 폴더 생성이 완료되었다면, powershell을 위한 default profile.ps file을 생성해줍니다.
   New-Item '.\Windows PowerShell\profile.ps1'
   ```
7. 파워쉘 profile config file이 만들어졌다면, 나만의 profile을 설정한 뒤 저장해줍시다.
**참고 예시** [shinmini's PS profile.ps1](./Microsoft.PowerShell_profile.ps1)
``` powershell
   # 먼저 documents 폴더로 이동해줍니다.
   notepad '.\Windows PowerShell\profile.ps1'
```

## 자 여기까지 설정을 완료했다면, 거의 다 왔습니다!

8. 아래서 부터는 조금 더 아름다운 우리의 터미널을 위해 필요한 파일들을 설치해 봅시다 :)
   1. 이모티콘 및 예쁜 기호들을 지원하는 코딩용 폰트를 설치해봅시다.
   - JetBrain Mono NL - 터미널 아이콘 및 다양한 `unicode`를 지원하는 폰트 형식입니다.
   - [jetbrains.com/lp/mono](https://www.jetbrains.com/ko-kr/lp/mono/)에서 다운로드 클릭
   - 다운로드 완료 이후, 압축해제 윈도우키 + `font` 검색해 fonts 폴더 오픈
   - 압축 해제된 폰트 드레그 & drop
   - powershell에서 `ctrl + ,` 를 입력해 json 파일로 이동해, 아래 그림처럼 폰트 설정
<kbd>
   <img alt="ps-font-config-img" src="https://github.com/ShinMini/window-powershell-setup/assets/77220824/12d88641-5ee3-492b-acd2-b30a6be64e5b" />
</kbd>
   2. [Oh-My-Posh](https://ohmyposh.dev/docs/migrating) 다운로드 -> 터미널 theme을 책임져주는 고마운 친구들입니다 :)
   ``` powershell
   winget install JanDeDobbeleer.OhMyPosh -s winget
   ```

9. 마지막으로, 파워쉘 프로파일 저장이 완료되었다면 저장한 폴더로 이동해 powershell로 해당 script를 실행해줍니다.
   * 정상적으로 위 과정을 따라오셨을 경우, profile 위치는 다음 명령어를 통해 확인할 수 있습니다.
  ``` powershell
   ii $HOME'/Documents/Windows PowerShell'
   ```

<kbd>
   <img height="400px" alt="how to run the PS script" src="https://github.com/ShinMini/window-powershell-setup/assets/77220824/8ad7cbed-5504-4cfc-b68f-d5ef859ad46a" />
</kbd>

## 3. 파워쉘 $PROFILE(설정파일) 세팅하기

### [$PROFILE 설정 설명서](./docs/config_profile.md)

- [PROFILE 예시](Microsoft.PowerShell_profile.ps1)

### [PS json setting 예시](settings.json)

- power shell 에서 `ctrl + shift + ,` 를 입력하면 나타나는 json 형식의 파워쉘 설정 파일이다.

---

### git-posh란?

![git-posh](img/git-posh.png)

- 저 위 아기자기한 main branch를 띄워주는,, 즉 현재 내 git branch위치가 어디인지 알려주는 module

- 설치.. 해야겠지? -> 약(10분소요)

## [git-posh 모듈 설치하기](./docs/posh-git.md)

---

### terminal-icons란?

![terminal-icons](img/git-posh.png)

- 저 위 아기자기한 icon들이 보이는가?
- 뭐하나 설치안하고.. -> 약(2분소요)

## [terminal-icons 모듈 설치하기](./docs/terminal-icons.md)

---

### gh이란?

- 내 컴퓨터 내 모든 directory에서 gh 커멘드로 등록해둔 정보에 손쉽게 다가갈 수 있는
- 한번 맛보면 빠져나가기 힘든 그런 친구

## [gh 설치하기](./docs/gh.md)

# HAPPY HACKING :)
