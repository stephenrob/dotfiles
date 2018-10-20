# CLI Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias weather="curl -4 http://wttr.in/~Lancaster,UK"
alias list="tree -L 1"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias dev="cd $DEVELOPMENT"
alias dit="dev && cd code/github.com/lulibrary"
alias bfm="dev && cd code/github.com/bailriggfm"
alias la1="dev && cd code/github.com/la1tv"
alias nasta="dev && cd code/github.com/nasta"
alias dmao="dev && cd code/github.com/dmaonline"
alias luaws="dev && cd code/bitbucket.org/lu-aws"
alias gh="dev && cd code/github.com/stephenrob"
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

# Vagrant
alias v="vagrant global-status"
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vreload="vagrant reload"
alias vrebuild="vagrant destroy --force && vagrant up"

# Mackup
alias mb='mackup backup'
alias mr='mackup restore'

# Desktop Hidding
alias hidedesktop="defaults write com.apple.finder CreateDesktop false; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop true; killall Finder"

# Terraform
alias tfplan="terraform plan -out=/tmp/plan"
alias tfp="tfplan"
alias tfapply="terraform apply /tmp/plan"
alias tfa="tfapply"
alias tfg="terraform get"
alias tfgu="terraform get -update=true"
alias tfi="terraform init"
alias tfr="terraform refresh"
alias tfo="terraform output"

# Kops Cluster Scripts
alias kopscreate="${DEVELOPMENT}/code/scratch/kops-cluster-scripts/create_cluster.sh"
alias kopsinit="${DEVELOPMENT}/code/scratch/kops-cluster-scripts/init_cluster.sh"
