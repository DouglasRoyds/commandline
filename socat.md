socat
=====

Serial terminal:

    socat $(tty),rawer,escape=0x1d \
          /dev/ttyUSB0,b57600,rawer

 - `rawer = raw,echo=0`
 - I had no joy with `-,rawer`
 - Escape character is Ctrl-]. Without this, Ctrl-C exits socat

Fully-qualified paths are assumed to be GOPEN:

    socat GOPEN:$(tty),rawer,escape=0x1d \
          GOPEN:/dev/ttyUSB0,b57600,rawer

Serial over ssh:

    ssh -t user@host \
       'socat $(tty),raw,echo=0,escape=0x1d \
              /dev/ttyUSB0,b57600,raw,echo=0'

 - -t = Allocate a pseudo-terminal (so that tty works).
 - Single-quote to ensure that tty is run remotely, not locally.

Serial over ssh the socat way:

    socat $(tty),rawer EXEC:'ssh -t user@host \
       socat "$(tty),raw,echo=0,escape=0x1d" \
             "/dev/ttyUSB0,b57600,raw,echo=0"',pty,setsid,ctty

 - Single-quotes to ensure that tty is run remotely.
 - Quoting the parameter set seems to be required, not sure why.

Map the remote serial port to a local pty device:

    socat PTY,link=$HOME/dev/devname,rawer,waitslave \
          EXEC:'ssh -t user@host \
             socat "$(tty),raw,echo=0" \
                   "/dev/ttyUSB0,b57600,raw,echo=0"',pty,setsid,ctty

Connect to it:

    $ socat $(tty),rawer,escape=0x1d \
            ~/dev/devname,rawer

    $ miniterm.py --raw --eol LF ~/dev/devname

    $ python3
    >>> import serial
    >>> ser = serial.Serial('/home/username/dev/devname')
    >>> ser.write(b'ls\n')
    3
    >>> out = ''
    >>> while ser.in_waiting > 0:
    ...     out += ser.read(1).decode(errors='replace')
    ...
    >>> for line in out.split('\r\n'):
    ...     print(line)
    ...
    ls
    bin
    root@K-Band-CH1:~#
    >>>
