#compdef gamerx-theme
# zsh completion for gamerx-theme

_gamerx_theme_keys() {
  local -a keys
  keys=(palette density animation launcher bar notification icon_theme wallpaper)
  _describe 'key' keys
}

_gamerx_theme() {
  local -a subcmds
  subcmds=(
    'show:print current state'
    'get:print one value'
    'set:change one value (and apply)'
    'list:list available values for a kind'
    'apply:re-render every config'
    'reset:reset to factory defaults'
  )
  if (( CURRENT == 2 )); then
    _describe 'subcommand' subcmds
    return
  fi
  case "${words[2]}" in
    get|set)
      if (( CURRENT == 3 )); then
        _gamerx_theme_keys
      elif (( CURRENT == 4 )) && [[ "${words[2]}" == set ]]; then
        case "${words[3]}" in
          density)      _values 'density' compact comfortable spacious ;;
          animation)    _values 'animation' snappy smooth cinematic ;;
          launcher)     _values 'launcher' list grid compact mac ;;
          bar)          _values 'bar' default minimal tight floating ;;
          notification) _values 'notification' default floating minimal ;;
        esac
      fi
      ;;
    list)
      if (( CURRENT == 3 )); then
        _values 'kind' palettes densities animations launchers bars notifications
      fi
      ;;
  esac
}
_gamerx_theme "$@"
