let mapleader = ","
set scrolloff=99
set termguicolors
set clipboard+=unnamedplus
set pastetoggle=<f6>
set nopaste
set noshowmode
set noswapfile
filetype on
set number
set relativenumber
set numberwidth=1
set tabstop=4 shiftwidth=4 expandtab
set conceallevel=0
set virtualedit=
set wildmenu
set laststatus=2
set wrap linebreak nolist
set wildmode=full
set autoread
vmap < <gv
vmap > >gv
nnoremap <leader>d "_d
nnoremap <leader>w :w<cr>
set clipboard+=unnamedplus
if !exists('g:vscode')
"" Setup dein  ---------------------------------------------------------------{{{
  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
      call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
      call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif
  set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
  call dein#begin(expand('~/.config/nvim'))
  call dein#add('Shougo/dein.vim')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call dein#add('mcchrish/nnn.vim') "nnn file manager
  call dein#add('haya14busa/dein-command.vim')
  call dein#add('lervag/vimtex')
  call dein#add('vim-airline/vim-airline')
  call dein#add('tyrannicaltoucan/vim-quantum')
  call dein#add('Shougo/denite.nvim')
  call dein#add('vim-scripts/SyntaxRange')
  call dein#add('Shougo/unite.vim')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tomasiser/vim-code-dark')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('ianding1/leetcode.vim')
  call dein#add('dart-lang/dart-vim-plugin')
  call dein#add('itchyny/calendar.vim')
  call dein#add('vim-scripts/VimIM')

  if dein#check_install()
      call dein#install()
      let pluginsExist=1
  endif

  call dein#end()
  filetype plugin indent on

" }}}
" System Settings  ----------------------------------------------------------{{{
" Neovim Settings
    if exists('+termguicolors')
        let &t_8f = "\[38;2;%lu;%lu;%lum"
        let &t_8b = "\[48;2;%lu;%lu;%lum"
        set termguicolors
    endif
    set undofile
    set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
 autocmd BufReadPost *
               \ if line("'\"") > 0 && line ("'\"") <= line("$") |
               \   exe "normal! g'\"" |
               \ endif
               " center buffer around cursor when opening files
    autocmd BufRead * normal zz
    set updatetime=500
    set complete=.,w,b,u,t,k
    autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
    autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
    set formatoptions+=t
    set inccommand=nosplit
    set shortmess=atIc
    set isfname-==
    set spell
    set ignorecase          " ignore case when searching
    set smartcase           " no ignorecase if Uppercase char present
" }}}
" System mappings  ----------------------------------------------------------{{{
" No need for ex mode
    nnoremap Q <nop>
    vnoremap // y/<C-R>"<CR>
" recording macros
" map q <Nop>
" exit insert, dd line, enter insert
    inoremap <c-d> <esc>ddi
" Navigate between display lines
    noremap  <silent> <Up>   gk
    noremap  <silent> <Down> gj
    noremap  <silent> k gk
    noremap  <silent> j gj
    noremap  <silent> <Home> g<Home>
    noremap  <silent> <End>  g<End>
    inoremap <silent> <Home> <C-o>g<Home>
    inoremap <silent> <End>  <C-o>g<End>
    noremap  <silent> L $
    noremap  <silent> H ^
" copy current files path to clipboard
    nmap cp :let @+= expand("%") <cr>
" Neovim terminal mapping
" terminal 'normal mode'
    tmap <esc> <c-\><c-n><esc><cr>
" exit insert, dd line, enter insert
    inoremap <c-d> <esc>ddi
    noremap W <C-w>
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just swap the mapping
" nnoremap : ;
" give it a try and you will like it
    inoremap <c-f> <c-x><c-f>
" Copy to osx clipboard
    vnoremap <C-c> "*y<CR>
    " vnoremap y "*y<CR>
    " nnoremap Y "*Y<CR>
    " vnoremap y myy`y
    " vnoremap Y myY`y
    let g:multi_cursor_next_key='<C-n>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    " let g:multi_cursor_quit_key='<Esc>'
    " my mappings
    nnoremap _ :-tabnext<cr>
    nnoremap + :+tabnext<cr>

" Align blocks of text and keep them selected
    nnoremap <leader>d "_d
    vnoremap <leader>d "_d
    vnoremap <c-/> :TComment<cr>
    nnoremap <silent> <esc> :noh<cr>
    nnoremap <leader>e :call <SID>SynStack()<CR>
    function! <SID>SynStack()
      if !exists("*synstack")
        return
      endif
      echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunc

    function! s:PlaceholderImgTag(size)
      let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
      let [width,height] = split(a:size, 'x')
      execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
      endfunction
    command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)

"}}}"
" Themes, Commands, etc  ----------------------------------------------------{{{
    syntax on
    let g:quantum_italics=1
    set background=dark
    let g:airline_theme='codedark'
    colorscheme codedark
"}}}
" MarkDown ------------------------------------------------------------------{{{

    noremap <leader>TM :TableModeToggle<CR>
    let g:table_mode_corner="|"

    let g:neomake_markdown_proselint_maker = {
        \ 'errorformat': '%W%f:%l:%c: %m',
        \ 'postprocess': function('neomake#postprocess#GenericLengthPostprocess'),
        \}
    let g:neomake_markdown_enabled_makers = ['alex', 'proselint']

"}}}
" Java {{{

    autocmd FileType java setlocal omnifunc=javacomplete#Complete
    autocmd FileType java nnoremap <buffer> <F9> :te javac % && java %:r <cr>

"}}}
" Python {{{
    let g:python_host_prog = '/usr/bin/python2'
    let g:python3_host_prog = '/usr/bin/python3'
    " let $NVIM_PYTHON_LOG_FILE='nvim-python.log'
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#documentation_command = "<leader>k"
    autocmd FileType python nnoremap <buffer> <F9> :te /Users/his/.pyenv/shims/python3 %<cr>
    autocmd FileType python nnoremap <buffer> <F18> :te python3 %<cr>
    autocmd FileType sh nnoremap <buffer> <F9> :te sh %<cr>
    autocmd FileType sh nnoremap <buffer> <F10> :te sh %
" }}}
" C/C++ {{{
    autocmd FileType cpp nnoremap <buffer> <F9> :te ./%:r <cr>
    autocmd FileType c nnoremap <buffer> <F9> :te gcc % && ./a.out<cr>
    autocmd FileType go nnoremap <buffer> <F9> :te go run %<cr>
" }}}
" Git -----------------------------------------------------------------------{{{
    set signcolumn=yes
    "let g:gitgutter_sign_column_always = 1
" }}}
" Nvim terminal -------------------------------------------------------------{{{

    au BufEnter * if &buftype == 'terminal' | :startinsert | endif
    autocmd BufEnter term://* startinsert
    autocmd TermOpen * set bufhidden=hide

" }}}
" Vim-Devicons {{{
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
" }}}
" vim-airline ---------------------------------------------------------------{{{
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#mike#enabled = 0
    set hidden
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#neomake#error_symbol='• '
    let g:airline#extensions#neomake#warning_symbol='•  '
    let g:airline_symbols.branch = ''
    cnoreabbrev <silent> <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
    tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
    nmap <leader>t :term<cr>
    nmap <leader>. :bnext<CR>
    tmap <leader>, <C-\><C-n>:bnext<cr>
    nmap <leader>m :bprevious<CR>
    tmap <leader>. <C-\><C-n>:bprevious<CR>
    tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
    tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
    tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
    tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
    tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
    tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
    tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
    tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
    tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
    nmap <leader>1 <Plug>AirlineSelectTab1
    nmap <leader>2 <Plug>AirlineSelectTab2
    nmap <leader>3 <Plug>AirlineSelectTab3
    nmap <leader>4 <Plug>AirlineSelectTab4
    nmap <leader>5 <Plug>AirlineSelectTab5
    nmap <leader>6 <Plug>AirlineSelectTab6
    nmap <leader>7 <Plug>AirlineSelectTab7
    nmap <leader>8 <Plug>AirlineSelectTab8
    nmap <leader>9 <Plug>AirlineSelectTab9
    let g:airline#extensions#tabline#buffer_idx_format = {
          \ '0': '0 ',
          \ '1': '1 ',
          \ '2': '2 ',
          \ '3': '3 ',
          \ '4': '4 ',
          \ '5': '5 ',
          \ '6': '6 ',
          \ '7': '7 ',
          \ '8': '8 ',
          \ '9': '9 ',
          \}
"}}}
let vim_markdown_preview_toggle=3
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

let g:vimtex_fold_enabled = 1
let g:vimtex_fold_manual = 1
let g:vimtex_text_obj_enabled = 0
let g:vimtex_imaps_enabled = 0
let g:vimtex_motion_enabled = 1
let g:vimtex_mappings_enabled = 0

if has('macunix')
      let g:vimtex_view_general_viewer
                  \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
elseif has('unix')
      let g:vimtex_view_general_viewer
                  \ = 'zathura'
endif
let g:vimtex_view_general_options = '-r @line @pdf @tex'

" This adds a callback hook that updates Skim after compilation
let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']
function! UpdateSkim(status)
	if !a:status | return | endif

	let l:out = b:vimtex.out()
	let l:tex = expand('%:p')
	let l:cmd = [g:vimtex_view_general_viewer, '-r']
	if !empty(system('pgrep Skim'))
		call extend(l:cmd, ['-g'])
	endif
	if has('nvim')
		call jobstart(l:cmd + [line('.'), l:out, l:tex])
	elseif has('job')
		call job_start(l:cmd + [line('.'), l:out, l:tex])
	else
		call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
	endif
endfunction
" Show trailing whitespace:
"highlight ExtraWhitespace ctermbg=red guibg=red
"highlight TheInt ctermbg=red guibg=green
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

" autocmd BufWinEnter * match TheInt /Int/
" autocmd InsertEnter * match TheInt /Int/
" autocmd InsertLeave * match TheInt /Int/
" autocmd BufWinLeave * call clearmatches()
"" Opens the nnn window in a split
" nnn config
"
" NNN filepicker -----------------------------------------------------------{{{
map <silent> - :NnnPicker<CR>
let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Or pass a dictionary with window size
let g:nnn#layout = { 'left': '~50%' } " or right, up, down

" Floating window (neovim)
function! s:layout()
    let buf = nvim_create_buf(v:false, v:true)

    let height = &lines - float2nr(&lines / 9)
    let width = float2nr(&columns * 2 / 5)
    let col = float2nr(&columns * 2 / 3)

    let opts = {
          \ 'relative': 'editor',
          \ 'row': 2,
          \ 'col': col,
          \ 'width': width,
          \ 'height': height
          \ }

    call nvim_open_win(buf, v:true, opts)
endfunction
let g:nnn#layout = 'call ' . string(function('<SID>layout')) . '()'
nnoremap <leader>n :NnnPicker '%:p:h'<CR>
"}}}
autocmd FileType json syntax match Comment +\/\/.\+$+
" coc
" You will have bad experience for diagnostic messages when it's default 4000.
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
highlight clear SignColumn

autocmd FileType dart setlocal shiftwidth=2 softtabstop=2 expandtab
let g:calendar_frame = 'unicode'
endif
