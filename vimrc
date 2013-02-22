" Xitong Gao's vimrc
" Vundle {
    filetype off
    " Setup {
        set runtimepath+=~/.vim/bundle/vundle
        call vundle#rc()
        Bundle 'gmarik/vundle'
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
        autocmd FileType markdown,rst,tex setlocal spell
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
    " }
    " Visual {
        set hlsearch
        set number
        set showmatch
        set showcmd
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
        set formatoptions=rqlmB1j
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
	set cursorline
	set background=dark
	set guifont=Menlo\ for\ Powerline:h15
	if has("gui_running")
		set guioptions-=rLT
	else
	    colors default
	endif
	colors solarized
    let g:solarized_visibility="low"
    let g:solarized_menu=0
	" Mac specific
	if has("gui_macvim")
		set macmeta
	endif
" }
" Shortcuts {
    " Essential {
		nnoremap ; :
		vnoremap ; :
		inoremap jk <ESC>
		nnoremap j gj
		nnoremap k gk
    " }
    " General {
        noremap / q/i
        noremap ? q?i
		noremap K k
		noremap <C-[> <ESC>:po<CR>
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
" }
" vim: set fdm=marker fmr={,}:
