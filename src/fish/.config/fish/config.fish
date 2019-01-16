eval (direnv hook fish)

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/coreutils/bin" $fish_user_paths
set -g fish_user_paths "$HOME/Library/Android/sdk/platform-tools" $fish_user_paths

if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
end
thefuck --alias | source

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end