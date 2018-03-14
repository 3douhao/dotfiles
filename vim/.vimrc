"path setting
set path=$PWD/**
set mouse=a

set textwidth=0
set wrapmargin=0

set ignorecase
set smartcase

set suffixesadd=.py
set wildignore=*.pyc
let g:netrw_list_hide= '.*\.pyc$'

" fzf settings
set rtp+=~/.fzf
nnoremap <Leader>z :FZF<CR>

nnoremap <Leader>cd :lcd %:p:h<CR>

set tags+=~/tags/django.tags

nmap \o :set paste!<CR>


"Ag settings
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackhighlight = 1
nnoremap <Leader>k :Ack!<Space>

  " vnoremap <Leader>m :Autoformat<CR>


  " matchit.vim settings
  set nocompatible
  filetype plugin indent on
  runtime macros/matchit.vim


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



  nnoremap <Leader>h :nohlsearch<CR>

  ""fold settings
  "augroup vimrc
  "  au BufReadPre * setlocal foldmethod=indent
  "  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
  "augroup END

  "Make views automatic
  autocmd BufWinLeave *.* mkview 
  autocmd BufWinEnter *.* silent loadview

  nnoremap ' `

  set backspace=indent,eol,start

  " nnoremap [[ [[<bar>zt
  " nnoremap ]] ]]<bar>zt
  nnoremap o zz<bar>o
  " set scrolloff=5


  :set wrap
  :set linebreak
  :set nolist  " list disables linebreak

  "hilight the cursor line
  :set cursorline

  set clipboard=unnamed
  let mapleader = ' '
  set noswapfile
  set splitright
  set splitbelow

  "autosave
  " :au FocusLost * silent! wa "when focus lost
  " :set autowriteall "saved on buffer switch
  noremap <C-c> <ESC>:w<CR>
  inoremap <C-c> <ESC>:w<CR>


inoremap <C-y> <C-y><C-e>


  " map <C-z> <Nop>

  let g:sparkupExecuteMapping = '<C-z>'


  let b:match_words = '<:>,<tag>:</tag>'

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

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


let g:ale_fixers = {'python': ['add_blank_lines_for_python_control_statements', 'autopep8', 'isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace'],}
let g:ale_fix_on_save = 1
let g:ale_linters = {'python': ['pylint', 'flake8', 'mypy','prospector', 'pycodestyle', 'pyflakes', 'pyls'],}

nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>




autocmd FileType python map <buffer> \\ :call Flake8()<CR>



  nnoremap \n :set relativenumber!<CR>
  set number relativenumber
  " :augroup numbertoggle
  " :  autocmd!
  " :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  " :augroup END

  syntax on " highlight
  set t_Co=256
  colorscheme evening
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
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline_theme='simple'

  "Tmuxline settings
  let g:tmuxline_preset = {
        \'a'    : '#S',
        \'win'  : ['#I', '#W'],
        \'cwin' : ['#I', '#W'],
        \'y'    : ['%R']}


  let python_highlight_all = 1


  " Indentation without hard tabs
  set autoindent
  set expandtab
  set shiftwidth=2
  set softtabstop=2


  au BufNewFile,BufRead *.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4 |
      " \ set textwidth=79 |
      \ set expandtab |
      \ set autoindent |
      \ set fileformat=unix

  au BufNewFile,BufRead *.js,*.html,*.css
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
  set wildmode=full
  set hlsearch
  set incsearch
  set laststatus=2
  set statusline+=%f

  " " Enable folding 
  set foldmethod=indent 
  set foldlevel=99


  inoremap <C-j> <Esc>A:<CR>
  " inoremap <C-u> <C-o>c0<C-d>

  noremap <leader>, :vertical resize +5<CR>
  noremap <leader>. :vertical resize -5<CR>

  " Switch between the last two files
  nnoremap <Leader>o <C-^>
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
  noremap <Leader>f :find<Space>

" " vimux mapping
" " Prompt for a command to run
" map <Leader>vp :VimuxPromptCommand<CR>
" " Run last command executed by VimuxRunCommand
" map <Leader>vl :VimuxRunLastCommand<CR>

" nnoremap <silent> vv <C-w>v

noremap <Leader>y "*y
noremap <Leader>' "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

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
