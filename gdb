target remote 172.16.163.90:10000                                          For cross-debugging, the target machine
                                                                           and gdbserver port number
set sysroot /tmp/tait.dbs/build/tmp/staging/armv5te-tait-linux-gnueabi/    For cross-debugging, all shared libss
                                                                           will be under this directory.
set solib-search-path /tmp/tait.dbs/build/tmp/staging/x86_64-tait-linux/   For native debugging, we leave the sysroot at / so
                                                                           that gdb can find the standard libs,
                                                                           but add our sysroot to the shared lib search path.

b main                     Set a breakpoint at this function
b 123                         Line number
b filename.cpp:123
b filename.cpp:function
b Message::sendMessage        c++ methods autocomplete
i b                        info breakpoints - Display watchpoints and breakpoints
d                          Delete the lot
d 4                        Delete breakpoint 4
save breakpoints filename

r                          Run or restart
r args                        Program arguments
c                          continue - To the next breakpoint.
                           When cross-debugging, start here - no need to "run" first (is this true?)

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
b full                        Also print all local variables for each frame
frame num                  Select frame in stack

attach pid                 Attach to already-running process
detach

