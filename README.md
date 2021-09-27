# Vim Windir Syntax

_Better skimming for Windows directory listings_

![Windir Example Screenshot](images/windir-example.png)


Vim colorization for for Windows directory listing, from Windows commands such as:

```
dir /s /a C:\ > c.windir
```

## Installation

Copy `windir.vim` into `~/.vim/syntax/` and optionally add the following to `~/.vimrc`:

```
au BufNewFile,BufReadPost *.windir  set filetype=windir
```

## Reference

For help editing or creating your own syntax file, see: https://vim.fandom.com/wiki/Creating_your_own_syntax_files
