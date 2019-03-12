set -g theme_color_scheme zenburn
set -g theme_powerline_fonts no
fish_vi_key_bindings
if not set -q TMUX
	set -x SVN_EDITOR vim
	set -x EDITOR vim
	set -x PATH /home/alex/anaconda3/bin $PATH
	set -x PYTHONPATH /home/alex/nest_install/lib64/python3.7/site-packages/ $PYTHONPATH
	set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk
	set -gx PATH $JAVA_HOME/bin:~/.gem/ruby/2.5.0/bin $PATH
end
