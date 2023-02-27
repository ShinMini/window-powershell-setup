# Chocolatey powershell library management tool

---

### 1. 설치 방법

1. [공식 웹사이트](https://chocolatey.org/)에서 다운로드

2. 명령 프롬프트 (cmd or PS)를 통해 설치 (WINDOW)
   1. 관리자 권한으로 powershell을 실행한다.
   2. power shell에 아래 명령어를 입력해 chocolatey library를 설치한다.

```powershell
. Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

2-1. 선생님 저는 파워쉘도 없는데요?

    1. 당황하지말고 cmd를 관리자 권한으로 실행한다.

    2. 아래 명령어를 입력해 chocolatey를 설치한다.

```cmd
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

#### 설치가 완료되었다면

- 아래 명령어를 입력해 설치가 제대로 되었는지 확인

```powershell
choco --version
```
