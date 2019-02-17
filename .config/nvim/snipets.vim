"Add ';+' imap as a jump point
	so ~/dotfiles/vim/jump_points.vim

"RUBY ON RAILS
	autocmd FileType ruby inoremap ;' <Space>''<Space>

	autocmd FileType ruby imap ;ed ;+<CR><Backspace>end;+<Esc>2k

	autocmd FileType ruby imap ;cl class<Space><CR><Tab>;eda
	autocmd FileType ruby imap ;do do<CR><Tab>;ed$
	autocmd FileType ruby imap ;df def<Space><CR><Tab>;eda
	autocmd FileType ruby imap ;el else<CR>;edA
	autocmd FileType ruby imap ;if if<Space><CR>;edA
	autocmd FileType ruby imap ;md module<Space><CR><Tab>;eda

	autocmd FileType ruby imap ;bf before<Space>;doj"_3X"_C
	autocmd FileType ruby imap ;dc describe;';doF'i
	autocmd FileType ruby imap ;it it;';dojAexpect(;+<Esc>kF'i
	autocmd FileType ruby imap ;ns namespace<Space>:<Space>;+;do0f:a
	
	autocmd FileType ruby imap ;cx context;';doja;it;+<Esc>k$F'i

	"Automaticaly append closing characters
		autocmd FileType ruby inoremap " """++"<Esc>4hi
		autocmd FileType ruby inoremap ' ''"++"<Esc>F'i
		autocmd FileType ruby inoremap ( ()"++"<Esc>F)i
		autocmd FileType ruby inoremap [ []"++"<Esc>F]i
		autocmd FileType ruby inoremap { {}"++"<Esc>F}i
		autocmd FileType ruby inoremap (<CR> (<CR>)<CR>"++"<ESC>kO
		autocmd FileType ruby inoremap [<CR> [<CR>]<CR>"++"<ESC>kO
		autocmd FileType ruby inoremap {<CR> {<CR>}<CR>"++"<ESC>kO
		"inoremap {;<CR> {<CR>};<CR>;+<ESC>O

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

	autocmd FileType javascript inoremap ;fn function<Space>(/**/){<CR>/**/<CR>}/**/<Esc>2k$F(i
	autocmd FileType typescript inoremap ;lg console.log(''/**/)/**/<Esc>F'i
	autocmd FileType javascript inoremap ;lg console.log(''/**/)/**/<Esc>F'i
	autocmd FileType javascript,typescript inoremap ;if if(){<CR>/**/<CR>}/**/<Esc>2k$hi
	autocmd FileType javascript,typescript inoremap ;el else{<CR>/**/<CR>}/**/<Esc>kA
	autocmd FileType javascript inoremap ;dc describe('',<Space>function(){<CR>/**/<CR>});<CR>/**/<Esc>3k$F'i
	autocmd FileType javascript inoremap ;ba beforeAll(function(){<CR>.<CR>});<CR>/**/<Esc>2kcl
	autocmd FileType javascript inoremap ;be beforeEach(function(){<CR>.<CR>});<CR>/**/<Esc>2kcl
	autocmd FileType javascript inoremap ;it it('',<Space>function(){<CR>/**/<CR>});<CR>/**/<Esc>3k$F'i

	autocmd FileType javascript imap ;ei else<Space>;if
	autocmd FileType typescript inoremap ;fn () => {<CR><CR>}/**/<Esc>ka

"""PHP/HTML
	"autocmd FileType php,html imap ;b <b></b><Space>;+<Esc>FbT>i
	"autocmd FileType php,html imap ;i <em></em><Space>;+<Esc>FeT>i
	"autocmd FileType php,html imap ;h1 <h1></h1><CR><CR>;+<Esc>2kf<i
	"autocmd FileType php,html imap ;h2 <h2></h2><CR><CR>;+<Esc>2kf<i
	"autocmd FileType php,html imap ;h3 <h3></h3><CR><CR>;+<Esc>2kf<i
	"autocmd FileType php,html imap ;p <p></p><CR><CR>;+<Esc>02kf>a
	"autocmd FileType php,html imap ;a <a<Space>href="">;+</a><Space>;+<Esc>14hi
	"autocmd FileType php,html imap ;e <a<Space>target="_blank"<Space>href="">;+</a><Space>;+<Esc>14hi
	"autocmd FileType php,html imap ;ul <ul><CR><li></li><CR></ul><CR><CR>;+<Esc>03kf<i
	"autocmd FileType php,html imap ;li <Esc>o<li></li><Esc>F>a
	"autocmd FileType php,html imap ;ol <ol><CR><li></li><CR></ol><CR><CR>;+<Esc>03kf<i
	"autocmd FileType php,html imap ;im <table<Space>class="image"><CR><caption align="bottom"></caption><CR><tr><td><a<space>href="pix/;+"><img<Space>src="pix/;+"<Space>width=";+"></a></td></tr><CR></table><CR><CR>;+<Esc>4kf>a
	autocmd FileType php,html imap ;td <td></td>;+<Esc>Fdcit
	"autocmd FileType php,html imap ;ht <html><CR></html><Esc>O
	"autocmd FileType php,html imap ;he <head><CR></head><Esc>O
	autocmd FileType php,html inomap ;tr <tr></tr><CR><++><Esc>kf<i
	autocmd FileType php,html inomap ;% <%<Space><Space>%><++><Esc>F<Space>i
	autocmd FileType php,html inomap ;th <th></th><++><Esc>Fhcit
	autocmd FileType php,html inomap ;tab <table><CR></table><Esc>O
	"autocmd FileType php,html imap ;gr <font color="green"></font><Esc>F>a
	"autocmd FileType php,html imap ;rd <font color="red"></font><Esc>F>a
	"autocmd FileType php,html imap ;yl <font color="yellow"></font><Esc>F>a
	"autocmd FileType php,html imap ;dt <dt></dt><CR><dd>;+</dd><CR>;+<esc>2kcit
	"autocmd FileType php,html imap ;dl <dl><CR><CR></dl><CR><CR>;+<esc>3kcc
	autocmd FileType php,html imap ;ht <html><CR><head><CR></head><CR><body><CR></body><CR></html><Esc>3kO
	autocmd FileType php,html imap ;bt <button></button>;+<Esc>Fncit

""LATEX
	autocmd FileType tex inoremap <F5> <Esc>:!xelatex<space><c-r>%<Enter>a
