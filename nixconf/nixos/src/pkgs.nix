 { pkgs, ...}:
 {


 environment.systemPackages = with pkgs; [

     kdePackages.dolphin
     kitty
     ghostty
     ags # from the overlay
     gjs
     gtk4
     libadwaita
     wrapGAppsHook4
     foot
     starship
    ];
}
