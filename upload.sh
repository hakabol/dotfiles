cp -r ~/katana ~/dotfiles/kanata
cp -r ~/.config/nvim/* ~/dotfiles/nvim/
cp -r ~/.config/hypr/. ~/dotfiles/hypr/
cp -r ~/.config/kitty/. ~/dotfiles/kitty/
cp -r ~/.config/fish/. ~/dotfiles/fish/
rm -rf ~/dotfiles/nvim/.git
git add .
git commit -a
git push
