# fish completion for gamerx-theme

set -l subcommands show get set list apply reset
complete -c gamerx-theme -f

complete -c gamerx-theme -n "not __fish_seen_subcommand_from $subcommands" \
  -a "show get set list apply reset" -d "subcommand"

set -l keys palette density animation launcher bar notification icon_theme wallpaper

complete -c gamerx-theme -n "__fish_seen_subcommand_from get set" \
  -a "$keys"

complete -c gamerx-theme -n "__fish_seen_subcommand_from list" \
  -a "palettes densities animations launchers bars notifications"

# value completions for 'set'
complete -c gamerx-theme -n "__fish_seen_subcommand_from set; and __fish_seen_subcommand_from density" \
  -a "compact comfortable spacious"
complete -c gamerx-theme -n "__fish_seen_subcommand_from set; and __fish_seen_subcommand_from animation" \
  -a "snappy smooth cinematic"
complete -c gamerx-theme -n "__fish_seen_subcommand_from set; and __fish_seen_subcommand_from launcher" \
  -a "list grid compact mac"
complete -c gamerx-theme -n "__fish_seen_subcommand_from set; and __fish_seen_subcommand_from bar" \
  -a "default minimal tight floating"
complete -c gamerx-theme -n "__fish_seen_subcommand_from set; and __fish_seen_subcommand_from notification" \
  -a "default floating minimal"
complete -c gamerx-theme -n "__fish_seen_subcommand_from set; and __fish_seen_subcommand_from palette" \
  -a "(gamerx-theme list palettes 2>/dev/null | string trim | string split ' ')[1]"
