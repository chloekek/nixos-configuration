# TODO: Split this file up into multiple files.
{ ... }:
{
    programs.zsh.enable = true;
    programs.zsh.autosuggestions.enable = true;
    programs.zsh.syntaxHighlighting.enable = true;
    programs.zsh.interactiveShellInit = ''
        bindkey -e
        bindkey "''${terminfo[khome]}" beginning-of-line
        bindkey "''${terminfo[kend]}" end-of-line
        bindkey "''${terminfo[kdch1]}" delete-char
    '';
    programs.zsh.promptInit = ''
        PS1='%(0?.%F{green}.%F{red})[%T] %n@%M %~/%f %(!.%F{red}#%f.%F{green}$%f) '
    '';
}
