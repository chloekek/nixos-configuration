{ ... }:
{
    networking.hostName = "chloe-notebook";
    networking.nameservers = [ "8.8.8.8" "8.8.4.4" ];
    networking.firewall.enable = false;
    networking.wireless.enable = true;
}
