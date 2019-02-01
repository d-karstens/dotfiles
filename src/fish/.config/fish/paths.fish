# brew
set PATH $PATH '/usr/local/sbin'
set PATH "/usr/local/sbin" $PATH

# yarn
set PATH $PATH "(yarn global bin)/node_modules/.bin"

# android studio
set -x ANDROID_HOME $HOME/Library/Android/sdk
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/platform-tools
