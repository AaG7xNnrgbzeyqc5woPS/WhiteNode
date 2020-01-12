
# see:
[查看当前系统的glibc版本](https://blog.csdn.net/feisy/article/details/17792093)

```
查看本机的libc库版本:
1. /lib/libc.so.6   //直接运行libc库
2. ldd  --version   //ldd 是libc库的一部分, which comes with glibc package
3. ls -l /lib/libc.so.6   // 查看输出结果
4. apt-cache show libc6  

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
```
-----------------------------------
```
ls -l /lib/arm-linux-gnueabihf/libc.so.6 
lrwxrwxrwx 1 root root 12 Jan 14  2018 /lib/arm-linux-gnueabihf/libc.so.6 -> libc-2.24.so
```

------------------------------------
```
apt-cache show libc6
Package: libc6
Source: glibc
Version: 2.24-11+deb9u3
Architecture: armhf
Maintainer: GNU Libc Maintainers <debian-glibc@lists.debian.org>
Installed-Size: 9016
Depends: libgcc1
Suggests: glibc-doc, debconf | debconf-2.0, libc-l10n, locales
Breaks: hurd (<< 1:0.5.git20140203-1), libtirpc1 (<< 0.2.3), locales (<< 2.24), locales-all (<< 2.24), nscd (<< 2.24)
Multi-Arch: same
Homepage: http://www.gnu.org/software/libc/libc.html
Priority: required
Section: libs
Filename: pool/main/g/glibc/libc6_2.24-11+deb9u3_armhf.deb
Size: 2314794
SHA256: b16f1d285969c0d5358f93efedbadfad47d70e42a7abfeb076f056ce09ec2f01
SHA1: a74957c6616a135c141fa5fce6c2eb45d4210489
MD5sum: 00f2ef0f7193b1d34b21c40ce442d5bc
Description: GNU C Library: Shared libraries
 Contains the standard libraries that are used by nearly all programs on
 the system. This package includes shared versions of the standard C library
 and the standard math library, as well as many others.
Description-md5: fc3001b0b90a1c8e6690b283a619d57f
```
---------------------

# 编译执行如下程序：

```
#include

#include

int main(void)

{

puts(gnu_get_libc_version ());

return 0;

}

$ ./a.out

```
----------------------------------------------------------
```

$strings /lib/arm-linux-gnueabihf/libc.so.6 | grep GLIBC_
GLIBC_2.4
GLIBC_2.5
GLIBC_2.6
GLIBC_2.7
GLIBC_2.8
GLIBC_2.9
GLIBC_2.10
GLIBC_2.11
GLIBC_2.12
GLIBC_2.13
GLIBC_2.14
GLIBC_2.15
GLIBC_2.16
GLIBC_2.17
GLIBC_2.18
GLIBC_2.22
GLIBC_2.23
GLIBC_2.24
GLIBC_PRIVATE

```






