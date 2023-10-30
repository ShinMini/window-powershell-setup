# Table of Contents

### 1. [Installing PowerShell](#1-installing-powershell)
### 2. [Customizing PowerShell](#2-customizing-powershell)
### 3. [Setting Up PowerShell $PROFILE](#3-setting-up-powershell-profile)

---

<br />
<br />

## 1. Installing PowerShell

1. Press the Windows button and search for `cmd`.
2. Run Command Prompt as an administrator.
3. Install PowerShell using the following command.
    ```cmd
    winget search Microsoft.PowerShell
    ```
4. Press `Windows + r` and type `wt` to verify that the installation is successful.
5. If it is, run the following command to execute PowerShell with administrator privileges.
    ```powershell
    start-process powershell -verb runAs
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```
6. After setting up permissions, configure the `$PROFILE` that PowerShell refers to when it starts.
    ```powershell
    cd ~/Documents
    mkdir 'Windows PowerShell'
    New-Item '.\Windows PowerShell\profile.ps1'
    ```
  
## We're Almost There!

8. Next, let's make our terminal even more attractive!
    1. Install a coding font that supports emojis and various `unicode` characters.
       - JetBrain Mono NL - [Download here](https://www.jetbrains.com/ko-kr/lp/mono/)
    2. Download [Oh-My-Posh](https://ohmyposh.dev/docs/migrating) for terminal theming.
       ```powershell
       winget install JanDeDobbeleer.OhMyPosh -s winget
       ```
9. Finally, navigate to the folder where you saved your PowerShell profile and run the script.
    * [init.ps1](./init.ps1) file and [Microsoft.PowerShell_profile.ps1](Microsoft.PowerShell_profile.ps1) file links 
    * To confirm the profile location, use the following command:
  ``` powershell
   ii $HOME'/Documents/Windows PowerShell'
   ```

<kbd>
   <img height="400px" alt="how to run the PS script" src="https://github.com/ShinMini/window-powershell-setup/assets/77220824/5966dda7-a2df-4b52-81eb-b067fcde30a9" />
</kbd>
10. After running the `init.ps1` file then, click the `Microsoft.PowerShell_profile.ps1` file for configuring.

## 3. Setting Up PowerShell $PROFILE

### [How to Configure $PROFILE](./docs/config_profile.md)

- [Example $PROFILE](Microsoft.PowerShell_profile.ps1)

### [PS json Settings Example](settings.json)

- Press `ctrl + shift + ,` in PowerShell to open the JSON settings file.

---

# HAPPY HACKING :)

---
