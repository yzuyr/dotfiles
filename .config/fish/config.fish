if status is-interactive
    starship init fish | source
    abbr -a s ssh
    abbr -a g git
    abbr -a b bun
    abbr -a br "bun run"
    abbr -a bi "bun install"
    abbr -a e nvim
    abbr -a ga "git add ."
    abbr -a gc "git commit -m \""
    abbr -a gp "git push"
    abbr -a gco "git checkout"
    abbr -a dot "cd ~/dotfiles/ && stow . && cd -"
    abbr -a rebuild "sudo nixos-rebuild switch -I nixos-config=/home/ryuz/config.nix"
    alias ... "cd ../.."
end
