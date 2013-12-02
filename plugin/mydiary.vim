if !exists('g:mydiary_path')
    let g:mydiary_path = $HOME . "/memo"
endif

command! -nargs=0 MyDiaryNew :call mydiary#new()
