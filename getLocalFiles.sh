unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

case ${machine} in 
  Mac*)    
    if [ -d "${HOME}/.config/nvim/init.vim" ]
    then 
      cp "~/.config/nvim/init.vim" "${BASH_SOURCE[0]}/init.vim"
      echo "copied init.vim"
    fi
    ;;
esac
