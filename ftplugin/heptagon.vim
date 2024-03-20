" Vim filetype plugin file
" Heptagon
" https://gitlab.inria.fr/synchrone/heptagon

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif

let b:did_ftplugin = 1

setlocal comments=b:--,sr:(*\ ,mb:\ ,ex:*)
setlocal commentstring=--%s

let b:undo_ftplugin = "setlocal comments< commentstring<"
