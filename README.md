# dotfiles

## Commands

### New?

    mkdir $HOME/.dotfiles
    git init --bare $HOME/.dotfiles/

### Clone

    git clone --bare git@github.com:rodixxi/dotfiles.git $HOME/.dotfiles

### Create

    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    dotfiles config --local status.showUntrackedFiles no
    echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
    echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.config/fish/config.fish

### Check

    dotfiles checkout
    
### Add/Edit

    cd $HOME
    dotfiles add .zshrc
    dotfiles commit -m "zshrc"
    dotfiles push

### Connect

    dotfiles remote add dotfiles git@github.com:rodixxi/dotfiles.git
    dotfiles push --set-upstream dotfiles master
