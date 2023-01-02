# Install on Windows

### Install NVim
###### Open Powershell as admin and run command
```powershell
choco install neovim -fy;
choco install nodejs -fy;
choco install python2 -fy;
choco install pip -fy;
pip3 install jedi;
choco install lazygit -fy;
choco install lazydocker -fy;
dotnet tool install --global csharp-ls;
echo "done..."
```
### del-vim-tagbar Plugin depend on [Exuberant Ctags](https://ctags.sourceforge.net/)
###### To install it just copy `ctag.exe` to folder in path list
     
### Install [vim-plug](https://github.com/junegunn/vim-plug)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

### Get config

```powershell
git clone https://github.com/arthurberzin/vim $env:LOCALAPPDATA\nvim
```

### Install plugins
```powershell
nvim -c ':PlugInstall'
```

### Build Coc
```powershell
cd $env:LOCALAPPDATA\nvim-data\plugged\coc.nvim;
yarn install;
yarn build;
echo "done..."
```

#### Complete instaling Coc by installing needed languages
```powershell
nvim -c ':CocInstall coc-omnisharp coc-html-css-support coc-docker coc-yaml coc-json coc-eslint coc-css coc-jedi coc-prettier coc-git coc-angular coc-angular coc-csharp-ls'
```
# Install on Linux

### Install NVim
###### Open Bash run commands
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```
If the `./nvim.appimage` command fails, try:

```bash
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
```
### Install dependencies 
#### - install packages
```bash
sudo apt-get install python2 && sudo apt-get install python3 python3.10-venv python-pip python3-pip python-jedi
```
```bash
 brew install lazygit ;
    brew install lazydocker;
    brew install bpytop;
    brew install ncdu
```
```bash
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
```
```bash
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
```
```bash
sudo update-alternatives --config python
```

###### select 2.7

```bash
pip3 install jedi
```
```bash
npm install --global yarn
```
#### - In order to use Coc with Dotnet install csharp-ls
```bash
dotnet tool install --global csharp-ls
```

####  - del-vim-tagbar Plugin depend on [Exuberant Ctags](https://ctags.sourceforge.net/)
```bash
sudo apt-get install -y exuberant-ctags
```
#### - install [vim-plug](https://github.com/junegunn/vim-plug)

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Get config

```bash
cd ~ && mkdir .config && cd .config && mkdir nvim && cd ~
git clone https://github.com/arthurberzin/vim ~/.config/nvim
```

### Install plugins
```bash
nvim -c ':PlugInstall'
```

### Build Coc
```bash
cd ~/.local/share/nvim/plugged/coc.nvim && yarn install && yarn build && nvim -c ':PlugInstall'
```

#### Complete instaling Coc by installing needed languages
```bash
nvim -c ':CocInstall coc-omnisharp coc-html-css-support coc-docker coc-yaml coc-json coc-eslint coc-css coc-jedi coc-prettier coc-git coc-angular coc-csharp-ls'
```



# Useful Links

[vim awesome](https://vimawesome.com/) - many plugins for vim

[astro vim](https://astronvim.github.io/) - cool build
