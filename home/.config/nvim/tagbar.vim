let g:tagbar_left = 1
let g:tagbar_width = 50

"Attempt to always show the private members 
let g:tagbar_hide_nonpublic = 0
"Free up the 'v' mapping and thereby enable visual mode
"Also make it very unlikely to accidentally hide the
"private members
let g:tagbar_map_hidenonpublic = "¤"

let g:tagbar_type_ansible = {
	\ 'ctagstype' : 'ansible',
	\ 'kinds' : [
		\ 't:tasks'
	\ ],
	\ 'sort' : 0
    \ }
