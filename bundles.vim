" Initialisation {
    set nocompatible
    filetype off
    set runtimepath+=~/.vim/bundle/vundle
    call vundle#rc()
" }
" Bundles {
    Bundle 'airblade/vim-gitgutter'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'bling/vim-airline'
    Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
    Bundle 'davidhalter/jedi-vim'
    Bundle 'ehamberg/vim-cute-python'
    Bundle 'ervandew/supertab'
    Bundle 'gmarik/vundle'
    Bundle 'godlygeek/tabular'
    Bundle 'kien/ctrlp.vim'
    Bundle 'nanotech/jellybeans.vim'
    Bundle 'nelstrom/vim-visual-star-search'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'sjl/gundo.vim'
    Bundle 'sjl/vitality.vim'
    Bundle 'tpope/vim-abolish'
    Bundle 'tpope/vim-dispatch'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'
    Bundle 'vim-scripts/matchit.zip'
    Bundle 'vim-scripts/YankRing.vim'
    Bundle 'w0ng/vim-hybrid'
" }
" Bundle configurations {
    filetype plugin indent on
    let mapleader=","
    " Airline {
        augroup WhiteSpaceWarning
            autocmd!
            autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning
            autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning
        augroup END
        function! StatuslineTabWarning()
            if !exists("b:statusline_tab_warning")
                let tabs = search('^\t', 'nw') != 0
                let spaces = search('^ ', 'nw') != 0

                if tabs && spaces
                    let b:statusline_tab_warning =  'mixed-indenting'
                elseif (spaces && !&et) || (tabs && &et)
                    let b:statusline_tab_warning = '&et'
                else
                    let b:statusline_tab_warning = ''
                endif
            endif
            return b:statusline_tab_warning
        endfunction
        function! StatuslineTrailingSpaceWarning()
            if !exists("b:statusline_trailing_space_warning")
                if search('\s\+$', 'nw') != 0
                    let b:statusline_trailing_space_warning = '\s'
                else
                    let b:statusline_trailing_space_warning = ''
                endif
            endif
            return b:statusline_trailing_space_warning
        endfunction
        function! StatuslineWhiteSpaceWarning()
            let tabs = StatuslineTabWarning()
            let spaces = StatuslineTrailingSpaceWarning()
            if !empty(tabs) && !empty(spaces)
                let sep = ','
            else
                let sep = ''
            endif
            return tabs . sep . spaces
        endfunction
        let g:airline_left_sep=''
        let g:airline_right_sep=''
        let g:airline_theme='light'
        let g:airline_section_y='%{StatuslineWhiteSpaceWarning()}'
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
