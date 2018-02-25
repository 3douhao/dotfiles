"path setting
set path=$PWD/**
set mouse=a

" fzf settings
set rtp+=~/.fzf
nnoremap <Leader>F :FZF<CR>

nnoremap <C-l> :nohlsearch<CR>

""fold settings
"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END

"Make views automatic
autocmd BufWinLeave *.* mkview 
autocmd BufWinEnter *.* silent loadview

nnoremap ' `
" inoremap <C-e> <C-o>A

set backspace=indent,eol,start

set textwidth=80

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

" Emmet settings
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-z>'
map <C-z> <Nop>
" let g:user_emmet_expandabbr_key='<C-z>'

let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']

nmap <leader>t :TagbarToggle<CR>
" nnoremap :tabnew<Space>

nnoremap <Leader>n :set relativenumber!<CR>
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

filetype plugin indent on

" Indentation without hard tabs
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
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
noremap <leader>, :vertical resize +5<CR>
noremap <leader>. :vertical resize -5<CR>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>
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

" vimux mapping
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

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

imap jj <Left>
imap kk <Right>

" cnoremap <A-h> <Left>
" cnoremap <A-j> <Down>
" cnoremap <A-k> <Up>
" cnoremap <A-l> <Right>

inoremap <C-[> <Esc><Esc>
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
function! AddSubtract(char, back)
  let pattern = &nrformats =~ 'alpha' ? '[[:alpha:][:digit:]]' : '[[:digit:]]'
  call search(pattern, 'cw' . a:back)
  execute 'normal! ' . v:count1 . a:char
  silent! call repeat#set(":\<C-u>call AddSubtract('" .a:char. "', '" .a:back. "')\<CR>")
endfunction
nnoremap <silent>         <C-a> :<C-u>call AddSubtract("\<C-a>", '')<CR>
nnoremap <silent> <Leader><C-a> :<C-u>call AddSubtract("\<C-a>", 'b')<CR>
nnoremap <silent>         <C-x> :<C-u>call AddSubtract("\<C-x>", '')<CR>
nnoremap <silent> <Leader><C-x> :<C-u>call AddSubtract("\<C-x>", 'b')<CR>
