# Note: Commits are modified but hashes changes so use carefully
git filter-branch -f --commit-filter  '
	if [ "$GIT_COMMITTER_EMAIL" = "OLD EMAIL" ];
	then
		GIT_COMMITTER_NAME="MY NAME";
    	GIT_AUTHOR_NAME="MY NAME";
     	GIT_COMMITTER_EMAIL="MY EMAIL";
     	GIT_AUTHOR_EMAIL="MY EMAIL";
		git commit-tree -S "$@";
	else
		git commit-tree "$@";
	fi' HEAD

