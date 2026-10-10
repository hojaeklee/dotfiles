# lf, then cd to the last directory it was in
lfcd() { cd "$(command lf -print-last-dir "$@")" }
