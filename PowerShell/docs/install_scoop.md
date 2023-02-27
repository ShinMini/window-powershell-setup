# Scoop 설치하기

---

1. powershell 권한 수정

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

```

2. scoop library 설치

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```
