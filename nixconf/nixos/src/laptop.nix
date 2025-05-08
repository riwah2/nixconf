{
  config,
  lib,
  pkgs,
  ...
}: {
  options.asus = {
    enable = lib.mkEnableOption "Asus Laptop";
  };

  config = lib.mkIf config.asus.enable {
    # ----Asusctl----
    services.asusd = {
      enable = true;
      enableUserService = true;
    };
   #----- Base services-----
     # Network
     networking.networkmanager.enable = true;
     # Bluetooth
    hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
    settings.General.Experimental = true; # bluetooth percentage
   };
   # dconf
  programs.dconf.enable = true;

    services = {
    printing.enable = true;
    flatpak.enable = true;
  };

   environment.systemPackages = with pkgs; [asusctl];


    # openrgb
    services.hardware.openrgb.enable = true;

    };

}
