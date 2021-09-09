set fish_git_dirty_color red
set fish_git_not_dirty_color green

function parse_git_branch
  set -l git_diff (git diff)
  set_color $fish_git_not_dirty_color
  if test -n "$git_diff"
    set_color $fish_git_dirty_color
  end
  printf '%s' (git branch --show-current)
  set_color normal
end
