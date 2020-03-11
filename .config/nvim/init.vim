let mapleader =","
let vim_path ="~/.config/nvim/"
set shell=/usr/bin/bash

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'burner/vim-svelte'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'metakirby5/codi.vim'
call plug#end()

set bg=light
set mouse=a
" Some basics:
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Nerd tree
	map <C-n> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vimling:
	nm <leader>d :call ToggleDeadKeys()<CR>
	imap <leader>d <esc>:call ToggleDeadKeys()<CR>a
	nm <leader>i :call ToggleIPA()<CR>
	imap <leader>i <esc>:call ToggleIPA()<CR>a
	nm <leader>q :call ToggleProse()<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Open my bibliography file in split
	map <leader>b :vsp<space>$BIB<CR>
	map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

map <CR><CR> o<Esc>

"Make copy/paste from clipboard by pressing y or p
	set clipboard=unnamedplus

"Make tab-completion for file related task
	set path+=**

"Display all matching files when we tab complete
	set wildmenu

" Spell-check set to F6:
	map <F6> :setlocal spell! spelllang=en_us,pt_br<CR>

" Compile latex set to F5:
	autocmd Filetype tex map <F5> :!xelatex "%"

" Compile rmd set to F5:
	autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

"Create the `tags` file (may need to install ctags first)
	command! MakeTags !ctags -R .

"Disable search highlight
	set nohlsearch

"Setup tabs
	execute 'so '.fnameescape(vim_path . 'tabs.vim')

"Setup snipets
	execute 'so '.fnameescape(vim_path . 'snipets.vim')

"Setup emmet snipets html and css
	let g:user_emmet_install_global = 0
	autocmd FileType html,php,css,svelte,javascript EmmetInstall

"Configs eslint
	let g:ale_linters = {
	\   'javascript': ['eslint'],
	\}
	let g:ale_fixers = {'javascript': ['eslint']}
	let g:ale_lint_on_save = 1
	let g:ale_fix_on_save = 1
	let g:ale_set_highlights = 0

" Styled components syntax
"  autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
"  autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" React snipet trigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-h>"
let g:UltiSnipsSnippetsDir = $HOME . "/.config/nvim/snippets"
let g:UltiSnipsSnippetDirectories = [$HOME . "/.config/nvim/snippets", $HOME . "/.config/nvim/plugged/vim-react-snippets/UltiSnips"]

" Codi configs
	let g:codi#interpreters = {
				\ 'javascript' : {
						\ 'bin': ['node', '-e', 'require("repl").start({ignoreUndefined: true, useGlobal: true})'],
				\ },
			\ }

	map <leader>m :Codi!!
