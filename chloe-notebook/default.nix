{ config, ... }:

{
    imports = [
        ./audio.nix
        ./boot-loader.nix
        ./fonts.nix
        ./light.nix
        ./logind.nix
        ./networking.nix
        ./packages.nix
        ./postgresql.nix
        ./power.nix
        ./redshift.nix
        ./time.nix
        ./users.nix
        ./vim.nix
        ./x.nix
        ./zsh.nix
    ];
}
