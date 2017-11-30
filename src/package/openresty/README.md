# OpenResty

## Centos安装

- OpenResty

```
你可以在你的 CentOS 系统中添加 openresty 仓库，这样就可以便于未来安装或更新我们的软件包（通过 yum update 命令）。运行下面的命令就可以添加我们的仓库：

    sudo yum install yum-utils
    sudo yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
然后就可以像下面这样安装软件包，比如 openresty：

    sudo yum install openresty
如果你想安装命令行工具 resty，那么可以像下面这样安装 openresty-resty 包：

    sudo yum install openresty-resty
命令行工具 opm 在 openresty-opm 包里，而 restydoc 工具在 openresty-doc 包里头。

列出所有 openresty 仓库里头的软件包：

    sudo yum --disablerepo="*" --enablerepo="openresty" list available
```

- luarocks 包管理器
> 指定好LuaJIT或者lua编译器地址，使得其能找到

```
## 下载后解压 http://luarocks.github.io/luarocks/releases/luarocks-2.4.3.tar.gz

cd ./luarocks-2.4.3

./configure \
  --lua-suffix=jit \
  --with-lua=/usr/local/openresty/luajit \
  --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.1

make build && make install
```