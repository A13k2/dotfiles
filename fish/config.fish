set -g theme_color_scheme zenburn
set -g theme_powerline_fonts no
fish_vi_key_bindings
if not set -q TMUX
	set -x SVN_EDITOR vim
	set -x EDITOR vim
	set -x PATH /home/alex/anaconda3/bin $PATH
	set -x PYTHONPATH /home/alex/nest_install/lib64/python3.7/site-packages/ $PYTHONPATH
	set -gx PATH ~/.gem/ruby/2.5.0/bin $PATH
	set -x PATH ~/programs/Discord $PATH
end
