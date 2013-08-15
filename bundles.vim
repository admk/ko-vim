" Initialisation {
    set nocompatible
    filetype off
    set runtimepath+=~/.vim/bundle/vundle
    call vundle#rc()
" }
" Bundles {
    Bundle 'airblade/vim-gitgutter'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'baskerville/bubblegum'
    Bundle 'bling/vim-airline'
    Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
    Bundle 'ehamberg/vim-cute-python'
    Bundle 'gmarik/vundle'
    Bundle 'godlygeek/tabular'
    Bundle 'kien/ctrlp.vim'
    Bundle 'nanotech/jellybeans.vim'
    Bundle 'nelstrom/vim-visual-star-search'
    Bundle 'Pychimp/vim-luna'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'SirVer/ultisnips'
    Bundle 'sjl/gundo.vim'
    Bundle 'sjl/vitality.vim'
    Bundle 'tpope/vim-abolish'
    Bundle 'tpope/vim-dispatch'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'vim-scripts/matchit.zip'
    Bundle 'vim-scripts/YankRing.vim'
    Bundle 'w0ng/vim-hybrid'
" }
" Finalisation {
    filetype plugin indent on
    let mapleader=","
" }
" Bundle configurations {
    " Airline {
        let g:airline_left_sep=''
        let g:airline_right_sep=''
        let g:airline_theme='bubblegum'
        let g:airline_section_y=''
        let g:airline_section_z='%3p%%:%3l'
    " }
    " CtrlP {
        nnoremap <leader>cp :CtrlP<cr>
        nnoremap <leader>mr :CtrlPMRUFiles<cr>
    " }
    " yankring {
        nnoremap <leader>yy :YRShow<CR>
        let g:yankring_history_file = '.yankring_history'
    " }
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
    " UltiSnips {
        let g:UltiSnipsExpandTrigger = '<c-h>'
        let g:UltiSnipsJumpForwardTrigger = '<c-h>'
        let g:UltiSnipsJumpBackwardTrigger = '<c-l>'
    " }
" }
" vim: set fdm=marker fmr={,}:
