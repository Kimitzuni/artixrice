if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
	# red yellow green blue magenta red white
	printf "\033[1m%s[%s%s%s@%s%s %s%s%s]%s\$\033[0m " \
		(set_color red) (set_color yellow) $USER (set_color green) \
		(set_color blue) $hostname (set_color magenta) (prompt_pwd) \
		(set_color red) (set_color white)
end

set fish_greeting
source $HOME/.config/fish/dirsrc
