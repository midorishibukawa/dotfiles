# import every profile from profile.d
for PROFILE in "$ZDOTDIR"/profile.d; do
    if [ -r "$PROFILE" ]; then
        . "$PROFILE"
    fi
done
unset PROFILE

# load all plugins
for PLUGINDIR in "$XDG_DATA_HOME"/zsh/*; do
    for PLUGIN in "$PLUGINDIR"/*.zsh; do
        if [ -r "$PLUGIN" ]; then
            . "$PLUGIN"
        fi
    done
    unset PLUGIN
done
unset PLUGINDIR