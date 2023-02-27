# 시작하기 앞서 혹시 만약 내가 powershell이 뭔지 모른다? 혹은 설치를 안했다?

* 그런 당신을 위해 준비한 3가지 선택지
 1. 아직 안늦었으니 뒤로가기를 살며시 누른다. -> 정신 건강 +1

 2. 윈도우 버튼을 살포시 눌러 cmd를 검색한다. 
  	1. 관리자권한으로 실행하기를 눌러 명령 프롬프트창을 실행한다. 
  	2. 해당 명령어를 cmd에 입력해 입문을 시작한다. 
``` powershell 
# 파워쉘 설치
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

 3. 마이크로소프트 스토어를 통해 다운받는다. 


# How to find my windows Powershell profile?
\# how to set profile location(directory)

![image](https://user-images.githubusercontent.com/77220824/189601225-f0d7d1b6-8405-4cad-84d7-025bc68680c9.png)

## comman case
1. open powershell and write "notepad $PROFILE
` notepad $PROFILE `
2. and write whatever
---
## If you have error
1. open your powershell directroy 
* profile usually located 
  *  C:\Windows\System32\WindowsPowerShell\v1.0\
  *  C:\Windows\WinSxS\wow64_microsoft-windows-powershell-exe_31bf3856ad364e35_10.0.22000.1_none_c9ae46ac3b5c78ef\powershell.exe 
  *  C:\Users\[PUT_USER_NAME]\Documents\PowerShell\
2. make 'Microsoft.PowerShell_profile.ps1' using notepad
3. and then onen powershell
4. put ` notepad $profile `
5. write your personal profile whatever you want :)
---


## if you really can't find your user profile, following this steps
1. download everything.exe [link: https://www.voidtools.com/]
2. lunch everything
3. search powershell.exe
4. and push mouse right button 
5. click Openpath
6. and write your personal profile whatever you want :)
---

## how to set
1. open powershell
2. ctrl + shift + ,  => open setting.json file
3. copy & paste want file
--- 

# my uploaded files know you how to set windows powershell setting
---
### PSjson -> windows powershell setting.json profile description, 

### PSprofile -> windows powershell profile setting

### jandTheme.json -> setting oh-my-posh jandedobble.json for
* ! this file is not original !
* if you want adjust basic themes, go to [link: https://ohmyposh.dev/]
