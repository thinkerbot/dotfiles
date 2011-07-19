e Vim settings, rather then Vi settings.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"show line numbers
set number

"default indent settings
set shiftwidth=2
set softtabstop=
set expandtab
set autoindent

"turn on syntax highlighting
if has("syntax")
  syntax on
endif

"enable the mouse
set mouse=a
