
export PATH=$PATH:/usr/local/node/bin
export PATH=$PATH:/usr/local/go/bin


export JAVA_HOME=/usr/lib/jvm/jdk-20
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH



# --- 设置代理 ---
alias clash="bash /etc/clash/clash.sh"
proxy(){
    export all_proxy=http://127.0.0.1:520
    export ALL_PROXY=$all_proxy
    export http_proxy=$all_proxy
    export https_proxy=$all_proxy
}
proxy;
noproxy(){
    unset http_proxy
    unset https_proxy
}


# export PATH=$HOME/scripts:$HOME/.local/bin:/usr/local/bin:$PATH
# export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
# export EDITOR='gvim' ALTERNATE_EDITOR='vim' VISUAL='gvim'


# # Bash History
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# export HISTCONTROL=ignoreboth
# export HISTIGNORE='&:clear:ls:cd:[bf]g:exit:[ t\]*'

# # Bitbake Env settings
# export BBPATH=/stuff/maemo-angstrom:/stuff/build:/stuff/openembedded
# export PATH=/stuff/bitbake/bin:$PATH


