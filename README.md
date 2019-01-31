# fdcheck
Demonstration of file handle issues with xonsh + redo

Clone this repository onto Ubuntu 18.04

Install `make`.

```
$ make all
```

Produces

```
ubuntu@demo:~/fdcheck$ make all
redo  hello
Traceback (most recent call last):
  File "/home/ubuntu/.local/bin/redo-ifchange", line 11, in <module>
    sys.exit(main())
  File "/home/ubuntu/.local/lib/python2.7/site-packages/redo/cmd_ifchange.py", line 41, in main
    jobserver.setup(0)
  File "/home/ubuntu/.local/lib/python2.7/site-packages/redo/jobserver.py", line 238, in setup
    'prefix your Makefile rule with a "+"')
ValueError: broken --jobserver-auth from make; prefix your Makefile rule with a "+"

```

To run with Make flags removed:

```
$ make flagged
```

Produces

```
ubuntu@demo:~/fdcheck$ make flagged
redo  hello

```
