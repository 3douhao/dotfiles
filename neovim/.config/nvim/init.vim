"Vim-plug section

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/plugged')
" Plug 'joereynolds/SQHell.vim'
Plug 'tpope/vim-dadbod'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'diepm/vim-rest-console'
Plug 'airblade/vim-gitgutter'
Plug 'pgdouyon/vim-evanesco'
Plug 'ludovicchabant/vim-gutentags'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'tpope/vim-sensible'
Plug 'Yggdroot/indentLine'
" Plug 'xabikos/vscode-react'
Plug 'andymass/vim-matchup'
Plug 'jremmen/vim-ripgrep'
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'thiagoalessio/rainbow_levels.vim'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'sheerun/vim-polyglot'
Plug 'tomasiser/vim-code-dark'
Plug 'dense-analysis/ale'
call plug#end()


"COC Configuration
" Give more space for displaying messages.
set cmdheight=1
set shortmess=at


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes




" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" correct comment highlighting in json
autocmd FileType json syntax match Comment +\/\/.\+$+



"coc extensions settings

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" let g:coc_snippet_next = '<tab>'
" imap <C-j> <Tab>

" Use Tab to complete selection
" inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Disable <CR> to complete selection
inoremap <expr> <CR> pumvisible() ? "\<C-e><CR>" : "\<CR>"
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-n>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-p>'



"YCM completion settings
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1

" let g:ycm_key_list_select_completion = ['<C-n>']
" let g:ycm_key_list_previous_completion = ['<C-p>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsUsePythonVersion = 3
" let g:UltiSnipsSnippetDirectories=$HOME.'/.vim/UltiSnips'
" let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <C-n> <C-e>
nmap <C-p> <C-y>

map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>

"Move lines up and down
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" let g:coc_global_extensions = [ 'coc-json', 'coc-snippets', 'coc-tsserver' ]

" nnoremap <Leader>in :PlugInstall<CR>
" nnoremap <Leader>cl :PlugClean<CR>

"path setting
let mapleader = ' '
set path=$PWD/**
set mouse=a

" let g:used_javascript_libs = 'vue,underscore'

set textwidth=0
set wrapmargin=0

set ignorecase
set smartcase


" set suffixesadd=.py
" set wildignore=*.pyc
" let g:netrw_list_hide= '.*\.pyc$'


"vim-rooter setting
" let g:rooter_silent_chdir = 1


" fzf settings
set rtp+=~/.fzf
nnoremap <Leader>f :FZF<CR>


nnoremap <C-g> 1<C-g>

" nnoremap <C-]> <C-]>

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" nnoremap <Leader>cd :lcd %:p:h<CR>

" set tags+=~/tags/django.tags
set tags=./tags;/

nnoremap <Leader>O :set paste!<CR>
nnoremap <Leader>o o<CR>

nnoremap gh <S-h>
nnoremap gl <S-l>

nnoremap <Leader>x :cclose<CR>
" nnoremap <Leader>w daw
" nnoremap <Leader>b bdw

"Ag settings
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackhighlight = 1
nnoremap <Leader>c :Ack!<Space>
nnoremap <Leader>g :Rg -g '!{node_modules,.git,dist,tags}'<Space>


" matchit.vim settings
set nocompatible
filetype plugin indent on
" runtime macros/matchit.vim

nnoremap <Leader>! :!

let g:vim_json_syntax_conceal = 0

" nnoremap n nzz
" nnoremap N Nzz
" nnoremap <C-i> <C-i>zz
" nnoremap <C-o> <C-o>zz

nnoremap <leader>h :nohlsearch<CR>

""fold settings
" augroup vimrc
"   au BufReadPre * setlocal foldmethod=indent
"   au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup END

"-- FOLDING --
" set foldmethod=syntax "syntax highlighting items specify folds
" set foldcolumn=2 "defines 1 col at window left, to indicate folding
" let javaScript_fold=1 "activate folding by JS syntax
" set foldlevelstart=99 "start file with all folds opened

"Make views automatic
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

nnoremap ' `

set backspace=indent,eol,start


set wrap
set linebreak
set nolist  " list disables linebreak


set clipboard=unnamed
set noswapfile
set splitright
set splitbelow


" Increment or Decrement using <C-A> or <C-X>
" set nrformats+=alpha


"autosave
" :au FocusLost * silent! wa "when focus lost
" :set autowriteall "saved on buffer switch
noremap <C-c> <ESC>:w<CR>
inoremap <C-c> <ESC>


" let python_highlight_all = 1


" Emmet setting
let g:user_emmet_install_global = 1
let g:user_emmet_mode='i'
autocmd FileType html,css,js EmmetInstall
" let g:user_emmet_leader_key='<C-\>'
let g:user_emmet_next_key = '<C-n>'
imap <C-p> <C-y>N
imap <C-z> <C-y>,


let b:match_words = '<tag>:</tag>'
" let b:match_words = '<:>,<tag>:</tag>'


" rainbow_levels
map <leader>l :RainbowLevelsToggle<cr>

nmap <Leader>p 3]<space>2j
nmap <Leader>n [<space>]<space>



"rainbow parentheses improved
" let g:rainbow_active = 1
" let g:rainbow_conf = {
" 	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
" 	\	'ctermfgs': ['lightblue', 'yellow', 'cyan', 'magenta', 'green', 'red'],
" 	\	'operators': '_,_',
" 	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
" 	\	'separately': {
" 	\		'*': {},
" 	\		'tex': {
" 	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
" 	\		},
" 	\		'lisp': {
" 	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
" 	\		},
" 	\		'vim': {
" 	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
" 	\		},
" 	\		'html': {
" 	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
" 	\		},
" 	\		'css': 0,
" 	\	}
" 	\}


let g:ale_linters = {'python': ['pylint', 'flake8', 'mypy','prospector', 'pycodestyle', 'pyflakes', 'pyls'], 'html': ['tidy', 'htmlhint'], 'javascript': ['standard'], 'typescript': ['tsserver'], 'vue': ['standard']}
let g:ale_fixers = {'python': ['add_blank_lines_for_python_control_statements', 'autopep8', 'isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace'], 'html': ['remove_trailing_lines', 'trim_whitespace', 'prettier'], 'typescript': ['prettier'], 'javascript': ['prettier_standard'], 'css': ['prettier'], 'vue': ['standard'], 'xml': ['prettier'], 'sql': ['pgformatter']}
let g:ale_linter_aliases = {'html': ['html', 'javascript', 'css']}
let g:ale_fixers['*'] = ['remove_trailing_lines', 'trim_whitespace']
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_linters_explicit = 1
let g:ale_set_highlights = 0
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

" highlight clear ALEErrorSign
" highlight clear ALEWarningSign

" map <Leader>m :ALEFix<CR>

nmap <silent> <leader>jj :ALENext<cr>
nmap <silent> <leader>kk :ALEPrevious<cr>



" autocmd FileType python map <buffer> \\ :call Flake8()<CR>



nnoremap \n :set number! relativenumber!<CR>
set number relativenumber
" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END



"vim-airline settings
" let g:airline_section_c = '%{strftime("%H:%M")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline_theme= 'codedark'
let airline#extensions#coc#warning_symbol = ''
let airline#extensions#coc#error_symbol = ''
let g:airline#extensions#coc#enabled = 0


syntax on "highlight

set t_Co=256
colorscheme codedark
set background=dark
set termguicolors     " enable true colors support

" highlight cursor line
hi cursorline guibg=darkgreen guifg=white
nnoremap <Leader>m :set cursorline!<CR>
hi MatchParen ctermbg=blue guibg=darkgreen


"Tmuxline settings
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W'],
      \'y'    : ['%R']}

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
au BufNewFile,BufRead *.js,*.html,*.pug,*json,*.ejs
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


" folding
" augroup vimrc
"   au BufReadPre * setlocal foldmethod=indent
"   au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup END
set foldmethod=manual
set foldlevelstart=99


" noremap <Leader>, :cd ..<CR>


" inoremap <C-[> <Esc>A:<CR>
imap <C-j> <Down>
imap <C-k> <Up>


" noremap <leader>, :vertical resize +5<CR>
" noremap <leader>. :vertical resize -5<CR>

" Switch between the last two files
nnoremap <Leader><leader> <C-^>
nnoremap <Tab> :bnext<CR>

"Buffer switch settings
nmap <S-h> :bp<cr>
nmap <S-l> :bn<cr>

" nnoremap <Leader>b :b


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

" " vimux mapping
" " Prompt for a command to run
" map <Leader>vp :VimuxPromptCommand<CR>
" " Run last command executed by VimuxRunCommand
" map <Leader>vl :VimuxRunLastCommand<CR>

" nnoremap <silent> vv <C-w>v

" noremap <Leader>y "*y
noremap <Leader>' "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p

" Enable auto formatting of files that have "@format" or "@prettier" tag
" let g:prettier#autoformat = 1

" Allow auto formatting for files without "@format" or "@prettier" tag
" let g:prettier#autoformat_require_pragma = 0


" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" increase the window size by a factor of 1.5 and decrease the window size by 0.67
" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


" noremap <CR> o<Esc>
" nnoremap tc :tabc<CR>
" nnoremap <leader>p :bp<CR>
" nnoremap <leader>n :bn<CR>
" nnoremap <leader>b :ls<CR>:b<Space>

nnoremap <leader>rv :source ~/.config/nvim/init.vim<CR>
noremap <leader>av :e ~/.config/nvim/init.vim<CR>

" inoremap <C-[> <Esc><Esc>
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"vutocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"
"vim-tmux-navigator mappiing
" let g:tmux_navigator_no_mappings = 1
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

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
"
"

"set cursor in neovim
set guicursor=
