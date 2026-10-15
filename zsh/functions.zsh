wifi-connect() {
	local ssid="$1"
	local pass="$2"

	if [[ "$pass" ]]; then
		nmcli device wifi connect "$ssid" password "$pass"
	else
		nmcli device wifi connect "$ssid"
	fi
}

wifi-delete() {
	nmcli connection delete $1
}

reset-usb() {
	local device="$1"

	if [[ "$device" ]]; then
		sudo mkfs.vfat -n "USB" "$device" -I
	else
		echo Please provide device to be reset
	fi
}

cover () {
    local t=$(mktemp -t cover)
    go test $COVERFLAGS -coverprofile=$t $@ \
        && go tool cover -func=$t \
        && unlink $t
}

push () {
    local src="$1"
    local dest="$2"
    shift 2

    echo "📁 Transferring PUSH - $src  $dest"
    rsync -avh "$@" "$src" "$dest"
}
