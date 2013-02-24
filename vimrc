" Xitong Gao's vimrc
" Vundle {
    filetype off
    " Setup {
        set runtimepath+=~/.vim/bundle/vundle
        call vundle#rc()
        Bundle 'altercation/vim-colors-solarized'
        Bundle 'ehamberg/vim-cute-python'
        Bundle 'ervandew/supertab'
        Bundle 'gmarik/vundle'
        Bundle 'godlygeek/tabular'
        Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
        Bundle 'scrooloose/nerdcommenter'
        Bundle 'scrooloose/nerdtree'
        Bundle 'scrooloose/syntastic'
        Bundle 'sjl/gundo.vim'
        Bundle 'tpope/vim-fugitive'
        Bundle 'tpope/vim-surround'
        Bundle 'vim-scripts/mru.vim'
        Bundle 'vim-scripts/YankRing.vim'
        Bundle 'wincent/Command-T'
    " }
    filetype plugin indent on
" }
" General {
    " File {
        set noswapfile
        set hidden
        set autoread
        set encoding=utf-8
        set termencoding=utf-8
        set fileencoding=utf-8
        autocmd FileType markdown,rst,tex,latex setlocal spell
        autocmd FileType tex,latex setlocal iskeyword+=_ cole=2 nocursorline
        let g:tex_conceal = 'admg'
    " }
    " Functional {
        set nocompatible
        set modeline
        set incsearch
        set ignorecase
        set smartcase
        set history=50
        set clipboard=unnamed
        set backspace=indent,eol,start
        set laststatus=2
    " }
    " Visual {
        set hlsearch
        set number
        set showmatch
        set showcmd
        set noshowmode
        set scrolloff=3
        syntax on
    " }
    " Command line {
        set wildchar=<TAB>
        set wildmenu
        set wildmode=list:longest
        set wildignore=*.o,*.pyc,*.pyo
    " }
" }
" Editing {
    " Text flow {
        set wrap
        set linebreak
        set shiftwidth=4
        set textwidth=79
        set colorcolumn=+1
        set formatoptions=rqlmB1
        set formatprg=par\ -w79
    " }
    " Indentation {
        set autoindent
        set smartindent
        set copyindent
        set smarttab
        set expandtab
        set tabstop=4
        set softtabstop=4
        set shiftwidth=4
    " }
    " Folding {
        set foldmethod=syntax
        set foldlevel=1
        set foldnestmax=2
        map <S-f> :let &fen = !&fen<CR>
    " }
    " Other {
        set completeopt=menuone,longest,preview
    " }
" }
" User interface {
    " General {
        if has("gui_running")
            set guioptions-=r
            set guioptions-=L
            set guioptions-=T
        endif
        set cursorline
        " Mac specific
        if has("gui_macvim")
            set macmeta
        endif
    " }
    " Colorscheme {
        set guifont=Menlo\ for\ Powerline:h15
        set background=dark
        colors solarized
        let g:solarized_visibility="low"
        let g:solarized_menu=0
    " }
    " Highlight hacks {
        highlight! link SignColumn ColorColumn
        highlight! MatchParen ctermbg=NONE guibg=NONE
    " }
" }
" Shortcuts {
    " Essential {
        nnoremap ; :
        vnoremap ; :
        inoremap jk <ESC>
        nnoremap j gj
        nnoremap k gk
        nnoremap Y y$
    " }
    " General {
        noremap / q/i
        noremap ? q?i
        noremap K k
        let mapleader=","
        nnoremap <leader><space> :nohlsearch<CR>
        nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>  " strip spaces
    " }
    " Visual mode {
        nnoremap gp `[v`]
        vnoremap < <gv
        vnoremap > >gv
    " }
    " Command line {
        cnoremap <C-A> <Home>
        cnoremap <C-E> <End>
        cnoremap <C-K> <C-U>
        cnoremap cd. lcd %:p:h
    " }
    " Error window TODO replace by Tim Pope's plugin {
        map <leader>co :botright cope<CR>
        map <leader>] :cn<CR>
        map <leader>[ :cp<CR>
    " }
    " Window management {
        nnoremap <M-h> <C-w>h
        nnoremap <M-j> <C-w>j
        nnoremap <M-k> <C-w>k
        nnoremap <M-l> <C-w>l
        nnoremap <M--> <C-w>-
        nnoremap <M-=> <C-w>+
        nnoremap <M-,> <C-w><
        nnoremap <M-.> <C-w>>
    " }
    " Tab management {
        nnoremap <C-w>t :tabnew<CR>
        nnoremap <C-w>[ :tabprev<CR>
        nnoremap <C-w>] :tabnext<CR>
    " }
    " Writing Restructured Text or Markdown {
        noremap  <C-u>1 yyPVr#yyjp
        noremap  <C-u>2 yyPVr*yyjp
        noremap  <C-u>3 yypVr=
        noremap  <C-u>4 yypVr-
        noremap  <C-u>5 yypVr^
    " }
    " Other {
        nnoremap <leader>mr :MRU<cr>
        nnoremap <leader>nt :NERDTreeToggle<cr>
        nnoremap <leader>yy :YRShow<CR>
        nnoremap <leader>gt :GundoToggle<CR>
        nnoremap <leader>= :Tabularize /=<CR>
    " }
" }
" Third party bundles {
    " yankring {
        let g:yankring_history_file = '.yankring_history'
    " }
    " vim-latex - many latex shortcuts and snippets {
        let g:tex_flavor='latex'
        let g:Tex_CompileRule_pdf='xelatex -shell-escape'
        let g:Tex_Menus=0
        let Tex_UseMakefile=0
    "}
    " NERDTree {
        let NERDTreeIgnore=['\.py[co]$', '\~$']
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
        let g:syntastic_enable_signs=1
        let g:syntastic_error_symbol='X'
        let g:syntastic_warning_symbol='!'
        let g:syntastic_enable_balloons=1
        let g:syntastic_enable_highlighting=1
        let g:syntastic_echo_current_error=1
        let g:syntastic_python_checkers = ['flake8']
    " }
" }
" vim: set fdm=marker fmr={,}:
