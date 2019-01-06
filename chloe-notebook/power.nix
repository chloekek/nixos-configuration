{ ... }:
{
    powerManagement.powertop.enable = true;

    # Suspend even if HDMI attached.
    services.logind.lidSwitchDocked = "suspend";
}
