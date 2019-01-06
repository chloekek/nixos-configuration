{ pkgs, ... }:
{
    nixpkgs.config.allowUnfree = true;
    users.defaultUserShell = pkgs.zsh;
    services.postgresql.package = pkgs.postgresql_10;
    services.xserver.windowManager.i3.package = pkgs.i3-gaps;

    environment.systemPackages = [
        # General.
        pkgs.ack
        pkgs.cloc
        pkgs.dnsutils
        pkgs.file
        pkgs.git
        pkgs.htop
        pkgs.man-pages
        pkgs.rofi
        pkgs.sakura
        pkgs.tree
        pkgs.unzip
        pkgs.wget

        # Audio.
        pkgs.spotify

        # Communicators.
        pkgs.firefox
        pkgs.newsboat
        pkgs.w3m
        pkgs.weechat

        # Editors.
        pkgs.vim
        (
                let latest = /home/r/nixpkgs;
                # TODO: Properly pass the config here!
                in import latest { config = { allowUnfree = true; }; }
        ).vscode

	# Games.
        pkgs.multimc
        (
                let latest = /home/r/nixpkgs;
                # TODO: Properly pass the config here!
                in import latest { config = { allowUnfree = true; }; }
        ).steam

        # Graphics.
        pkgs.blender
        pkgs.gimp
        pkgs.imagemagick7
        pkgs.inkscape
    ];
}
