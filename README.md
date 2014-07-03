Ubuntu installation helpers
===========================

Simple scripts to make installation a bit easier of some applications

### Dependencies:

- [jq](http://stedolan.github.io/jq/) (jq is like sed for JSON data) - command line tool from built-in repository

Before use this scripts make:

    sudo apt-get install -y jq
    
Parser example:

    cat ./config/apps.json | jq ".[] | .app"
    
### Installers

#### Android SDK

For 64-bit system (Ubuntu 13.10 and above):

    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get install libncurses5:i386 libstdc++6:i386 zlib1g:i386

    sudo apt-get install libgl1-mesa-dev:i386
    

Export Android SDK patch in ~/.bashrc

    export PATH=/opt/android-sdk-linux/tools/:/opt/android-sdk-linux/platform-tools/:$PATH
