let g:mydiary_path = expand(g:mydiary_path, ':p')
"if !isdirectory(g:mydiary_path)
  " call mkdir(g:mydiary_path, 'p')
"endif

function! mydiary#new ()
    let file_name = strftime("%Y-%m") . hostname() . ".md"
    exe "edit!" (g:mydiary_path . "/" . file_name)

    let ym = search("^# " . strftime("%Y-%m-%d(%a)"))
    if ym == 0
        call append(line('$'), "")
        call append(line('$'), strftime("# %Y-%m-%d(%a)"))
    end

    call append(line('$'), "")
    call append(line('$'), strftime("## (%H:%M)"))
    call append(line('$'), "")
    call append(line('$'), "")
    call cursor("$", "^")
    startinsert
endfunction
