" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

"set guifont=Andale\ Mono:16            " Font family and font size.
"set antialias                     " MacVim: smooth fonts.
"set encoding=utf-8                " Use UTF-8 everywhere.
"set guioptions-=T                 " Hide toolbar.
"set background=light              " Background.
"set lines=25 columns=100          " Window dimensions.

" Uncomment to use.
"set guioptions-=r                 " Don't show right scrollbar
"set guioptions-=L                 " Don't show the left scrollbar

" set CMD-T to peepopen
if has("gui_macvim")
macmenu &File.New\ Tab key=<nop>
map <D-t> <Plug>PeepOpen
end


