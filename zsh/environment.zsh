

# Tmux stuff
export TERM=screen-256color
[[ $TMUX = "" ]] && export TERM="xterm-256color"


############# KDE SETUP ##################
# path alterations
# kdesrc
export PATH=~/bin/:$PATH
export PATH=/usr/lib/llvm-3.8/bin:$PATH

## Local variables
export KF5=~/kde/usr
export QTDIR=/opt/Qt
export CMAKE_PREFIX_PATH=$KF5:$CMAKE_PREFIX_PATH  
export XDG_DATA_DIRS=$KF5/share:$XDG_DATA_DIRS:/usr/share  
export XDG_CONFIG_DIRS=$KF5/etc/xdg:$XDG_CONFIG_DIRS:/etc/xdg  
export PATH=$KF5/bin:$QTDIR/bin:$PATH  
export QT_PLUGIN_PATH=$KF5/lib/plugins:$KF5/lib64/plugins:$KF5/lib/x86_64-linux-gnu/plugins:$QTDIR/plugins:$QT_PLUGIN_PATH  
# (lib64 instead of lib on some systems, like OpenSUSE)
export QML2_IMPORT_PATH=$KF5/lib/qml:$KF5/lib64/qml:$KF5/lib/x86_64-linux-gnu/qml:$QTDIR/qml  
export QML_IMPORT_PATH=$QML2_IMPORT_PATH  
export KDE_SESSION_VERSION=5  
export KDE_FULL_SESSION=true
export SASL_PATH=/usr/lib/sasl2:$KF5/lib/sasl2
# (lib64 instead of lib on some systems, like OpenSUSE)
# PS1="(kdesrc) $PS1"

