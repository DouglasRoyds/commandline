target remote 172.16.163.90:10000         For cross-debugging, the target machine and gdbserver port number
set sysroot ~/workspace/build/tmp/staging/armv5te-linux-gnueabi/
                                          For cross-debugging, all shared libs will be under this directory.
set solib-search-path ~/workspace/build/tmp/staging/x86_64-linux/
                                          For native debugging, we leave the sysroot at / so that gdb can find
                                          the standard libs, but add our sysroot to the shared lib search path,
                                          which is used after a sysroot search has failed.

b main                     break - set a breakpoint at this function
b 123                         Line number
b filename.cpp:123
b filename.cpp:function
b Message::sendMessage        c++ methods autocomplete

b thing if var==value      Conditional breakpoint
                              var==value
                              strcmp(message,"Fred") == 0
                              *p == 'F'
cond 33 var==value         Add a condition to existing breakpoint 33
cond 33                    Remove the condition
disable 33                 Temporarily
enable 33

i b                        info breakpoints - Display watchpoints and breakpoints
d                          delete - the lot
d 4                        delete - breakpoint 4
save breakpoints filename

r                          Run or restart
r args                        Program arguments
set args arg1 arg2            Alternatively
show args
c                          continue - To the next breakpoint.
                           When cross-debugging, start here - no need to "run" first (is this true?)
<Enter>                    Run the last command again

info sharedlibrary         Which shared libs can gdb see?

n                          next - step over next line
s                          step - step into next line
fini                       finish - step out

l                          List next 10 lines of source
l -                           Previous 10 lines

i lo                       info locals - all variables in the current stack frame
watch var                  Display the value of this variable each time we break
p var                      Print

bt                         backtrace
bt full                       Also print all local variables for each frame
frame num                  Select frame in stack

attach pid                 Attach to already-running process
detach

