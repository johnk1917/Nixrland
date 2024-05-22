{config, pkgs, ... }: {
  programs.foot = {
    enable = true; 
    server = {
      enable = true;
    };
    settings = {
      main = {
        font = "Iosevka Nerd Font:Medium:size=13";
        font-bold = "Iosevka Nerd Font:Bold:size=13";
        font-italic = "Iosevka Nerd Font:Italic:size=13";
        font-bold-italic="Iosevka Nerd Font:Bold Italic:size=13";

        pad="12x12";
      };
      
      bell = {
        urgent = "yes";
        notify = "yes";
      };
        
     # Colors 
        colors = {
           alpha="0.95";
            /* # TokyoNight Colors  
            background="#1a1b26";
            foreground="#a9b1d6";

            regular0="#32344a";
            regular1="#f7768e";
            regular2="#:9ece6a";
            regular3="#e0af68";
            regular4="#7aa2f7";
            regular5="#bb9af7";
            regular6="#7dcfff";
            regular7="#a9b1d6";

            bright0="#414868";
            bright1="#f7768e";
            bright2="#9ece6a";
            bright3="#e0af68";
            bright4="#7aa2f7";
            bright5="#bb9af7";
            bright6="#7dcfff";
            bright7="#c0caf5"; */

          # Kanagawa Colors 
           /* background="#1f1f28";
           foreground="#dcd7ba";
           
           regular0="#090618";
           regular1="#c34043";
           regular2="#76946a";
           regular3="#c0a36e";
           regular4="#7e9cd8";
           regular5="#958fb8";
           regular6="#6a9589";
           regular7="#c8c093";

           bright0="#727169";
           bright1="#e82424";
           bright2="#98bb6c";
           bright3="#e6c384";
           bright4="#7fb4ca";
           bright5="#938aa9";
           bright6="#7aa89f";
           bright7="#dcd7ba"; */

        # Catppuccin Colors
        /*
           foreground="#cdd6f4"; 
           background="#181825";

           regular0="#45475a"; 
           regular1="#f38ba8";   
           regular2="#a6e3a1";  
           regular3="#f9e2af"; 
           regular4="#89b4fa";
           regular5="#f5c2e7";
           regular6="#94e2d5";   
           regular7="#bac2de";   

           bright0="#585b70";    
           bright1="#f38ba8";  
           bright2="#a6e3a1";    
           bright3="#f9e2af";    
           bright4="#89b4fa";    
           bright5="#f5c2e7";    
           bright6="#94e2d5";    
           bright7="#a6adc8";    
        */

         # Gruvbox Colors 
           /* background="#1d2021";
           foreground="#ebdbb2";

           regular0="#282828";
           regular1="#cc241d";
           regular2="#98971a";
           regular3="#d79921";
           regular4="#7daea3";
           regular5="#b16286";
           regular6="#689d6a";
           regular7="#a89984";

           bright0="#3c3836";
           bright1="#fb4934";
           bright2="#b8bb26";
           bright3="#fabd2f";
           bright4="#7daea3";
           bright5="#d3869b";
           bright6="#8ec07c";
           bright7="#ebdbb2"; */

          # Oxocarbon Colors 
          /* background="#161616";
          foreground="#ffffff";
          
          regular0="#262626";
          regular1="#ee5396";
          regular2="#42be65";
          regular3="#ffab91";
          regular4="#33b1ff";
          regular5="#be95ff";
          regular6="#3ddbd9";
          regular7="#dde1e6";

          bright0="#262626";
          bright1="#ee5396";
          bright2="#42be65";
          bright3="#ffab91";
          bright4="#33b1ff";
          bright5="#be95ff";
          bright6="#3ddbd9";
          bright7="#dde1e6"; */ 

          # Dark Decay Colors 
          /* background="#0d0f18";
          foreground="#a5b6cf";

          regular0="#32374d";
          regular1="#dd6777";
          regular2="#90ceaa";
          regular3="#ecd3a0";
          regular4="#86aaec";
          regular5="#c296eb";
          regular6="#93cee9";
          regular7="#cbced3";

          bright0="#36394a";
          bright1="#e26c7c";
          bright2="#95d3af";
          bright3="#f1d8a5";
          bright4="#8baff1";
          bright5="#c79bf0";
          bright6="#98d3ee";
          bright7="#d0d3d8"; */

          # Everblush Colors
          background="141b1e";
          foreground="dadada";

          regular0="232a2d";
          regular1="e57474";
          regular2="8ccf7e";
          regular3="e5c76b";
          regular4="67b0e8";
          regular5="c47fd5";
          regular6="6cbfbf";
          regular7="b3b9b8";

          bright0="2d3437";
          bright1="ef7e7e";
          bright2="96d988";
          bright3="f4d67a";
          bright4="71baf2";
          bright5="ce89df";
          bright6="67cbe7";
          bright7="bdc3c2";
          
          };
      };
    };
 }
