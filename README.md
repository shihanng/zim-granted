# zim-granted

A [Zim](https://zimfw.sh/)'s module that set up shell completion for [Granted](https://docs.commonfate.io/granted/introduction).

## Prerequisites

- [Granted](https://docs.commonfate.io/granted/getting-started)

## Usage

Add the following to your `~/.zimrc`.

> [!NOTE]
> This module uses granted CLI to generate completion file.
> The CLI creates the completion in `$HOME/.granted/zsh_autocomplete/`
> and adds `fpath` in `$HOME/.zshenv` if not exist.

```zsh
zmodule shihanng/zim-granted
```
