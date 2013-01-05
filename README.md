cmus-remote-vim
===============

Why I made this
---------------

I often listen to music while I write code,
and I don't have (or want) those fancy media keys that some people have on their keyboards.
Still wanted to be able to control my music player from my editor, so I wrote this.


How to use
----------

1. Place `plugin/cmus-remote.vim` in your `~/.vim/plugin/` directory.
2. Bind the functions you think you'll need in your `.vimrc`.
3. Smile.


Functions provided by this plugin
---------------------------------

 * cmus:pause()
   * Pauses/resumes song.
 * cmus:stop()
   * Commands **cmus** to stop playing music.
 * cmus:play()
   * Command **cmus** to start playing music.
 * cmus:next()
   * Jump to next track in playlist.
 * cmus:previous()
   * Jump to previous track in playlist.
 * cmus:current()
   * Echo artist, album and track title.


Example bindings for your .vimrc
--------------------------------

I have personally bound `cmus:next`, `cmus:previous` and `cmus:pause` in my `.vimrc`.

    " A few common cmus commands
    nnoremap <leader>n :call cmus:next()<cr>
    nnoremap <leader>p :call cmus:previous()<cr>
    nnoremap <leader><Space> :call cmus:pause()<cr>

