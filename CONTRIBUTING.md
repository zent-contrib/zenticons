## 修改 Sketch 文件

Sketch 文件里每个图标对应一个 Slice，除了图标之外不能有其他 Slice。

## 开发

`zenticons` 的大部分文件都是工具生成的，`OS X` 用户可以通过 `scripts/install-dependencies.sh` 来安装以下所有依赖。

非 `OS X` 用户需要自己安装这些依赖：

* jq: `brew install jq`, [其他安装方式](https://stedolan.github.io/jq/download/)
* ttfautohint: `brew install ttfautohint`, [其他安装方式](https://www.freetype.org/ttfautohint/#download)
* fontforge: `brew install fontforge`, 需要python扩展。[其他安装方式](http://fontforge.github.io/en-US/downloads/)
* sketchtool: https://www.sketchapp.com/tool/

工具生成的文件包括：

- `assets/_zenticon-codes.scss`
- `assets/_fontface.scss`
- `assets/LICENSE.txt`
- `lib/codes.json`

**禁止直接修改这些文件，发布时会被覆盖！**

如果生成的 icon font 字符和 sketch 文件有差异

-  给对应字符加上 `correct_contour_direction: true`, 这个方法只能解决部分图标填充不正确的问题.
-  找 sketch 文件的作者修改图标, 可以用不同的画图方式解决.

## 生成过程

所有脚本都在 `scripts` 目录下，都是 `shell` 脚本，主要步骤如下:

- 从sketch文件中提取所有图标的svg
- 用 `iconfount` 从svg文件生成字体文件
- 上传字体文件到CDN，并生成对应url的样式文件