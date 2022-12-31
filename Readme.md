# Install on Windows

### Install NVim
###### Open Powershell as admin and run command
```powershell
choco install neovim -fy;
choco install nodejs -fy;
choco install python2 -fy;
choco install pip -fy;
pip3 install jedi;
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

# Useful Links

[vim awesome](https://vimawesome.com/) - many plugins for vim

[astro vim](https://astronvim.github.io/) - cool build
