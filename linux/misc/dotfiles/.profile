i=$(who | awk 'BEGIN{i=0} {if ($1 == "'"$USER"'") i++} END{print i}');

export PS1='[$(date +%d)/$(date +%m)/$(date +%y) $(date +%T)] $(pwd) |  ';

if [ $i -eq 1 ]; then echo hello; (pipewire & pipewire-pulse & sleep 1; wireplumber &) & Hyprland; fi;
