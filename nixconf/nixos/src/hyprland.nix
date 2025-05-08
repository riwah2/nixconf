{ inputs, pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland = {
    enable = true;
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  programs.hyprlock.enable = true;
  services.hypridle.enable = true;
  programs.waybar.enable = false;
  xdg.portal.wlr.enable = true;
  environment.systemPackages = with pkgs; [
    pyprland
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
    hyprpaper
    hyprland
    hyprutils

    inputs.wezterm.packages.${pkgs.system}.default
    kitty
    cool-retro-term
    wlogout
    starship
    helix
    gnome-bluetooth
    gnome-keyring
    gnome-control-center
    polkit_gnome
    adw-gtk3
    bibata-cursors
    #bibata-cursors-translucent
    libsForQt5.qt5ct
    libsForQt5.qt5.qtwayland
    gtk3
    gtkmm3
    gtk-layer-shell
   # haskellPackages.gtksourceview3
    gtksourceviewmm
    cairomm
    yad
    gradience
    blueberry
    glib
    gvfs
    xdg-user-dirs
    xdg-user-dirs-gtk
    power-profiles-daemon
    upower
  ];

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    ];
  };
}
