原oz版本: Whitecoin version v2.5.2.0 

分别使用 readelf whitecoind | gred "Shared"  
   ldd whitecoind  
   ldd -v whitecoind   
 三个命令生成的文件   
 
```
$cat whitecoind.shared_library.txt 
 0x00000001 (NEEDED)                     Shared library: [libboost_system.so.1.62.0]
 0x00000001 (NEEDED)                     Shared library: [libboost_filesystem.so.1.62.0]
 0x00000001 (NEEDED)                     Shared library: [libboost_program_options.so.1.62.0]
 0x00000001 (NEEDED)                     Shared library: [libboost_thread.so.1.62.0]
 0x00000001 (NEEDED)                     Shared library: [libdb_cxx-5.3.so]
 0x00000001 (NEEDED)                     Shared library: [libssl.so.1.0.2]
 0x00000001 (NEEDED)                     Shared library: [libcrypto.so.1.0.2]
 0x00000001 (NEEDED)                     Shared library: [libminiupnpc.so.10]
 0x00000001 (NEEDED)                     Shared library: [libz.so.1]
 0x00000001 (NEEDED)                     Shared library: [libdl.so.2]
 0x00000001 (NEEDED)                     Shared library: [libpthread.so.0]
 0x00000001 (NEEDED)                     Shared library: [libstdc++.so.6]
 0x00000001 (NEEDED)                     Shared library: [libm.so.6]
 0x00000001 (NEEDED)                     Shared library: [libgcc_s.so.1]
 0x00000001 (NEEDED)                     Shared library: [libc.so.6]
 0x00000001 (NEEDED)                     Shared library: [ld-linux-armhf.so.3]
 
 
$ cat whitecoind.shared_library2.txt 
	linux-vdso.so.1 (0x7ef80000)
	/usr/lib/arm-linux-gnueabihf/libarmmem.so (0x76eea000)
	libboost_system.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_system.so.1.62.0 (0x76ed7000)
	libboost_filesystem.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so.1.62.0 (0x76eb1000)
	libboost_program_options.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_program_options.so.1.62.0 (0x76e33000)
	libboost_thread.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_thread.so.1.62.0 (0x76e01000)
	libdb_cxx-5.3.so => /usr/lib/arm-linux-gnueabihf/libdb_cxx-5.3.so (0x76c5d000)
	libssl.so.1.0.2 => /usr/lib/arm-linux-gnueabihf/libssl.so.1.0.2 (0x76bfe000)
	libcrypto.so.1.0.2 => /usr/lib/arm-linux-gnueabihf/libcrypto.so.1.0.2 (0x76a7d000)
	libminiupnpc.so.10 => /usr/lib/arm-linux-gnueabihf/libminiupnpc.so.10 (0x76a63000)
	libz.so.1 => /lib/arm-linux-gnueabihf/libz.so.1 (0x76a3c000)
	libdl.so.2 => /lib/arm-linux-gnueabihf/libdl.so.2 (0x76a29000)
	libpthread.so.0 => /lib/arm-linux-gnueabihf/libpthread.so.0 (0x76a00000)
	libstdc++.so.6 => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6 (0x768b6000)
	libm.so.6 => /lib/arm-linux-gnueabihf/libm.so.6 (0x76837000)
	libgcc_s.so.1 => /lib/arm-linux-gnueabihf/libgcc_s.so.1 (0x7680a000)
	libc.so.6 => /lib/arm-linux-gnueabihf/libc.so.6 (0x766cb000)
	/lib/ld-linux-armhf.so.3 (0x76f00000)
	librt.so.1 => /lib/arm-linux-gnueabihf/librt.so.1 (0x766b4000)

$ cat whitecoind.shared_library3.txt 
	linux-vdso.so.1 (0x7ef9c000)
	/usr/lib/arm-linux-gnueabihf/libarmmem.so (0x76f1e000)
	libboost_system.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_system.so.1.62.0 (0x76f0b000)
	libboost_filesystem.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so.1.62.0 (0x76ee5000)
	libboost_program_options.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_program_options.so.1.62.0 (0x76e67000)
	libboost_thread.so.1.62.0 => /usr/lib/arm-linux-gnueabihf/libboost_thread.so.1.62.0 (0x76e35000)
	libdb_cxx-5.3.so => /usr/lib/arm-linux-gnueabihf/libdb_cxx-5.3.so (0x76c91000)
	libssl.so.1.0.2 => /usr/lib/arm-linux-gnueabihf/libssl.so.1.0.2 (0x76c32000)
	libcrypto.so.1.0.2 => /usr/lib/arm-linux-gnueabihf/libcrypto.so.1.0.2 (0x76ab1000)
	libminiupnpc.so.10 => /usr/lib/arm-linux-gnueabihf/libminiupnpc.so.10 (0x76a97000)
	libz.so.1 => /lib/arm-linux-gnueabihf/libz.so.1 (0x76a70000)
	libdl.so.2 => /lib/arm-linux-gnueabihf/libdl.so.2 (0x76a5d000)
	libpthread.so.0 => /lib/arm-linux-gnueabihf/libpthread.so.0 (0x76a34000)
	libstdc++.so.6 => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6 (0x768ea000)
	libm.so.6 => /lib/arm-linux-gnueabihf/libm.so.6 (0x7686b000)
	libgcc_s.so.1 => /lib/arm-linux-gnueabihf/libgcc_s.so.1 (0x7683e000)
	libc.so.6 => /lib/arm-linux-gnueabihf/libc.so.6 (0x766ff000)
	/lib/ld-linux-armhf.so.3 (0x76f34000)
	librt.so.1 => /lib/arm-linux-gnueabihf/librt.so.1 (0x766e8000)

	Version information:
	./whitecoind:
		libm.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libm.so.6
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libssl.so.1.0.2 (OPENSSL_1.0.2d) => /usr/lib/arm-linux-gnueabihf/libssl.so.1.0.2
		libgcc_s.so.1 (GCC_3.5) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		libcrypto.so.1.0.2 (OPENSSL_1.0.2d) => /usr/lib/arm-linux-gnueabihf/libcrypto.so.1.0.2
		libstdc++.so.6 (GLIBCXX_3.4.20) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.8) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.11) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_ARM_1.3.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.15) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.21) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libc.so.6 (GLIBC_2.15) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.9) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.8) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.7) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
		libpthread.so.0 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libpthread.so.0
	/usr/lib/arm-linux-gnueabihf/libarmmem.so:
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/usr/lib/arm-linux-gnueabihf/libboost_system.so.1.62.0:
		libgcc_s.so.1 (GCC_3.5) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libstdc++.so.6 (GLIBCXX_3.4) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.21) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_ARM_1.3.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
	/usr/lib/arm-linux-gnueabihf/libboost_filesystem.so.1.62.0:
		libgcc_s.so.1 (GCC_3.5) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		libpthread.so.0 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libpthread.so.0
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libstdc++.so.6 (GLIBCXX_3.4.20) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.8) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.21) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_ARM_1.3.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/usr/lib/arm-linux-gnueabihf/libboost_program_options.so.1.62.0:
		libgcc_s.so.1 (GCC_3.5) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
		libstdc++.so.6 (GLIBCXX_3.4.20) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.11) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_ARM_1.3.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.21) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
	/usr/lib/arm-linux-gnueabihf/libboost_thread.so.1.62.0:
		librt.so.1 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/librt.so.1
		libgcc_s.so.1 (GCC_3.5) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
		libstdc++.so.6 (GLIBCXX_3.4.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.11) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4.21) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_ARM_1.3.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libpthread.so.0 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libpthread.so.0
	/usr/lib/arm-linux-gnueabihf/libdb_cxx-5.3.so:
		libgcc_s.so.1 (GCC_3.5) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_2.15) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.17) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
		libstdc++.so.6 (GLIBCXX_3.4.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3.9) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_1.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (CXXABI_ARM_1.3.3) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libstdc++.so.6 (GLIBCXX_3.4) => /usr/lib/arm-linux-gnueabihf/libstdc++.so.6
		libpthread.so.0 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libpthread.so.0
	/usr/lib/arm-linux-gnueabihf/libssl.so.1.0.2:
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
		libcrypto.so.1.0.2 (OPENSSL_1.0.2d) => /usr/lib/arm-linux-gnueabihf/libcrypto.so.1.0.2
	/usr/lib/arm-linux-gnueabihf/libcrypto.so.1.0.2:
		libdl.so.2 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libdl.so.2
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_2.7) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/usr/lib/arm-linux-gnueabihf/libminiupnpc.so.10:
		libc.so.6 (GLIBC_2.7) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.15) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/lib/arm-linux-gnueabihf/libz.so.1:
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/lib/arm-linux-gnueabihf/libdl.so.2:
		ld-linux-armhf.so.3 (GLIBC_PRIVATE) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_PRIVATE) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/lib/arm-linux-gnueabihf/libpthread.so.0:
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		ld-linux-armhf.so.3 (GLIBC_PRIVATE) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_PRIVATE) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/usr/lib/arm-linux-gnueabihf/libstdc++.so.6:
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		libgcc_s.so.1 (GCC_3.3) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		libgcc_s.so.1 (GCC_3.5) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		libgcc_s.so.1 (GCC_3.0) => /lib/arm-linux-gnueabihf/libgcc_s.so.1
		libm.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libm.so.6
		libc.so.6 (GLIBC_2.18) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.17) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/lib/arm-linux-gnueabihf/libm.so.6:
		libc.so.6 (GLIBC_PRIVATE) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/lib/arm-linux-gnueabihf/libgcc_s.so.1:
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
	/lib/arm-linux-gnueabihf/libc.so.6:
		ld-linux-armhf.so.3 (GLIBC_2.4) => /lib/ld-linux-armhf.so.3
		ld-linux-armhf.so.3 (GLIBC_PRIVATE) => /lib/ld-linux-armhf.so.3
	/lib/arm-linux-gnueabihf/librt.so.1:
		ld-linux-armhf.so.3 (GLIBC_PRIVATE) => /lib/ld-linux-armhf.so.3
		libc.so.6 (GLIBC_PRIVATE) => /lib/arm-linux-gnueabihf/libc.so.6
		libc.so.6 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libc.so.6
		libpthread.so.0 (GLIBC_PRIVATE) => /lib/arm-linux-gnueabihf/libpthread.so.0
		libpthread.so.0 (GLIBC_2.4) => /lib/arm-linux-gnueabihf/libpthread.so.0
[john@john-pc solib]$ 

```
