# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx
    end
end

alias yt="mpv --ytdl-format=22"
alias poweroff="systemctl poweroff"
alias reboot="systemctl reboot"
alias cat="batcat"
alias ls="lsd"
#alias sudo="doas"
alias v="nvim"
alias von="wg-quick up whisper-eng"
alias vof="wg-quick down whisper-eng"
#alias arduino="./home/whisper/github/arduino-1.8.19/arduino"
alias m="udiskie-mount /dev/sda1"
alias u="udiskie-umount /dev/sda1"
alias wp="cd /var/www/html/wp-content/plugins"

set -gx PATH $HOME/.local/bin $HOME/github/arduino-cli/bin $HOME/.cargo/bin $HOME.local/bin/ $PATH
function r
    rm $argv
end

