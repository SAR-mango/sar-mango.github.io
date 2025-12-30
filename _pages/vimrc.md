---
layout: post
title: My .vimrc File
date: 2025-10-29
---
This is my `.vimrc` file. It's fairly simple, but has proven its utility over the past several years. It enables line numbers, auto-indent, and syntax highlighting. It also replaces indents with four spaces.
```
syntax on
set tabstop=4 softtabstop=-1 shiftwidth=0 expandtab number autoindent
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
```
This page exists mostly for my own convenience; it's invaluable when setting up a new machine.
