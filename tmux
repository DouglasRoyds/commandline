tmux                                Create a new unnamed session
tmux new -s sessionname
                                       -c start-directory

tmux attach                         Attach to the most recently used unattached session
tmux ls                             List sessions
   Ctrl-B s                            Select a session interactively
tmux attach -t sessionname
tmux display                        A brief glimpse of the tmux info bar
   Ctrl-B i                            Same

Ctrl-B ( )                          Switch to the previous/next session
Ctrl-B d                            Detach

Ctrl-B PgUp                         Enter copy mode and scroll one page up
Ctrl-B [                            Enter copy mode
                                       h j k l
                                       ^U ^D ^F ^B^B
                                       0 $ g G f F       Most Vim movement keys apply
                                       Space             Start selection
                                       Enter             Copy selection into a tmux paste buffer
                                       Esc               Abandon selection

Ctrl-B ]                            Paste from the most recent paste buffer
Ctrl-B #                            List all paste buffers
Ctrl-B =                            Choose a buffer to paste from

