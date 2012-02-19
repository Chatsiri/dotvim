set number
syntax on
set ts=2
filetype on
au BufNewFile,BufRead *.cu set filetype=c
let $VIMRUNTIME = "/san01/home/chatsiri/.vim/vimrc"
autocmd VimEnter * NERDTree
set nocompatible

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap <silent> <c-n> :NERDTreeToggle<CR>


" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
