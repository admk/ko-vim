" Xitong Gao's vimrc
" General {
    " Vundle {
        runtime bundles.vim
    " }
    " File {
        set noswapfile
        set hidden
        set autoread
        set encoding=utf-8
        set termencoding=utf-8
        set fileencoding=utf-8
        autocmd FileType markdown,rst,tex,latex setlocal spell
        autocmd FileType tex,latex setlocal iskeyword+=_ cole=2 nocursorline
        let g:tex_conceal = 'admgs'
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
        set mouse=a
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
        set textwidth=79
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
        if !exists('$SSH_CLIENT')
            set cursorline
            set colorcolumn=+1
        endif
        " Mac specific
        if has("gui_macvim")
            set macmeta
        endif
    " }
    " Colorscheme {
        set background=dark
        colorscheme Tomorrow-Night
        if has("gui_running")
            set guifont=Menlo\ for\ Powerline:h15
            let g:solarized_visibility="low"
            let g:solarized_menu=0
        else
            set t_Co=256
        endif
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
        inoremap £ #
    " }
    " General {
        noremap / q/i
        noremap ? q?i
        let mapleader=","
        nnoremap <leader><space> :nohlsearch<CR>
        nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>  " strip spaces
        nnoremap <leader>f :let &fen = !&fen<CR>
        inoremap <C-c> <Esc>[s1z=`]a
    " }
    " Visual mode {
        nnoremap gp `[v`]
        vnoremap < <gv
        vnoremap > >gv
    " }
    " Command line {
        cnoremap <C-a> <Home>
        cnoremap <C-e> <End>
        cnoremap <C-k> <C-u>
        cnoremap cd. lcd %:p:h
    " }
    " Window management {
        for l in [['h'], ['j'], ['k'], ['l'], ['w'],
                \ ['-'], ['=', '+'], [',', '<'], ['.', '>']]
            if len(l) == 1
                let s:l = l + l
            else
                let s:l = l
            endif
            let s:wincmd = ' :wincmd ' . s:l[1] . '<CR>'
            execute 'nnoremap <M-' . s:l[0] . '>' . s:wincmd
            execute 'nnoremap <Esc>' . s:l[0] . s:wincmd
        endfor
    " }
    " Tab management {
        nnoremap <C-w>t :tabnew<CR>
        nnoremap <C-w>[ :tabprev<CR>
        nnoremap <C-w>] :tabnext<CR>
    " }
    " Writing Restructured Text or Markdown {
        noremap <C-u>1 yyPVr#yyjp
        noremap <C-u>2 yyPVr*yyjp
        noremap <C-u>3 yypVr=
        noremap <C-u>4 yypVr-
        noremap <C-u>5 yypVr^
    " }
" }
" Hacks {
    " Cursor shape {
        if system("uname") ==# "Linux\n"
            augroup GnomeCursorShape
                autocmd InsertEnter * silent execute
                    \ "!gconftool-2 --type string --set "
                    \ "/apps/gnome-terminal/profiles/Default/cursor_shape"
                    \ "ibeam"
                autocmd InsertLeave * silent execute
                    \ "!gconftool-2 --type string --set "
                    \ "/apps/gnome-terminal/profiles/Default/cursor_shape"
                    \ "block"
                autocmd VimEnter * silent execute
                    \ "!gconftool-2 --type string --set "
                    \ "/apps/gnome-terminal/profiles/Default/cursor_shape"
                    \ "block"
                autocmd VimLeave * silent execute
                    \ "!gconftool-2 --type string --set "
                    \ "/apps/gnome-terminal/profiles/Default/cursor_shape"
                    \ "ibeam"
            augroup END
        endif
    " }
    " Highlight {
        highlight! link SignColumn ColorColumn
        highlight MatchParen ctermbg=NONE guibg=NONE
        highlight Conceal ctermbg=NONE guibg=NONE
    " }
" }
" vim: set fdm=marker fmr={,}:
