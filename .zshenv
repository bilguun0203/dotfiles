if [[ $(uname) == "Darwin" ]]; then
    # Android SDK
    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
    # export PATH=$PATH:$ANDROID_HOME/tools
    # export PATH=$PATH:$ANDROID_HOME/tools/bin
    # Flutter
    # export FLUTTER_ROOT=$HOME/sdks/flutter
    export FLUTTER_ROOT=$HOME/fvm/default
    export PATH=$PATH:$FLUTTER_ROOT/bin
    export PATH=$PATH:$HOME/.pub-cache/bin

    export JAVA_HOME=`/usr/libexec/java_home -v 21`
    # export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
    export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"

    #alias node14='export PATH="/opt/homebrew/opt/node@14/bin:$PATH"'
    #alias node16='export PATH="/opt/homebrew/opt/node@16/bin:$PATH"'
    #export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

    export PATH=$PATH:$HOME/.yarn/bin

    #alias python=/opt/homebrew/bin/python3
    #alias pip=/opt/homebrew/bin/pip3

    #export PATH="/Users/bilguun/Library/Python/3.10/bin:$PATH"
    export PATH="$PATH:$HOME/.cargo/bin"
    export PATH="$PATH:$HOME/.local/bin"

    export LG_WEBOS_TV_SDK_HOME="$HOME/sdks/webOS_TV_SDK"
    if [ -d "$LG_WEBOS_TV_SDK_HOME/CLI/bin" ]; then
      # Setting the WEBOS_CLI_TV variable to the bin directory of CLI
      export WEBOS_CLI_TV="$LG_WEBOS_TV_SDK_HOME/CLI/bin"
      # Adding the bin directory of CLI to the PATH variable
      export PATH="$PATH:$WEBOS_CLI_TV"
    fi
    export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"
else
    # Android SDK
    export ANDROID_HOME=$HOME/sdks/android
    #export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
    # Flutter
    export PATH=$PATH:$HOME/fvm/default/bin
    export PATH=$PATH:$HOME/.pub-cache/bin
    export PATH="$HOME/go/bin:$PATH"
    export PATH="/home/bilguun/.local/bin:$PATH"
fi

