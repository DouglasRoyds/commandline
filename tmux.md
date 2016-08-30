tmux
====

Starting            | Options      | Notes
--------------------|--------------|--------------------------------------------------
tmux                |              | Create a new unnamed session
tmux new -s session |              | Named session
                    | -t existing  | Same session group as an existing session
                    | -c directory | Initial directory


I have mapped my prefix key to Ctrl-A

Attaching           | Ctrl-A | Options    | Notes
--------------------|--------|------------|--------------------------------------------------
tmux attach         |        |            | Attach to the most recently used unattached session
                    |        | -t session |    
                    |        | -d         | Detach any other clients
tmux display        | i      |            | A brief glimpse of the tmux info bar
tmux detach         | d      |            |
                    | D      |            | Choose other clients to detach


Sessions            | Ctrl-A | Notes
--------------------|--------|--------------------------------------------------
tmux list-sessions  |        |
tmux ls             |        |
                    | s      | Select a session interactively
                    | ( )    | Previous/next session


Windows             | Ctrl-A | Notes
--------------------|--------|--------------------------------------------------
tmux list-windows   |        |
tmux lsw            |        |
                    | w      | Select interactively
                    | c      | Create
                    | n p l  | Next/previous/alternate


Panes               | Ctrl-A | Notes
--------------------|--------|--------------------------------------------------
tmux list-panes     |        |
tmux lsp            |        |
                    | %      | Split vertically
                    | "      | Split horizontally
                    | q      | Briefly show pane numbers
                    | q 1    | 0 1 2 ... Go to this pane
                    | z      | Toggle pane full-screen (zoom)


Copy mode           | Ctrl-A | Movement      | Notes
--------------------|--------|---------------|-----------------------------------------
tmux copy-mode      |        |               |
                    | PgUp   |               | Enter copy mode and scroll one page up
                    | [      |               | Just enter copy mode
                    |        | h j k l       |
                    |        | ^U ^D ^F ^B   |
                    |        | 0 $ gg G f F  | Most Vim movement keys apply
                    |        | Space         | Start selection
                    |        | Enter         | Copy selection, exit copy mode
                    |        | Esc           | Abandon selection


Paste               | Ctrl-A | Notes
--------------------|--------|--------------------------------------------------
                    | ]      | Paste from the most recent paste buffer
                    | #      | List all paste buffers
                    | =      | Choose a buffer to paste from

