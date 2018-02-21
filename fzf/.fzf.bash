# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/tomjerry/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/tomjerry/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/tomjerry/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/tomjerry/.fzf/shell/key-bindings.bash"

