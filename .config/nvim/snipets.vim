"Add '<leader>+' imap as a jump point
	execute 'so '.fnameescape(vim_path . 'jump_points.vim')

"RUBY ON RAILS
	autocmd FileType ruby inoremap <leader>' <Space>''<Space>

	autocmd FileType ruby imap <leader>ed <leader>+<CR><Backspace>end<leader>+<Esc>2k

	autocmd FileType ruby imap <leader>cl class<Space><CR><Tab><leader>eda
	autocmd FileType ruby imap <leader>do do<CR><Tab><leader>ed$
	autocmd FileType ruby imap <leader>df def<Space><CR><Tab><leader>eda
	autocmd FileType ruby imap <leader>el else<CR><leader>edA
	autocmd FileType ruby imap <leader>if if<Space><CR><leader>edA
	autocmd FileType ruby imap <leader>md module<Space><CR><Tab><leader>eda

	autocmd FileType ruby imap <leader>bf before<Space><leader>doj"_3X"_C
	autocmd FileType ruby imap <leader>dc describe<leader>'<leader>doF'i
	autocmd FileType ruby imap <leader>it it<leader>'<leader>dojAexpect(<leader>+<Esc>kF'i
	autocmd FileType ruby imap <leader>ns namespace<Space>:<Space><leader>+<leader>do0f:a

	autocmd FileType ruby imap <leader>cx context<leader>'<leader>doja<leader>it<leader>+<Esc>k$F'i

	"Automaticaly append closing characters
		autocmd FileType ruby inoremap " """++"<Esc>4hi
		autocmd FileType ruby inoremap ' ''"++"<Esc>F'i
		autocmd FileType ruby inoremap ( ()"++"<Esc>F)i
		autocmd FileType ruby inoremap [ []"++"<Esc>F]i
		autocmd FileType ruby inoremap { {}"++"<Esc>F}i
		autocmd FileType ruby inoremap (<CR> (<CR>)<CR>"++"<ESC>kO
		autocmd FileType ruby inoremap [<CR> [<CR>]<CR>"++"<ESC>kO
		autocmd FileType ruby inoremap {<CR> {<CR>}<CR>"++"<ESC>kO
		"inoremap {<leader><CR> {<CR>}<leader><CR><leader>+<ESC>O

"Javascript/Typescript
	"Automaticaly append closing characters
		autocmd FileType javascript,typescript inoremap " ""/**/<Esc>4hi
		autocmd FileType javascript,typescript inoremap ' ''/**/<Esc>F'i
		autocmd FileType javascript,typescript inoremap ( ()/**/<Esc>F)i
		autocmd FileType javascript,typescript inoremap [ []/**/<Esc>F]i
		autocmd FileType javascript,typescript inoremap { {}/**/<Esc>F}i
		autocmd FileType javascript,typescript inoremap (<CR> (<CR>)<CR>/**/<ESC>kO
		autocmd FileType javascript,typescript inoremap [<CR> [<CR>]<CR>/**/<ESC>kO
		autocmd FileType javascript,typescript inoremap {<CR> {<CR>}<CR>/**/<ESC>kO

	autocmd FileType javascript inoremap <leader>fn function<Space>(/**/){<CR>/**/<CR>}/**/<Esc>2k$F(i
	autocmd FileType typescript inoremap <leader>lg console.log(''/**/)/**/<Esc>F'i
	autocmd FileType javascript inoremap <leader>lg console.log(''/**/)/**/<Esc>F'i
	autocmd FileType javascript,typescript inoremap <leader>if if(){<CR>/**/<CR>}/**/<Esc>2k$hi
	autocmd FileType javascript,typescript inoremap <leader>el else{<CR>/**/<CR>}/**/<Esc>kA
	autocmd FileType javascript inoremap <leader>dc describe('',<Space>function(){<CR>/**/<CR>})<leader><CR>/**/<Esc>3k$F'i
	autocmd FileType javascript inoremap <leader>ba beforeAll(function(){<CR>.<CR>})<leader><CR>/**/<Esc>2kcl
	autocmd FileType javascript inoremap <leader>be beforeEach(function(){<CR>.<CR>})<leader><CR>/**/<Esc>2kcl
	autocmd FileType javascript inoremap <leader>it it('',<Space>function(){<CR>/**/<CR>})<leader><CR>/**/<Esc>3k$F'i

	autocmd FileType javascript imap <leader>ei else<Space><leader>if
	autocmd FileType typescript inoremap <leader>fn () => {<CR><CR>}/**/<Esc>ka

"""PHP/HTML
	autocmd FileType html imap <leader>td <td></td><leader>+<Esc>Fdcit
	autocmd FileType html imap <leader>div <div><CR></div><CR><leader>+<Esc>kO
	autocmd FileType html inoremap <leader>tr <tr></tr><CR><++><Esc>kf<i
	autocmd FileType html inoremap <leader>% <%<Space><Space>%><++><Esc>F<Space>i
	autocmd FileType html inoremap <leader>th <th></th><++><Esc>Fhcit
	autocmd FileType html inoremap <leader>tab <table><CR></table><Esc>O
	autocmd FileType html imap <leader>ht <html><CR><head><CR></head><CR><body><CR></body><CR></html><Esc>3kO
	autocmd FileType html imap <leader>bt <button></button><leader>+<Esc>Fncit

""LATEX
	autocmd FileType tex inoremap <F5> <Esc>:!xelatex<space><c-r>%<Enter>a
