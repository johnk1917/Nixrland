{ config, pkgs, lib, inputs, spicetify-nix, ... }: 

{
     home = { 
      username = "john1917";
      homeDirectory = "/home/john1917";
      stateVersion = "23.11";
      packages = builtins.attrValues (import ./hm-modules/scripts/scripts.nix {inherit pkgs;});
      file = {};
      sessionVariables = {};
      };
      programs.home-manager.enable = true;

      # Imports
      imports = [
          inputs.spicetify-nix.homeManagerModules.default 
          ./hm-modules/waybar/waybar.nix
          ./hm-modules/hyprland/hyprland.nix
          ./hm-modules/foot/foot.nix
          ./hm-modules/kitty/kitty.nix
          ./hm-modules/dunst/dunst.nix
          ./hm-modules/zathura/zathura.nix
          ./hm-modules/swaylock/swaylock.nix
          ./hm-modules/rofi/rofi.nix
          ./hm-modules/neofetch/neofetch.nix
          ./hm-modules/neovim/nvchad.nix
          ./hm-modules/betterdiscord/betterdiscord.nix
      ];

      # Enable GTK themes
       gtk = {
        enable = true;
         theme = {
             name = "adw-gtk3-dark";
             package = pkgs.adw-gtk3;
             # name = "Tokyonight-Dark-BL";
             # package = pkgs.tokyo-night-gtk
             # name = "Catppuccin-Mocha-Compact-Blue-Dark";
             # package = pkgs.catppuccin-gtk.override {
              # accents = ["blue"];
              # size = "compact";
              # tweaks = ["rimless"];
              # variant = "mocha";
              #};
        };
          iconTheme = {
            name  =  "Papirus";
            package = pkgs.papirus-icon-theme.override { color = "bluegrey"; };
            # package = pkgs.catppuccin-papirus-folders;
            # package = pkgs.gruvbox-dark-icons-gtk;
          }; 
          cursorTheme = {
            name = "Bibata-Modern-Ice";
            package = pkgs.bibata-cursors;
            #package = pkgs.catppuccin-cursors.mochaLavender;
            #name = "Catppuccin-Mocha-Lavender-Cursors";
            size = 16;
        };
      };

      # Mimetypes
      xdg.mimeApps.defaultApplications = {
        "application/pdf" = [ "zathura.desktop" ];
        "image/*" = [ "viewnior.desktop" ];
        "video/png" = [ "mpv.desktop" ];
        "video/jpg" = [ "mpv.desktop" ];
        "video/*" = [ "mpv.desktop" ];
        };      

      programs.spicetify =
        let
            spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system}; 
        in 
        {
          enable = true;
          enabledExtensions = with spicePkgs.extensions; [
            fullAppDisplay
            shuffle # shuffle+ (special characters are sanitized out of ext names)
            hidePodcasts
            adblock
          ];
          customColorScheme = {
            text = "dadada";
            subtext = "b3b9b8";
            extratext = "b3b9b8";
            main = "141b1e";
            sidebar = "141b1e";
            player = "141b1e";
            sec-player = "232a2d";
            card = "232a2d";
            sec-card = "67b0e8";
            shadow = "141b1e";
            selected-row = "6cbfbf";
            button = "8ccf7e";
            button-active = "8ccf7e";
            button-disabled  = "6cbfbf";
            tab-active = "67b0e8";
            notification = "67b0e8";
            notification-error = "e57474";
            misc = "e5c76b";
          }; 
        }; 
}
