"DefaulT
	inoremap <Space><Space> <Esc>/<++><CR>"_c4l
	inoremap ;+ <++>

"Ruby on Rails
	autocmd FileType ruby iunmap <Space><Space>
	autocmd FileType ruby iunmap ;+

	autocmd FileType ruby inoremap ;+ "++"
	autocmd FileType ruby inoremap <Space><Space> <Esc>/"++"<CR>"_c4l

"Javascript/Typescript
	autocmd FileType javascript,typescript iunmap <Space><Space>
	autocmd FileType javascript,typescript iunmap ;+

	autocmd FileType javascript,typescript inoremap ;+ /**/
	autocmd FileType javascript,typescript inoremap <Space><Space> <Esc>/\/\*\*\/<CR>"_c4l
