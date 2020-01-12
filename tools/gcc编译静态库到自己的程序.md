

[gcc编译静态库到自己的程序 解决在不同linux下因libc版本问题而不能运行](https://blog.csdn.net/snoyfl/article/details/51698798)


我是通过vs2015安装的visualGDB远程连接centos的linux系统作为开发环境的,因为正式服务器中glibc版本为2.12,而开发环境中的glibc版本为2.17,所以当编译好的程序放到正式服中会报版本错误，一种解决方式是把正式服的glibc版本升级到最新版，但因为怕升级会引起其他问题，所以只能通过连接静态库增加程序大小的方式解决。   

1.在linux中用yum下载安装glibc和libstdc++的静态库  
sudo yum install glibc-static libstdc++-static  

2.在编译选项LDFLAGS中添加-static即可正常编译运行  
