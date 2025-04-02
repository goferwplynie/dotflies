fastfetch
set -x EDITOR 'nvim'
set -g fish_greeting

function fish_prompt
    string join '' -- $USER "@" (set_color f03ae1) "Arch :3 " (set_color normal) (prompt_pwd --full-length-dirs 2) '>'
end

if status is-interactive
    
end
