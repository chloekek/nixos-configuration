# TODO: Split this file up into multiple files.
{ pkgs, ... }:
{
    services.xserver.enable = true;
  
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.displayManager.sddm.theme = fetchTarball {
        url = "https://github.com/AlfredoRamos/urbanlifestyle-sddm-theme/archive/0.4.3.tar.gz";
        sha256 = "1l1352in9djzj79mf3lr3w0m7miyg0my0ics7hpizgwqm1l7ppm2";
    };
  
    services.xserver.windowManager.i3.enable = true;
  
    services.xserver.xkbOptions = "ctrl:nocaps, compose:ralt";
  
    # Enable touchpad support.
    services.xserver.libinput.enable = true;
}
