let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:OmniSharp_server_path = 'C:\OmniSharp\omnisharp.win-x64\OmniSharp.exe'
let g:OmniSharp_translate_cygwin_wsl = 1

call plug#begin('~/.vim/bundle')
Plug 'OmniSharp/omnisharp-vim'
Plug 'preservim/nerdtree'
call plug#end()

autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set mouse=a
colorscheme slate
