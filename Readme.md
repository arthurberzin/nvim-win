# Install on Windows

### Install NVim
```
choco install neovim -fy
```
```
choco install python2 -fy
```
### Install [vim-plug](https://github.com/junegunn/vim-plug)

```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

### Setting-up config

```
mkdir $env:LOCALAPPDATA\nvim
```

