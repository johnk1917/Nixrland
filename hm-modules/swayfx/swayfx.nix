{config, pkgs, ...}: {
  # Enable SwayFX
  wayland.windowManager.sway= {
    enable = true;
    package = pkgs.swayfx;
    xwayland = true;
    checkConfig = false;
    extraOptions = [
    "--config"
        "/etc/nixos/hm-modules/swayfx/config"
        ];

  };

}
