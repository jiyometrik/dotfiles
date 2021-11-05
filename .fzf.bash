# Setup fzf
# ---------
if [[ ! "$PATH" == */home/geo/.config/nvim/plugged/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/geo/.config/nvim/plugged/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/geo/.config/nvim/plugged/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/geo/.config/nvim/plugged/fzf/shell/key-bindings.bash"
