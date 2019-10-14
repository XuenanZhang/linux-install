target_dir=$(pwd)/include

cp -f ~/.tmux.conf ${target_dir}/tmux/
cp -f ~/.cargo/config ${target_dir}/tools/

cp -f ~/.zshrc ${target_dir}/zsh/
cp -f ~/.oh-my-zsh/themes/ys.zsh-theme ${target_dir}/zsh/

cp -f ~/.vimrc ${target_dir}/vim/
cp -f ~/.vimrc.before ${target_dir}/vim/
cp -f ~/.vimrc.plugin ${target_dir}/vim/
cp -f ~/.agignore ${target_dir}/vim/
cp -rf ~/.vim/syntax ${target_dir}/vim/.vim/
cp -rf ~/.vim/UltiSnips ${target_dir}/vim/.vim/
