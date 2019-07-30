" Unmap arrow keys
no <up> <Nop> " ddp
no <left> <Nop>
no <right> <Nop>
no <down> <Nop> " ddkP

ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <down> <Nop> 

vno <up> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <down> <Nop>

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" buffer cycle 
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
" close buffer move to next/prev
nnoremap <C-c> :bp\|bd #<CR>

" Easymotion leader bind
map <Leader> <Plug>(easymotion-prefix)

" Window movement
map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key, '[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction
