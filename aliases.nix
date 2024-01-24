{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
   home.shellAliases = {
    "apply-david-laptop" = "nix run --impure home-manager/master -- -b bak switch --flake .#dlafreniere@david-laptop";
    
    "fleeks" = "cd ~/.config/fleek";
    };
}
