tmux                                            Create a new unnamed session
tmux new -s session                             Named session
                                -t existing     Same session group as an existing session
                                -c directory    Initial directory
tmux attach                                     Attach to the most recently used unattached session
                                -t session         
                                -d              Detach any other clients

tmux display
                 Ctrl-A i                       A brief glimpse of the tmux info bar
                                                I have mapped my prefix key to Ctrl-A, as Ctrl-B clashes with Vim
tmux detach
                        d                       
                        D                       Choose other clients to detach

tmux list-sessions                              
tmux ls                                         
                        s                       Select a session interactively
                        ( )                     Previous/next session

tmux list-windows                               Each session can have multiple windows
tmux lsw                                        
                        w                       Select interactively
                        c                       Create
                        n p l                   Next/previous/alternate

tmux list-panes                                 Each window can be split into multiple panes
tmux lsp                                        
                        %                       Split vertically
                        "                       Split horizontally
                        q                       Briefly show pane numbers
                        q 1                     0 1 2 ... Go to this pane
                        z                       Toggle pane full-screen (zoom)

tmux copy-mode                                  
                        PgUp                    Enter copy mode and scroll one page up
                        [                       Just enter copy mode
                                h j k l         
                                ^U ^D ^F ^B     
                                0 $ gg G f F    Most Vim movement keys apply
                                Space           Start selection
                                Enter           Copy selection, exit copy mode
                                Esc             Abandon selection
                        ]                       Paste from the most recent paste buffer
                        #                       List all paste buffers
                        =                       Choose a buffer to paste from

