# bash completion for gamerx-theme
_gamerx_theme() {
  local cur prev cmds keys
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  cmds="show get set list apply reset"
  keys="palette density animation launcher bar notification icon_theme wallpaper"

  if [[ $COMP_CWORD -eq 1 ]]; then
    COMPREPLY=( $(compgen -W "${cmds}" -- "${cur}") )
    return
  fi
  case "${COMP_WORDS[1]}" in
    get|set)
      if [[ $COMP_CWORD -eq 2 ]]; then
        COMPREPLY=( $(compgen -W "${keys}" -- "${cur}") )
      elif [[ $COMP_CWORD -eq 3 && "${COMP_WORDS[1]}" == "set" ]]; then
        case "${prev}" in
          density)      COMPREPLY=( $(compgen -W "compact comfortable spacious" -- "${cur}") );;
          animation)    COMPREPLY=( $(compgen -W "snappy smooth cinematic" -- "${cur}") );;
          launcher)     COMPREPLY=( $(compgen -W "list grid compact mac" -- "${cur}") );;
          bar)          COMPREPLY=( $(compgen -W "default minimal tight floating" -- "${cur}") );;
          notification) COMPREPLY=( $(compgen -W "default floating minimal" -- "${cur}") );;
        esac
      fi
      ;;
    list)
      if [[ $COMP_CWORD -eq 2 ]]; then
        COMPREPLY=( $(compgen -W "palettes densities animations launchers bars notifications" -- "${cur}") )
      fi
      ;;
  esac
}
complete -F _gamerx_theme gamerx-theme
