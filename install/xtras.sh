if [ -z "$OMARCHY_BARE" ]; then
  yay -S --noconfirm --needed \
    gnome-calculator gnome-keyring \
    libreoffice obs-studio kdenlive \
    pinta localsend-bin

  yay -S --noconfirm --needed 1password-beta 1password-cli ||
    echo -e "\e[31mFailed to install 1password because of a keyserver problem. Continuing without!\e[0m"
fi

# Copy over Omarchy applications
source ~/.local/share/omarchy/bin/omarchy-refresh-applications || true
