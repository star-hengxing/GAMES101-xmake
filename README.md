# GAMES101作业 xmake 版本

理论上跨平台，只测试过 Windows，Linux/MAC 未测试

如果第三方库没有预编译版本，Xmake 会手动拉取依赖源码并行编译

# 快速开始

1. 安装 C++ 编译工具链，如 MSVC(visual studio)
2. 安装 C++ 的 构建系统 + 包管理： [Xmake](https://xmake.io/#/zh-cn/guide/installation)
3. 下载所有作业源码

```bash
git clone https://github.com/star-hengxing/GAMES101-xmake.git
```

4. 进入作业目录测试，比如

```bash
cd src/Assignment1
xmake -y
xmake run
```

如果下载包失败请看[FQA](#fqa)

---

假如你是 mac 用户，可能需要以下步骤

安装包管理[Homebrew](https://brew.sh/)，然后安装：

```bash
brew install gcc xmake eigen opencv
```

安装成功后，回到上面第三步

# 注意事项

* 所有作业文档在 doc 目录
* 所有模型在 models 目录
* 每个作业**运行环境**都在自己作业目录下，有需要可以在 xmake.lua 里修改`set_rundir`的路径

# IDE 支持

## vscode

安装插件`clangd`和`codelldb`.

在作业目录创建以下文件`.vscode/settings.json`，然后写入
```json
{
    "clangd.arguments": [
        "--compile-commands-dir=.vscode",
    ],

    "xmake.debugConfigType": "codelldb",
}
```

## visual studio

```bash
xmake project -k vsxmake -m "debug,release"
```

更多请查看 xmake 文档 -> https://xmake.io/#/zh-cn/plugin/more_plugins

# 学习资料

- [GAMES101 作业问题整理](https://zhuanlan.zhihu.com/p/375391720)
- [《GAMES101》作业框架问题详解](https://zhuanlan.zhihu.com/p/509902950)
- [一篇搞定！GAMES101现代计算机图形学入门（全）](https://zhuanlan.zhihu.com/p/394932478)
- [计算机图形学系列笔记](https://www.zhihu.com/column/c_1249465121615204352)
- [【个人笔记】速通计算机图形学基础](https://zhuanlan.zhihu.com/p/539347633)
- [图形学 - 关于透视矫正插值那些事](https://zhuanlan.zhihu.com/p/403259571)
- [图形学基础拾遗 - 重新认识剪不断理还乱的矩阵变换](https://zhuanlan.zhihu.com/p/223033896)

# FQA

Q: xmake 下载包失败怎么办  
A: 查看文档[使用远程包 - xmake](https://xmake.io/#/zh-cn/package/remote_package?id=%e8%bf%9c%e7%a8%8b%e5%8c%85%e4%b8%8b%e8%bd%bd%e4%bc%98%e5%8c%96)

Q: opencv 没有下载预编译版本怎么办  
A: 可能需要更新你的 msvc 版本

Q: 编译失败怎么办  
A: 执行`xmake -vD` ，查看详细输出信息

Q: 怎么学习 Xmake  
A: [Xmake 新手教程](https://zhuanlan.zhihu.com/p/640701847)

# 鸣谢

1. [https://github.com/slicol/Games101-Homework-Win](https://github.com/slicol/Games101-Homework-Win)
2. [在M1平台搭建GAMES101开发环境（2022.2）](https://zhuanlan.zhihu.com/p/472114465)
