_rake()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="deploy:rsync spec"

    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
}
complete -F _rake rake

