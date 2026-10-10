# zsh-vi-mode handles vi mode (replaces `bindkey -v` / KEYTIMEOUT).
# It resets keybindings when it initializes, so custom bindings go here.
zvm_after_init() {
  # fzf: Ctrl-R history, Ctrl-T files, Alt-C cd
  source <(fzf --zsh)

  # zsh-autosuggestions, fish-style (Right arrow / End also accept by default)
  bindkey -M viins '^F'  autosuggest-accept      # Ctrl-F: accept whole suggestion
  bindkey -M viins '^[f' forward-word            # Option-F: accept next word
  bindkey -M viins '^[F' vi-forward-blank-word   # Option-Shift-F: accept next WORD
}
