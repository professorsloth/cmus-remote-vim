function cmus:trim_whitespace(target)
    let target = substitute(a:target, "^\\s\\+\\|\\s\\+$", "", "g")
    let target = substitute(target, "^\\n\\+\\|\\n\\+$", "", "g")
    return target
endfunction

function! cmus:get_song_info()
    let artist = system('cmus-remote -Q | grep "tag artist " | cut -d " " -f 3-')
    let album = system('cmus-remote -Q | grep "tag album " | cut -d " " -f 3-')
    let song = system('cmus-remote -Q | grep "tag title " | cut -d " " -f 3-')

    let artist = cmus:trim_whitespace(artist)
    let album = cmus:trim_whitespace(album)
    let song = cmus:trim_whitespace(song)

    return artist . " - " . album . " - " . song
endfunction

function! cmus:pause()
    let result = system('cmus-remote --pause')
    echo "Pausing/resuming " . cmus:get_song_info()
endfunction

function! cmus:stop()
    let result = system('cmus-remote --stop')
    echo cmus:get_song_info()
endfunction

function! cmus:play()
    let result = system('cmus-remote --play')
    echo "Playing " . cmus:get_song_info()
endfunction

function! cmus:next()
    let result = system('cmus-remote --next')
    echo "Playing " . cmus:get_song_info()
endfunction

function! cmus:previous()
    let result = system('cmus-remote --prev')
    echo "Playing " . cmus:get_song_info()
endfunction

function! cmus:current()
    echo cmus:get_song_info()
endfunction

