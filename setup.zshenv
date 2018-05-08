echo "Setting up environment for livedemo"
DEMO_DIR=$(pwd)

HISTSIZE=0
HISTSIZE=10000
export HISTFILE=$DEMO_DIR/zsh_history
fc -R $HISTFILE

echo "Demo Basedir is $DEMO_DIR"
echo "Ready, press enter"
read
clear
