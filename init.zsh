() {
  # builtin emulate -L zsh
  local -r target="granted"
  local -r compdir="${HOME}/.granted/zsh_autocomplete"

  (( ${+commands[${target}]} )) || return 1

  local -r compfile=$compdir/${target}/_${target}
  if [[ ! -e $compfile || $compfile -ot ${target} ]]; then
    "${target}" completion -s zsh
    print -u2 -PR "* Detected a new version '${target}'. Regenerated completions."
  fi
} ${0:h}
