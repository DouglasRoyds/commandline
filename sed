sed 's/day/night/'
sed 's#day#night#'                        Change day to night
sed 's#day#night#'  filename
sed 's#day#night#g' filename              All instances in each line
sed 's#day#night#' -i filename            Edit the file in-place
sed '/moon/s#day#night#'                  Only in lines containing "moon"
                                          sed defaults to basic regular expressions
                                             -E    Use extended regular expressions

sed '/regexp/p' -n                        Grep
sed '/regexp/d'                           Inverse grep
sed '/regexp/d' -i filename               Delete a line from a file in-place
sed '12d' -i filename                     Delete line 12 in-place
sed -n 's#day#night#p'                    Only print the successful lines
                                             -n       Don't output anything
                                             p        Print the line when it matches (print pattern space)
                                             d        Delete line when it matches (delete pattern space)
sed '/regexp/=' -n filename               Just print the line-number

sed 's#day#night and &#'                  Ampersand refers to the entire match
sed -E 's#(^Start of line.*up to here) throwaway part (keep me$)#\1 replacement \2#'
                                          Parentheses don't need to be escaped with
                                             -E       Extended regular expressions
                                             \1, \2   Work as normal

sed 's#\r##' filename                     DOS to Unix
sed 's#$#\r#' filename                    Unix to DOS

sed -n  1,5p  filename                    head -5
sed -n  5,10p filename                    middle
sed -n '5,$p' filename                    tail from a specific line number (have to quote the $)
sed -n '$!d'  filename                    tail last line only ($ = last line, !d = delete all others)

echo 'Fred and Ginger like to dance' |
sed '1i Ron and'                          Prepend a line to the beginning of the file
sed '$a and Rudolph does too'             Append a line to the end of the file
                                          Whitespace after the 'a' command is stripped
sed 'a \
and Rudolph does too'                     Append a line: No trailing spaces after the back-slash.
                                                         Leading spaces are included.
sed '3a \                                 After line 3
sed '/Fred/a \                            After a line containing Fred
sed '/Fred/i \                            Insert the line
sed '/Fred/c \                            Replace the line

sed '{N; s#\n# #}'                        Join two lines:
                                             N     Read the next line into this pattern-space

