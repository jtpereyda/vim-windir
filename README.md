# Vim Windir Syntax

Syntax file for Windows directory listing. Example Windows command:

```
dir /s /a C:\ > c.windir
```

## Installation

Copy `windir.vim` into `~/.vim/syntax/` and optionally add the following to `~/.vimrc`:

```
au BufNewFile,BufReadPost *.windir  set filetype=windir
```
