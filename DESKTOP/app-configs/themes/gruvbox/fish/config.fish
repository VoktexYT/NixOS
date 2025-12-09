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

# Gruvbox Dark Theme Colors for Fish
set -g fish_color_normal ebdbb2
set -g fish_color_command fabd2f
set -g fish_color_keyword d3869b
set -g fish_color_quote b8bb26
set -g fish_color_redirection 8ec07c
set -g fish_color_end fe8019
set -g fish_color_error fb4934
set -g fish_color_param ebdbb2
set -g fish_color_comment 928374
set -g fish_color_selection --background=504945
set -g fish_color_search_match --background=504945
set -g fish_color_operator 8ec07c
set -g fish_color_escape d3869b
set -g fish_color_autosuggestion 928374
set -g fish_pager_color_progress 928374
set -g fish_pager_color_prefix fabd2f
set -g fish_pager_color_completion ebdbb2
set -g fish_pager_color_description 928374
