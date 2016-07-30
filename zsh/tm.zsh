function tm() {
  [[ -z "$1" ]] && { echo "usage: tm <session>" >&2; return 1; }
  tmux -CC attach-session -t $1 || tmux -CC new-session -s $1
}
