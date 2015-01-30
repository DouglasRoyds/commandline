sed 's/day/night/'
sed 's#day#night#'                        Change day to night
sed 's#day#night#'  filename
sed 's#day#night#g' filename              All instances in each line
sed 's#day#night#' -i filename            Edit the file in-place
sed '/moon/s#day#night#'                  Only in lines containing "moon"

                                          sed supports POSIX basic regular expressions (not extended).
                                          In basic regular expressions the characters ?, +, {, |, (, and ) lose their special meaning
                                          Use the escaped versions \?, \+, \{, \|, \(, and \) instead.

sed '/regexp/p' -n                        Grep
sed '/regexp/d'                           Inverse grep
sed '/regexp/d' -i filename               Delete a line from a file in-place
sed -n 's#day#night#p'                    Only print the successful lines
                                             -n       Don't output anything
                                             p        Print the line when it matches (print pattern space)
                                             d        Delete line when it matches (delete pattern space)
sed '/regexp/=' -n filename               Just print the line-number

sed 's#day#night and &#'                  Ampersand refers to the entire match
sed 's#\(^Start of line.*up to here\) throwaway part \(keep me$\)#\1 replacement \2#'
                                          Parentheses have to be escaped
                                             \1, \2   Work as normal

sed 's#\r##' filename                     DOS to Unix
sed 's#$#\r#' filename                    Unix to DOS

sed -n  1,5p  filename                    head -5
sed -n  5,10p filename                    middle
sed -n '5,$p' filename                    tail from a specific line number (have to quote the $)

echo 'Fred and Ginger like to dance' |
sed 'a \
and Rudolph does too'                     Append a line: No trailing spaces after the back-slash.
                                                         The line to append must be on a new line.
                                                         Leading spaces are included.
sed '3a \                                 After line 3
sed '/Fred/a \                            After a line containing Fred
sed '/Fred/i \                            Insert the line
sed '/Fred/c \                            Replace the line

sed '{N; s#\n# #}'                        Join two lines:
                                             N     Read the next line into this pattern-space

