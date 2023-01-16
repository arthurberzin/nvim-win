
# Install on Windows
#####  ` NOT INSTALL Python2`

### Install NVim
###### Open Powershell as admin and run command
```powershell
choco install neovim -fy;
choco install nodejs -fy;
choco install python3 -fy;
choco install lazygit -fy;
choco install lazydocker -fy;
choco install terraform-lsp -fy;
choco install ripgrep -fy;
choco install gnuwin32-coreutils.install -fy;
choco install fd -fy;
choco install llvm -fy;
choco install wget -fy;
choco install pwsh -fy;
choco install go -fy;
choco install gh -fy;
dotnet tool install --global csharp-ls;
dotnet tool install --global csharp-language-server-protocol;
curl <https://bootstrap.pypa.io/get-pip.py> -o get-pip.py;
python get-pip.py;
pip3 install jedi;
pip install python-language-server;
yarn global add vim-language-server;
npm i -g pyright;
npm i -g coc-sumneko-lua;
npm i -g tree-sitter-cli;
npm i -g typescript typescript-language-server;
npm i -g vscode-languageserver;
npm i -g vscode-langservers-extracted;
npm i -g vscode-languageclient;
npm i -g vscode-html-languageservice;
npm i -g vscode-css-languageserver-bin;
npm i -g bash-language-server;
npm i -g yaml-language-server;
npm i -g sql-language-server;
npm i -g azure-pipelines-language-server;
npm i -g @azure/cosmos-language-service;
npm i -g dockerfile-language-server-nodejs;
npm i -g @vscode/debugadapter;
npm i -g node-debug2;
npm i -g vscode-chrome-debug-core;
npm i -g neovim;
ridk install 1;
gem install neovim -f;
gem environment;
python -m pip install virtualenv;
python -m venv venv;
.\venv\Scripts\activate.bat;
pip install flask;
echo "done ..."
```

### Get config
```powershell
git clone https://github.com/arthurberzin/nvim-win $env:LOCALAPPDATA\nvim
```

     
## Install [packer.nvim](https://github.com/wbthomason/packer.nvim)

```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

### Install plugins
```powershell
nvim +":PackerSync"
```
### Login to GitHub
```powershell
gh auth login
```
### Set `tree-sitter-cli` to Path
```powershell
Set-ItemProperty -path HKCU:\Environment\ -Name Path -Value "$((Get-ItemProperty -path HKCU:\Environment\ -Name Path).Path);$env:APPDATA\npm\node_modules\tree-sitter-cli";
```


### If will be needed
#### del-vim-tagbar Plugin depend on [Exuberant Ctags](https://ctags.sourceforge.net/)
###### To install it just copy `ctag.exe` to folder in path list


### Windows HotKey
###### vim code
```vim
source $VIMRUNTIME/mswin.vim
behave mswin
```