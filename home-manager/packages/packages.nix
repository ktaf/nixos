{
    pkgs,
    xdg-hyprland,
    ...
} : {
    home.packages = with pkgs; [
    grim
    slurp
    libnotify
    lxappearance
    swaybg
    kitty
    rofi
    dunst
    wlogout
    rnix-lsp
    pamixer
    xfce.thunar
    ffmpeg
    obs-studio
    xdg-hyprland.packages.${pkgs.system}.hyprland-share-picker
    xclip
    wl-clipboard
    pavucontrol
    wget
    firefox
    wlr-randr
    wf-recorder
    glib
    ];
}
