# GAMES101作业 xmake版本

Windows平台下能均能运行，Linux/MAC未测试

# 快速开始

自行安装自己平台下的C++编译工具链

安装[xmake](https://xmake.io/#/zh-cn/guide/installation)

下载代码

```bash
git clone https://github.com/star-hengxing/GAMES101-xmake.git
```

然后可以进入作业目录测试，比如

```bash
cd src/Assignment1
xmake
xmake run
```

第一次使用会安装第三方库，根据命令行提示操作即可，如果下载包失败请看**FQA**

# 注意事项

* 作业文档在doc目录下
* 程序运行目录均在自己作业目录
* 模型目录放在项目根目录

# FQA

Q: xmake下载包失败怎么办

A: 查看文档[使用远程包 - xmake](https://xmake.io/#/zh-cn/package/remote_package?id=%e8%bf%9c%e7%a8%8b%e5%8c%85%e4%b8%8b%e8%bd%bd%e4%bc%98%e5%8c%96)



Q: 编译失败怎么办

A: 执行`xmake -v` ，查看详细输出信息



Q: 我想用vs写代码怎么办

A: 执行`xmake project -k vsxmake -m "debug,release"` 生成vs工程文件

# 参考

1. [https://github.com/slicol/Games101-Homework-Win](https://github.com/slicol/Games101-Homework-Win)
