{ ... }:
{
    users.mutableUsers = false;

    users.users.root.password = "root";

    users.users.r.isNormalUser = true;
    users.users.r.password = "r";
    users.users.r.extraGroups = [ "audio" "vboxusers" "video" "wheel" ];
}
