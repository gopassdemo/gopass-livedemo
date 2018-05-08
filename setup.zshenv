echo "Setting up environment for livedemo"
DEMODIR=$(pwd)
DEMODIR_ESCAPED=$(echo $DEMODIR| sed -e 's/[\/&]/\\&/g')
echo "Demo Basedir is $DEMODIR"

cat gopass_config.yml | sed -e "s/DEMODIR/$DEMODIR_ESCAPED/" > gopass_config.yml.rendered
export GOPASS_CONFIG=$DEMODIR/gopass_config.yml.rendered

HISTSIZE=0
HISTSIZE=10000
export HISTFILE=$DEMODIR/zsh_history
fc -R $HISTFILE

echo "Ready, press enter"
read
clear
