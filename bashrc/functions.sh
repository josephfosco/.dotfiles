# git branch colorizing
# old way
# function parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }

parse_git_branch() {
    branch=$(git symbolic-ref --short -q HEAD 2>/dev/null)
    [ -n "$branch" ] && echo "($branch)"
}
PS1="[\u@\h \W]\$(parse_git_branch)$ "
