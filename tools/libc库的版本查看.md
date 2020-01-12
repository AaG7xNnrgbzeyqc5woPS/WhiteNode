
# see:
[查看当前系统的glibc版本](https://blog.csdn.net/feisy/article/details/17792093)

查看本机的libc库版本:
1. /lib/libc.so.6   //直接运行libc库
2. ldd  --version   //ldd 是libc库的一部分
3. ls -l /lib/libc.so.6   // 查看输出结果

-------------------------------------------

/lib/arm-linux-gnueabihf/libc.so.6
GNU C Library (Debian GLIBC 2.24-11+deb9u3) stable release version 2.24, by Roland McGrath et al.
Copyright (C) 2016 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.
Compiled by GNU CC version 6.3.0 20170516.
Available extensions:
	crypt add-on version 2.1 by Michael Glad and others
	GNU Libidn by Simon Josefsson
	Native POSIX Threads Library by Ulrich Drepper et al
	BIND-8.2.3-T5B
libc ABIs: UNIQUE
For bug reporting instructions, please see:
<http://www.debian.org/Bugs/>.
----------------------------------------------------------
 为什么这个库可以直接run呢？ 原来在libc的代码中有一点小手脚:

Makerules:586:LDFLAGS-c.so += -e __libc_main 

csu/version.c:71:__libc_main (void) 

void 
__libc_main (void) 
{ 
  __libc_print_version (); 
  _exit (0); 
} 
-----------------------------------
```
ls -l /lib/arm-linux-gnueabihf/libc.so.6 
lrwxrwxrwx 1 root root 12 Jan 14  2018 /lib/arm-linux-gnueabihf/libc.so.6 -> libc-2.24.so
```

