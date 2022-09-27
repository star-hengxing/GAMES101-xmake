# GAMES101作业 xmake版本

理论上跨平台，只测试过 Windows，Linux/MAC 未测试

如果第三方库没有预编译版本，Xmake 会手动拉取依赖源码并行编译

# 快速开始

1. 安装 C++ 编译工具链，如 MSVC/Clang/Mingw
2. 安装 C++ 的 构建系统 + 包管理： [Xmake](https://xmake.io/#/zh-cn/guide/installation)
3. 下载所有作业源码

```bash
git clone https://github.com/star-hengxing/GAMES101-xmake.git
```

4. 进入作业目录测试，比如

```bash
cd src/Assignment1
xmake
xmake run
```

第一次使用会安装第三方库，根据命令行提示操作即可，如果下载包失败请看**FQA**

# 注意事项

* 所有作业文档在 doc 目录
* 所有模型在 models 目录
* 每个作业**运行环境**都在自己作业目录下，有需要可以在 xmake.lua 里修改`set_rundir`的路径

# FQA

Q: xmake下载包失败怎么办

A: 查看文档[使用远程包 - xmake](https://xmake.io/#/zh-cn/package/remote_package?id=%e8%bf%9c%e7%a8%8b%e5%8c%85%e4%b8%8b%e8%bd%bd%e4%bc%98%e5%8c%96)



Q: 编译失败怎么办

A: 执行`xmake -v` ，查看详细输出信息



Q: 我想用 vs 写代码怎么办

A: 执行`xmake project -k vsxmake -m "debug,release"` 生成vs工程文件

# 参考

1. [https://github.com/slicol/Games101-Homework-Win](https://github.com/slicol/Games101-Homework-Win)
