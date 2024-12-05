import git:git/project.directory.sh
conf git

_GIT_WARN=1 _get_project_directory || {
	[ $_ACTIVITY_PROJECT_DIR_ARG ] || _ACTIVITY_PROJECT_DIR_ARG=0

	if [ $# -gt $_ACTIVITY_PROJECT_DIR_ARG ]; then
		_PROJECT_PATH=$_DATA_BASE_PATH/$1
		shift
	else
		_error "Unable to determine project directory, insufficient arguments provided ($#) !> [$_ACTIVITY_PROJECT_DIR_ARG] "
	fi
}

_ACTIVITY_DIRECTORY=$_PROJECT_PATH/.activity
