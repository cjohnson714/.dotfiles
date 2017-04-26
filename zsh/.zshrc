export XDG_CONFIG_HOME=/home/integrus/.config

alias ls='ls --color=auto'

PATH="/home/integrus/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/integrus/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/integrus/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/integrus/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/integrus/perl5"; export PERL_MM_OPT;
