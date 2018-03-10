#! /bin/sh
#
# set-up.sh
# 

VIMRC_FP="${HOME}/.vimrc"
VIMRC_BAK_FP="${HOME}/.vimrc.`date +%Y%m%d%H%M`.bak"
if [ -f ${VIMRC_FP} ]; then
    echo "backup your ${VIMRC_FP} to ${VIMRC_BAK_FP}"
    mv ${VIMRC_FP} ${VIMRC_BAK_FP}
fi;
cat "vim/vimrc" > ${VIMRC_FP}
mkdir -p "${HOME}/.vim/autoload"
cp "vim/plug.vim" "${HOME}/.vim/autoload/plug.vim"


ZSHRC_FP="${HOME}/.zshrc"
ZSHRC_BAK_FP="${HOME}/.zshrc.`date +%Y%m%d%H%M`.bak" 
if [ -f ${ZSHRC_FP} ]; then
    echo "backup your ${ZSHRC_FP} to ${ZSHRC_BAK_FP}"
    mv ${ZSHRC_FP} ${ZSHRC_BAK_FP}
fi;
cat "zsh/zshrc" > ${ZSHRC_FP}
mkdir -p "${HOME}/.antigen/autoload/"
cp "zsh/antigen.sh" "${HOME}/.antigen/autoload/antigen.sh"

