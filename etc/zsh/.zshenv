export PATH="${XDG_BIN_HOME}:${PATH}"

# set XDG directories environment variables
_LOCAL="${HOME}"/.local

export XDG_CONFIG_HOME="${_LOCAL}"/etc
export XDG_CACHE_HOME="${_LOCAL}"/var/cache
export XDG_DATA_HOME="${_LOCAL}"/share
export XDG_STATE_HOME="${_LOCAL}"/var/lib
export XDG_BIN_HOME="${_LOCAL}"/bin
export XDG_LIB_HOME="${_LOCAL}"/lib

unset _LOCAL

# import every profile from profile.d
for PROFILE in "${ZDOTDIR}"/profile.d/*; do
    if [ -r "${PROFILE}" ]; then
        . "${PROFILE}"
    fi
done
unset PROFILE

# load all plugins
for PLUGINDIR in "${XDG_DATA_HOME}"/zsh/*; do
    for PLUGIN in "${PLUGINDIR}"/*.zsh; do
        if [ -r "${PLUGIN}" ]; then
            . "${PLUGIN}"
        fi
    done
    unset PLUGIN
done
unset PLUGINDIR