"path setting
let mapleader = ' '
set path=$PWD/**
set mouse=a

let g:used_javascript_libs = 'vue,underscore'

set textwidth=0
set wrapmargin=0

set ignorecase
set smartcase

set suffixesadd=.py
set wildignore=*.pyc
let g:netrw_list_hide= '.*\.pyc$'


"vim-rooter setting
" let g:rooter_silent_chdir = 1


" fzf settings
set rtp+=~/.fzf
nnoremap <Leader>f :FZF<CR>

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" nnoremap <Leader>cd :lcd %:p:h<CR>

set tags+=~/tags/django.tags

nmap \o :set paste!<CR>

nnoremap gh <S-h>
nnoremap gl <S-l>
" inoremap <C-e> <C-o>A

nnoremap db dvb
nnoremap cb cvb
" ab ct {% csrf_token %}
" ab fp {{ form.as_p}}
" ab mm models.Model
" ab kwa *args, **kwargs
" ab ex {% extends 'base.html' %}
" ab wtags {% load wagtailcore_tags %}
ab F False
ab T True
" ab str __str__(self):
" ab ini __int__(self):
" ab mod models.Model
ab re return
ab bulma <link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css" rel="stylesheet">

ab YU <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

ab nor <link href="https://yarnpkg.com/en/package/normalize.css" rel="stylesheet">
" nnoremap - <C-y>
" nnoremap k <C-y>
" nnoremap = <C-e>
" nnoremap j <C-e>

nnoremap } /^\S<CR>
nnoremap { ?^\S<CR>

nnoremap \x :cclose<CR>

nnoremap <Leader>x daw


"Ag settings
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackhighlight = 1
nnoremap <Leader>k :Ack!<Space>

" vnoremap <Leader>m :Autoformat<CR>


" matchit.vim settings
set nocompatible
filetype plugin indent on
runtime macros/matchit.vim

nnoremap <Leader>! :!

let g:vim_json_syntax_conceal = 0

nnoremap n nzz
nnoremap N Nzz
nnoremap <C-i> <C-i>zz
nnoremap <C-o> <C-o>zz
" nnoremap [[ [[<bar>zz
" nnoremap ]] ]]<bar>zz
" nnoremap (( ((<bar>zz
" nnoremap )) ))<bar>zz
" nnoremap {{ {{<bar>zz
" nnoremap }} }}<bar>zz

" nnoremap j gj
" nnoremap k gk

nnoremap \h :nohlsearch<CR>

""fold settings
"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END

"Make views automatic
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

nnoremap ' `

set backspace=indent,eol,start

" nnoremap [[ [[<bar>zt
" nnoremap ]] ]]<bar>zt
" nnoremap o zz<bar>o
" set scrolloff=5


set wrap
set linebreak
set nolist  " list disables linebreak

"hilight the cursor line and cursor column
set cursorcolumn
set cursorline

set clipboard=unnamed
set noswapfile

set splitright
set splitbelow

"autosave
" :au FocusLost * silent! wa "when focus lost
" :set autowriteall "saved on buffer switch
noremap <C-c> <ESC>:w<CR>
inoremap <C-c> <ESC>:w<CR>


let python_highlight_all = 1

" sparkup setting
 let g:sparkupExecuteMapping = '<C-z>'

" emmet setting
let g:user_emmet_install_global = 1
" autocmd FileType html,css,js,vue EmmetInstall
let g:user_emmet_leader_key='<C-i>'
let g:user_emmet_mode='i'



let b:match_words = '<tag>:</tag>'
" let b:match_words = '<:>,<tag>:</tag>'

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsUsePythonVersion = 3
" let g:UltiSnipsSnippetDirectories=$HOME.'/.vim/UltiSnips'
" let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']


"rainbow_levels
map <leader>l :RainbowLevelsToggle<cr>


"rainbow parentheses improved
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'yellow', 'cyan', 'magenta', 'green', 'red'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}


let g:ale_linters = {'python': ['pylint', 'flake8', 'mypy','prospector', 'pycodestyle', 'pyflakes', 'pyls'], 'html': ['tidy', 'htmlhint'], 'javascript': ['standard', 'eslint'], 'vue': ['standard', 'eslint'],}
let g:ale_fixers = {'python': ['add_blank_lines_for_python_control_statements', 'autopep8', 'isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace'], 'html': ['remove_trailing_lines', 'trim_whitespace', 'prettier'], 'javascript': ['prettier_standard', 'standard', 'eslint'], 'css': ['prettier'], 'vue': ['standard', 'eslint'],}
let g:ale_linter_aliases = {'html': ['html', 'javascript', 'css']}
let g:ale_fixers['*'] = ['remove_trailing_lines', 'trim_whitespace']
let g:ale_fix_on_save = 1
" let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_linters_explicit = 1
let g:ale_set_highlights = 0
" let g:ale_sign_error = "◉"
" let g:ale_sign_warning = "◉"
" highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
" highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

highlight clear ALEErrorSign
highlight clear ALEWarningSign

nmap <silent> <leader>jj :ALENext<cr>
nmap <silent> <leader>kk :ALEPrevious<cr>



autocmd FileType python map <buffer> \\ :call Flake8()<CR>



nnoremap \n :set number! relativenumber!<CR>
set number relativenumber
" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END

syntax on " highlight
set t_Co=256

" let g:gruvbox_italic = 1
" colorscheme gruvbox
" set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

execute pathogen#infect()
call pathogen#helptags()


"vim-airline settings
let g:airline_section_c = '%{strftime("%H:%M")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='one'
let g:airline_powerline_fonts = 1

colorscheme one
set background=dark

" colorscheme onedark


"Tmuxline settings
let g:tmuxline_preset = {
       \'a'    : '#S',
       \'win'  : '#I #W',
       \'cwin' : '#I #W',
       \'y'    : '%R'}
let g:tmuxline_theme = 'zenburn'

" Indentation without hard tabs
set autoindent
set expandtab

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    " \ set textwidth=79 |
    " \ set expandtab |
    " \ set autoindent |
    \ set fileformat=unix
autocmd Filetype css setlocal ts=2 sw=2 expandtab
au BufNewFile,BufRead *.js,*.html,*.vue
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
set encoding=utf-8

set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags


" any buffer can be hidden (keeping its changes) without first writing the buffer to a file
set hidden

set showmatch
set wildmenu
set wildmode=longest,list,full
set hlsearch
set incsearch
set laststatus=2
set statusline+=%f

" Enable folding
" set foldmethod=indent
" set foldlevel=99
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
set foldmethod=syntax
" set foldcolumn=1
" let javaScript_fold=1
" set foldlevelstart=99




noremap <Leader>, :cd ..<CR>


inoremap <C-[> <Esc>A:<CR>
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:pymode_python = 'python3'
let g:pymode_rope = 0

" noremap <leader>, :vertical resize +5<CR>
" noremap <leader>. :vertical resize -5<CR>

" Switch between the last two files
nnoremap <Leader><leader> <C-^>
nnoremap <Tab> :bnext<CR>

"Buffer switch settings
nmap <S-h> :bp<cr>
nmap <S-l> :bn<cr>

nnoremap <Leader>b :b


"Buffer switch using numbers
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"The following lets you type Ngb to jump to buffer number N (a number from 1 to 99). For example, typing 12gb would jump to buffer 12.
let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
    let c += 1
    endwhile


noremap <leader>q ZQ
noremap <leader>d :bd<cr>
noremap <Leader>e :edit<Space>
" noremap <Leader>f :find<Space>

" " vimux mapping
" " Prompt for a command to run
" map <Leader>vp :VimuxPromptCommand<CR>
" " Run last command executed by VimuxRunCommand
" map <Leader>vl :VimuxRunLastCommand<CR>

" nnoremap <silent> vv <C-w>v

noremap <Leader>y "*y
noremap <Leader>' "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p

" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" increase the window size by a factor of 1.5 and decrease the window size by 0.67
" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


noremap <CR> o<Esc>
nnoremap tc :tabc<CR>
" nnoremap <leader>p :bp<CR>
" nnoremap <leader>n :bn<CR>
" nnoremap <leader>b :ls<CR>:b<Space>

nnoremap <leader>rv :source $MYVIMRC<CR>
noremap <leader>av :e $MYVIMRC<CR>

" inoremap <C-[> <Esc><Esc>
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"vutocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"
"vim-tmux-navigator mappiing
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>



"Enhanced increment/decrement(Ctrl-A Ctrl-X)
" function! AddSubtract(char, back)
"   let pattern = &nrformats =~ 'alpha' ? '[[:alpha:][:digit:]]' : '[[:digit:]]'
"   call search(pattern, 'cw' . a:back)
"   execute 'normal! ' . v:count1 . a:char
"   silent! call repeat#set(":\<C-u>call AddSubtract('" .a:char. "', '" .a:back. "')\<CR>")
" endfunction
" nnoremap <silent>         <C-a> :<C-u>call AddSubtract("\<C-a>", '')<CR>
" nnoremap <silent> <Leader><C-a> :<C-u>call AddSubtract("\<C-a>", 'b')<CR>
" nnoremap <silent>         <C-x> :<C-u>call AddSubtract("\<C-x>", '')<CR>
" nnoremap <silent> <Leader><C-x> :<C-u>call AddSubtract("\<C-x>", 'b')<CR>
" 'javascript': ['prettier', 'eslint'],



"Vim-plug section

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/bundle')
Plug 'gko/vim-coloresque'
Plug 'junegunn/goyo.vim'
Plug 'pangloss/vim-javascript'
Plug 'rakr/vim-one'
call plug#end()
