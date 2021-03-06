#
# .zshrc
#   Settings script for zsh
#

# 入力補完を有効にする
autoload -U compinit
compinit

# 文字コードをUTF-8に設定
export LANG=ja_JP.UTF-8

# プロンプトの設定
PROMPT="[%m]%~%% "
PROMPT2="_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

# コマンド履歴関連の設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups	# ヒストリに重複登録をしない 
setopt share_history	# コマンド履歴を共有する

# コマンド履歴サーチの設定
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# cdの履歴を保存
# cd -<tab>で以前のディレクトリに簡単に戻れるようにする
setopt auto_pushd

# 重複パスを登録しない
typeset -U path cdpath fpath manpath

# ベルを鳴らさない
setopt no_beep

# sudo用のpathを設定
typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({/usr/local,/usr,}/sbin(N-/))

# pathを設定
path=(~/bin(N-/) /usr/local/bin(N-/) ${path})

#=====================
# 環境変数の設定
#=====================

#=====================
# alias の設定
#=====================
alias ll='ls --color=auto -l'
alias la='ls --color=auto -a'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

