alias reload='source ~/.zshrc'
alias wifi-list="nmcli device wifi list"
alias timezone-toronto="sudo timedatectl set-timezone America/Toronto"
alias timezone-amsterdam="sudo timedatectl set-timezone Europe/Amsterdam"
alias decrypt-hyprland-cache="gocryptfs /home/miso/.local/share/.docs/.cache-hyprland-old/ ~/.private/"
alias encrypt-hyprland-cache="umount ~/.private"

alias eduroam-add="nmcli connection add type wifi ifname wlp0s20f3 con-name eduroam ssid eduroam wifi-sec.key-mgmt wpa-eap 802-1x.eap ttls 802-1x.identity 'm.a.lerch@student.utwente.nl' 802-1x.anonymous-identity 'anonymous@utwente.nl' 802-1x.phase2-auth mschapv2 802-1x.password 'PmGWfjb35m%AT&'"

alias pull_deck_documents='push diogenes:/home/diogenes/Files/Documents/ $HOME/Documents/'
alias pull_deck_path=''
alias pull_deck_videos='push diogenes:/home/diogenes/Files/Videos/ $HOME/Videos/'
alias pull_deck_videos_shared='push diogenes:/home/diogenes/Files/Videos/shared/ $HOME/Videos/shared'
alias pull_phone_shared='push phone:~/storage/shared/ $HOME/Synthesis/ -e "ssh -p 8022"'

alias push_deck_documents='push $HOME/Documents/ diogenes:/home/diogenes/Files/Documents/'
alias push_deck_videos='push $HOME/Videos/ diogenes:/home/diogenes/Videos/'
alias push_deck_videos_shared='push $HOME/Videos/shared/ diogenes:/home/diogenes/Videos/shared/'
alias push_phone_shared='push $HOME/Synthesis/ phone:~/storage/shared/ -e "ssh -p 8022"'
