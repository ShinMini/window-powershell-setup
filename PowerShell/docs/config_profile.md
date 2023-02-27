# PowerShell Profile Configuration

---

## $PROFILE 이란?

- window power shell이 실행될 때 자동으로 참조하는 소스폴더, powershell 실행시 필요한 설정 파일을 유저가 따로 지정해줄 수 있다,

- 쉽게 말해 내 입맛대로 터미널을 튜닝 가능하다!

## $PROFILE 설정 방법

#### 1. 현재 powershell profile 설정 문서 열기

```powershell
notepad $PROFILE
```

#### 2. powershell 설정용 profile에 설정할 정보 기입해주기.

- [PROFILE 예시](./../Microsoft.PowerShell_profile.ps1)

#### 3. 저장 위치

`C:\Users\[대충 유저이름]\Documents\PowerShell`

- or

`C:\Users\[대충 유저이름]\OneDrive\Documents\PowerShell`

- ~~정보) OneDrive를 절대 믿지 않을 것...~~

#### 4. 파일 이름,

- Microsoft.PowerShell_profile.ps1

5. 저장 후, powershell 을 종료 후 다시 재 실행,

6. 혹은 `.$PROFILE` 커맨드를 입력해 적용되는 지 확인.
