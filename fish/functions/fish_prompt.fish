function fish_prompt
  set -l git_dir (git rev-parse --git-dir 2> /dev/null)
  printf '%s ' (set_color magenta)(basename $PWD)(set_color normal)

  if test -n "$git_dir"
    #printf '%s ' (git branch --show-current)
    parse_git_branch
  end

  set_color magenta
  printf '/>'
  set_color normal
end
