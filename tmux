tmux                                Create a new unnamed session
tmux new -s sessionname             Named session
                                       -c start-directory

tmux attach                         Attach to the most recently used unattached session
                                       -t sessionname
                                       -d                And detach any other clients
tmux ls                             List sessions
Ctrl-B s                               Select a session interactively
tmux display                        A brief glimpse of the tmux info bar
       i
tmux switch -t sessionname
       ( )                          Previous/next session
tmux detach
       d
       D                            Choose other clients to detach

Ctrl-B PgUp                         Enter copy mode and scroll one page up
       [                            Just enter copy mode
                                       h j k l
                                       ^U ^D ^F ^B^B
                                       0 $ gg G f F      Most Vim movement keys apply
                                       Space             Start selection
                                       Enter             Copy selection into a tmux paste buffer
                                       Esc               Abandon selection

Ctrl-B ]                            Paste from the most recent paste buffer
       #                            List all paste buffers
       =                            Choose a buffer to paste from

Ctrl-B %                            Split vertically
       "                                  horizontally
       q                            Briefly show pane numbers
       q 1                             0 1 2 ...      Go to this pane
       z                            Toggle pane full-screen (zoom)

tmux list-windows
       w                            Select interactively
       c                            Create
       n p l                        Next/previous/alternate

