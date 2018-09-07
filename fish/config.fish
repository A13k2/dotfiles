if not set -q TMUX
	set -x SVN_EDITOR vim
	set -x EDITOR vim
	set -x PATH /home/alex/anaconda3/bin $PATH
	set -x PYTHONPATH /home/alex/nest/nest2.16/lib/python3.6/site-packages/ $PYTHONPATH
end
