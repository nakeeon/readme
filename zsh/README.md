### Install Zplug plugin manage
`curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh`

### Install Oh-My-Zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### Zsh syntax highlighting
Mac OS
`brew install zsh-syntax-highlighting`

Ubuntu
`sudo apt install zsh-syntax-highlighting`

### Zsh autosuggestions
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
