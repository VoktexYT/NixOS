function fish_greeting
    # Remove welcome message
end

clear

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias ff='firefox'
alias lv='nvim'
alias rebuild='sudo nixos-rebuild switch'

# Tokyo Night Theme Colors for Fish
set -g fish_color_normal c0caf5
set -g fish_color_command 7aa2f7
set -g fish_color_keyword bb9af7
set -g fish_color_quote 9ece6a
set -g fish_color_redirection 7dcfff
set -g fish_color_end ff9e64
set -g fish_color_error f7768e
set -g fish_color_param c0caf5
set -g fish_color_comment 565f89
set -g fish_color_selection --background=33467c
set -g fish_color_search_match --background=33467c
set -g fish_color_operator 7dcfff
set -g fish_color_escape bb9af7
set -g fish_color_autosuggestion 565f89
set -g fish_pager_color_progress 565f89
set -g fish_pager_color_prefix 7aa2f7
set -g fish_pager_color_completion c0caf5
set -g fish_pager_color_description 565f89
