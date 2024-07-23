source on.sh
cp ~/.config/alacritty/alacritty.toml ~/.config/alacritty/templates/old.toml 
cp ~/.config/alacritty/templates/old.toml  ~/.config/alacritty/templates/old2.toml 
if [ "$TOGGLE" = "translucent" ]; then
    cp ~/.config/alacritty/templates/fb.txt ~/.config/alacritty/templates/on.sh
    cp ~/.config/alacritty/templates/fullbright.toml ~/.config/alacritty/alacritty.toml
else
    cp ~/.config/alacritty/templates/tl.txt ~/.config/alacritty/templates/on.sh
    cp ~/.config/alacritty/templates/translucent.toml ~/.config/alacritty/alacritty.toml
fi

