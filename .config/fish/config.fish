if status is-interactive
    starship init fish | source
    abbr -a g git
    abbr -a b bun
    abbr -a br "bun run"
    abbr -a bi "bun install"
    abbr -a e nvim
    abbr -a dea "distrobox enter arch"
    abbr -a ga "git add ."
    abbr -a gc "git commit -m \""
    abbr -a gp "git push"
    abbr -a gco "git checkout"
    alias ... "cd ../.."
end
