"Use Vim settings, rather then Vi settings.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"show line numbers
set number

"show the ruler
set ruler

"default indent settings
set shiftwidth=2
set expandtab
set autoindent

"turn on syntax highlighting
if has("syntax")
  syntax on
endif

"enable the mouse
if has("mouse")
  set mouse=a
endif
