import git:install/time.sh

_activity_decade_path() {
	local date_path=$(date +%Y/%m.%B/%d/%H.%M.%S)
	local decade=$(_time_decade)

	printf '%s/%s\n' "$decade" "$date_path"
}
