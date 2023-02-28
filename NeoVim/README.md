# NEO VIM set up for window PowerShell

### 윈도우 파워쉘유저를 위한 nvim 세팅 가이드입니다

---

## 목차

1. [사전 준비사항](#사전-준비사항)

2. [neo vim 설치](#installation)

1. [chocolatey를 사용한 설치](#install-choco)

2. [scoop을 사용한 설치](#install-scoop)

3. [설치 이후 config 파일 설정 / 플러그 연결](#config)

4. [neo vim 추천 라이브러리](#recommend-libraries)

---

## 최종 결과물

![final_result](https://user-images.githubusercontent.com/77220824/189604483-6b59397b-e743-4703-976d-483e337bc721.png)

---

## 세팅 환경

* OS: Windows 11
* terminal: PowerShell
* powershell package manager : choco

## 사전 준비사항

1. PowerShell
   * [설치 가이드](../PowerShell/PS_GUIDE.md)

2. chocolatey or scoop (choco를 통한 설치를 권장)
   * [choco 설치 가이드](../PowerShell/docs/install_choco.md)
   * [scoop 설치 가이드](../PowerShell/docs/install_scoop.md)

---

### Installation

---

## chocolatey version install guide : 초코레티 설치 가이드(권장)

* [초코(choco) 설치 가이드](./../PowerShell/docs/install_choco.md)

### install-choco

0. 관리자 권한으로 powershell 실행

  ``` powershell
  # --pre : 최신(Beta)버전, --pre를 떼고해도 무방
  choco install neovim --pre 
  ```

1. 설치가 완료된 후, 야무지게 config 파일 설정하기

---

## scoop version install guide : 스쿱버전 설치 가이드

#### install-scoop

* [스쿱(scoop) 설치 가이드](./../PowerShell/docs/install_scoop.md)

0. 관리자 권한으로 powershell 실행

1. Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
    `scoop install neovim`

2. Delete default configuration files (CAUTION: backup your files if this is not a fresh installation):

  ```console
  cd %userprofile%\AppData\Local\nvim
  del /s /q *
  for /f "delims=" %x in ('dir /b /ad .') do rd /s /q "%x"
  ````

3. Clone this repository:

    ```console
    cd %userprofile%\AppData\Local\nvim 
    git clone https://github.com/thiamteck/nvim-windows-sample-config.git .
    ```

4. Run installation script:

    ```console
    cd %userprofile%\AppData\Local\nvim
    scripts\express_setup.bat
    ```

5. (Optional) Install neovim provider for Node.js: `npm install -g neovim`

6. Install plugin with command: `nvim +PlugInstall`

7. 설치가 완료된 후 야무지게 환경설정하기

---

## nvim profile(config file)은 어디에 있나요?

### 1. choco를 통해 설치한 경우

* nvim init.vim, .vimrc 파일의 경우,
* 초기에 지정되어있지 않으므로, 설치 후 따로 파일을 만들어줘야함.
* 기본적으로 vim이 인지하는 config file 위치
* `~/.config/nvim/init.vim`

## configuration 세팅

1. `mkdir ~/.config/nvim`
2. `cd ~/.config/nvim`
3. `nvim init.vim`
4. `copy and paste` [this codes](init.vim)

---

### 2. scoop을 통해 설치한 경우

* config 파일 위치: `%userprofile%\AppData\Local\nvim\`
  * `init.vim` : main configuration files just like `.vimrc`
  * `ginit.vim` : configuration file just for GUI version of neovim

* Built-in color scheme directory: `%userprofile%\scoop\apps\neovim\0.3.0\Neovim\share\nvim\runtime\colors`

---

# 주인장 추천 라이브러리 맛집 모음

---

### Log files viewing

* Highlight lines with previous matched pattern via Highlight.vim: `<C-h><C-j>`

### Tuned for general writing

* distraction free writing via [Goyo](https://github.com/junegunn/goyo.vim) & [Limelight](https://github.com/junegunn/limelight.vim)
* grammar check with [vim-wordy](https://github.com/reedes/vim-wordy)
* include [Markdown with Vim](https://github.com/gabrielelana/vim-markdown)
* soft line wrap for text file and markdown file

* Install Ctags (install via scoop: `scoop install ctags`)
* Install Python 2.7, Python 3.6 (with pip, virtualenv)

### Enhanced UI with [NERDTree](https://github.com/scrooloose/nerdtree), [vim-airline](https://github.com/vim-airline/vim-airline)

### Many [awesome colorscheme](https://github.com/rafi/awesome-vim-colorschemes) to choose from, and able to use different colorscheme for GUI and console mode

### Python auto completion with [Deoplete](https://github.com/Shougo/deoplete.nvim), and [deoplete-jedi](https://github.com/zchee/deoplete-jedi)

## 추천하는 nvim color set

[oneharlf color](https://github.com/sonph/onehalf/tree/master/vim)
절반은 검정, 절반은 하양 .. 예쁘다..

* 물론 필자는 번갈아가며 다양하게 쓰는중
![image](https://user-images.githubusercontent.com/77220824/189599838-ad0eb148-8e03-4e75-8124-a2f529d1a5e2.png)

### 제가 참조한 글 목록입니다

* [참조 1](https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84)
  * 위 글은 네오빔에 관한 기초 설정 파일 정보에 대한 좋은 정보를 많이 담고 있습니다. 참고해보세요 :)

* [참조 2](https://github.com/jdhao/nvim-config)
  * 네오빔 설정 끝판왕 - vim 그자체, 인간 vim
  * 사실 제 글은 네오빔 입문에 맞춰져있어, 이분 글과는 다소 거리가 멀지만, 그래도 한번 참고할 가치가 있는 글이니,
  * 혹여나 빔에 애정이 많으시다면, 꼭 한번 확인해보시면 좋을 듯 합니다. :)
