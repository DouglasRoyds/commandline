tmux                                Create a new unnamed session
tmux new -s session                 Named session
tmux new -s session -t existing     In the same session group as an existing session,
                                    Allows this screen to switch between sessions with Ctrl-B s
                                       -c start-directory

tmux attach                         Attach to the most recently used unattached session
                                       -t session
                                       -d                And detach any other clients
tmux display                        A brief glimpse of the tmux info bar
          i
tmux detach
          d
          D                         Choose other clients to detach

tmux list-sessions
tmux ls
   Ctrl-B s                         Select a session interactively
          ( )                       Previous/next session

tmux list-windows
tmux lsw
          w                         Select interactively
          c                         Create
          n p l                     Next/previous/alternate

tmux list-panes
tmux lsp
          %                         Split vertically
          "                               horizontally
          q                         Briefly show pane numbers
          q 1                          0 1 2 ...      Go to this pane
          z                         Toggle pane full-screen (zoom)

   Ctrl-B PgUp                      Enter copy mode and scroll one page up
          [                         Just enter copy mode
                                       h j k l
                                       ^U ^D ^F ^B^B
                                       0 $ gg G f F      Most Vim movement keys apply
                                       Space             Start selection
                                       Enter             Copy selection into a tmux paste buffer
                                       Esc               Abandon selection

   Ctrl-B ]                         Paste from the most recent paste buffer
          #                         List all paste buffers
          =                         Choose a buffer to paste from

