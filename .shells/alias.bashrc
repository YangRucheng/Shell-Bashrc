# 可爱的 shell 快捷方式
alias ls='ls --sort=extension --color=auto'
alias ll='ls -lh'
alias lal='ls -alh'
alias la='ls -A'
alias pms='sudo pm-suspend'
alias psg='ps -A | grep'
alias se='sudo gvim'
alias e='gvim'
alias smi='sudo make install'
alias l='ls -CF'

# Cool colors for man pages
alias man="TERMINFO=~/.terminfo TERM=mostlike LESS=C PAGER=less man"

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# 用回收站代替直接删除
alias rm="recycle"
recycle() {
    local recycle_dir=~/.recyclebin/$(date +%Y-%m-%d)
    mkdir -p "$recycle_dir"
    for file in "$@"; do
        if [ -e "$file" ]; then
            local filename=$(basename "$file")
            local extension="${filename##*.}"  # 获取文件扩展名
            local filename_noext="${filename%.*}"  # 获取不带扩展名的文件名
            local target="$recycle_dir/${filename_noext} (1).${extension}"  # 构建目标路径
            count=2
            while [ -e "$target" ]; do
                target="$recycle_dir/${filename_noext} ($count).${extension}"
                count=$((count + 1))
            done
            mv "$file" "$target"
            echo "已将 '$file' 移动到回收站为 '$target'"
        else
            echo "文件 '$file' 不存在"
        fi
    done
    find ~/.recyclebin/ -type d -mtime +7 -exec rm -rf {} \; # 删除大于七天的文件
}
