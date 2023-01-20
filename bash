set -o vim                          Use Vim-style editing. See man readline for the lot:

   ESC                                 Exit insert mode, return to command mode:
   ESC _                               Copy the last parameter of the last command
   ESC 3_                              Copy the 3rd field (2nd parameter) of the last command
   ESC v                               Vim it - throw the current line into Vim for editing
   ESC #                               Comment - Drop this line into the history as a comment
   ESC Ctrl-K                          Cut to end of line
   Ctrl-L                              Clear the screen
   Ctrl-U                              Cut to start of line
   Ctrl-W                              Delete WORD left (whitespace delimited)

set -o emacs                        Use Emacs-style editing (default)

   Ctrl-L                              Clear the screen
   Ctrl-W                              Delete WORD left (whitespace delimited)
   Ctrl-_                              Undo
   Alt-F/B                             Forward/Back one word
   Ctrl-U/K                            Cut to start/end of line
   Alt-.                               Paste the last parameter of the last command. Repeat for the last-command-but-one, etc.

Ctrl-V<Key>                         Insert special character (literal), eg.
                                       Ctrl-V<CR>           Inserts ^M
                                       Ctrl-V Ctrl-<CR>     Inserts \n

read                                Reads a line from stdin, can be used to find keymappings for function keys
bind -P                             Print the full list of keyboard mappings
bind -m vi -P        | grep -v "is not bound"
bind -m vi-insert -P | grep -v "is not bound"
                                    Current keyboard bindings for vi command-mode and vi-insert mode
                                       -m keymap      eg. emacs, vi, vi-move, vi-command, vi-insert

history | tail                      View the most recent commands
!496                                Rerun command 496
Ctrl-R                              Search command history. Type some characters, then:
                                       Ctrl-R   Search back again
                                       Ctrl-S   Search forward
                                       Enter    Execute the command
                                       Esc      Edit it
^this^that                          Rerun the most recent command, replacing this with that
!!:s/this/that/g                    Replace this with that globally throughout the most recent command ...
!-1:s/this/that/g                   ... or the one before it
history -a                          Append this Bash session's history to the history file
history -n                          Read the newest history from the history file, and append to this session's history

Ctrl-Z                              Stop the current process
bg                                  Background the currently stopped process
fg                                  Bring it back again
wait %4 && echo All done            %4 specifies a job number
wait $(pidof somecommand)
somecommand & pid=$!
trap "kill $pid" INT TERM EXIT      Ensure that a background process exits when the parent script does.

cat <<EOF >textfile                 Create a text file from stdin (keyboard). Enter EOF<CR> to finish
program >logfile 2>&1               Pipe both stderr and stdout to a logfile
<(program)                          Process substitution - pretends that the output of the program is a file
$(program)                          Command-line substituion - pretends that the output of the program was entered on the command-line

ls *.{mpg,avi,mov}                  Curly brackets are entire-word wildcards
mkdir -p a/{b,c/{d,e,f}}            mkdir can make a hierarchy of directories in one command

complete -p cd                      Print the bash completion for the cd command
complete -v -F _cd -o nospace pushd
                                    Use the _cd function (see /etc/bashrc) for pushd as well
                                       -v          Complete shell variables
                                       -F func     Complete using this function
                                       -o nospace  Turn off the default behaviour of adding a space to the end of
                                                   completions
                                       -o default  Fall back to default readline matching if the compspec fails

