{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
    home.username = "dlafreniere";
    home.homeDirectory = "/home/dlafreniere";
    programs.git = {
        enable = true;
        aliases = {
            pushall = "!git remote | xargs -L1 git push --all";
            graph = "log --decorate --oneline --graph";
            add-nowhitespace = "!git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -";
        };
        userName = "David LaFreniere";
        userEmail = "dlafreniere349@gmail.com";
        extraConfig = {
            feature.manyFiles = true;
            init.defaultBranch = "main";
            gpg.format = "ssh";
        };

        signing = {
            key = "";
            signByDefault = builtins.stringLength "" > 0;
        };

        lfs.enable = true;
        ignores = [ ".direnv" "result" ];
  };
  
}
