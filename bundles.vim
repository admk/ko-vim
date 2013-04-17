" Initialisation {
    set nocompatible
    filetype off
    set runtimepath+=~/.vim/bundle/vundle
    call vundle#rc()
    " Bundles {
        Bundle 'airblade/vim-gitgutter'
        Bundle 'altercation/vim-colors-solarized'
        Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
        Bundle 'davidhalter/jedi-vim'
        Bundle 'ehamberg/vim-cute-python'
        Bundle 'ervandew/supertab'
        Bundle 'gmarik/vundle'
        Bundle 'godlygeek/tabular'
        Bundle 'kien/ctrlp.vim'
        Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
        Bundle 'scrooloose/nerdcommenter'
        Bundle 'scrooloose/nerdtree'
        Bundle 'scrooloose/syntastic'
        Bundle 'sjl/gundo.vim'
        Bundle 'terryma/vim-multiple-cursors'
        Bundle 'tpope/vim-fugitive'
        Bundle 'tpope/vim-surround'
        Bundle 'tpope/vim-unimpaired'
        Bundle 'vim-scripts/YankRing.vim'
    " }
    filetype plugin indent on
" }
" Bundle configurations {
    let mapleader=","
    " CtrlP {
        nnoremap <leader>cp :CtrlP<cr>
        nnoremap <leader>mr :CtrlPMRUFiles<cr>
    " }
    " yankring {
        nnoremap <leader>yy :YRShow<CR>
        let g:yankring_history_file = '.yankring_history'
    " }
    " vim-latex - many latex shortcuts and snippets {
        let g:tex_flavor='latex'
        let g:Tex_CompileRule_pdf='xelatex -shell-escape'
        let g:Tex_Menus=0
        let Tex_UseMakefile=0
    "}
    " NERDTree {
        nnoremap <leader>nt :NERDTreeToggle<cr>
        let NERDTreeIgnore=['\.py[co]$', '\~$', '__pycache__']
    " }
    " Command-T {
        let g:CommandTMaxHeight = 15
    " }
    " SuperTab {
        let g:SuperTabDefaultCompletionType = "context"
        let g:SuperTabLongestEnhanced = 1
        let g:SuperTabLongestHighlight = 1
    " }
    " NerdCommenter {
        let NERDSpaceDelims = 1
        let NERDRemoveExtraSpaces = 1
    " }
    " Syntastic {
        let g:syntastic_error_symbol='X'
        let g:syntastic_warning_symbol='!'
        let g:syntastic_enable_highlighting=1
        let g:syntastic_python_checkers = ['flake8']
    " }
    " Gundo {
        nnoremap <leader>gt :GundoToggle<CR>
    " }
    " Tabularize {
        nnoremap <leader>= :Tabularize /=<CR>
    " }
    " Jedi {
        let g:jedi#popup_on_dot = 0
    " }
" }
" vim: set fdm=marker fmr={,}:
