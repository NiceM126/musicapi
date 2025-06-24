# 前言
- 做这个的初衷就是[Meting](https://github.com/metowolf/Meting)这个项目不稳定且不能满足自己的需求所以才有的这个项目
- 我的主要用途是构建博客的歌单列表，所以此项目只是以我博客的需求做的接口
- 目前已支持`酷狗、网易、QQ、酷我`音乐

# 如何添加COOKIE以及COOKIE有何作用
- `MusicApi_set_cookie`此方法添加COOKIE
- 如果你有会员的情况下是可以下载或试听会员音乐的(**注：禁止商业用途**)

# 如何使用
1. 下载本项目到本地
  ```shell
  git clone https://github.com/NiceM126/musicapi.git
  ```
2. 安装环境依赖
  ```shell
  pip install -r requirements.txt
  ```
3. 运行项目
  ```shell
  python main.py
  ```
4. docker部署
  ```shell
  # 构建docker镜像
  docker build -t music-api:latest . 
  # 后台运行
  docker run -d --name music-api -p 7878:7878 music-api:latest
  ```

# 请求示例
- **获取歌单列表信息**
- 请求地址：`http://127.0.0.1:7878`
- 路径：`/music/songlist`
- 请求方式：`POST,GET`
- 酷狗音乐示例：`http://127.0.0.1:7878/music/songlist?server=kugou&id=6222311`
- 网易云音乐示例：`http://127.0.0.1:7878/music/songlist?server=wyy&id=5042473474`
- QQ音乐示例：`http://127.0.0.1:7878/music/songlist?server=qqmusic&id=9472269874`
- 酷我音乐示例：`http://127.0.0.1:7878/music/songlist?server=kuwo&id=3563672431`
- 酷我获取推荐歌单列表示例：`http://127.0.0.1:7878/kuwo/random_music_list`

参数名|参数类型|参数描述|参数示例
---|---|---|---
server|string|音乐平台|kugou,wyy,qqmusic,kuwo
id|string|歌单ID|6222311,5042473474,9472269874,3563672431

# 响应示例
```
[
  {
    "title": "侧脸",
    "author": "于果",
    "url": "http://127.0.0.1:7878/qqmusic/003WjRGk1b3FPN",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000001NcyqI2RJisc.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/003WjRGk1b3FPN.lrc",
    "music_id": "003WjRGk1b3FPN"
  },
  {
    "title": "放个大招给你看",
    "author": "永彬Ryan.B",
    "url": "http://127.0.0.1:7878/qqmusic/003SQyoA0efQc5",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000000A2zt73JBL4s.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/003SQyoA0efQc5.lrc",
    "music_id": "003SQyoA0efQc5"
  },
  {
    "title": "归去来兮",
    "author": "花粥",
    "url": "http://127.0.0.1:7878/qqmusic/0001ib0L3sQfNQ",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M0000025mjXL1NPsEe.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/0001ib0L3sQfNQ.lrc",
    "music_id": "0001ib0L3sQfNQ"
  },
  {
    "title": "安和桥",
    "author": "宋冬野",
    "url": "http://127.0.0.1:7878/qqmusic/001fpbwS2TUTjV",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000002VeS6r4L5fLZ.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/001fpbwS2TUTjV.lrc",
    "music_id": "001fpbwS2TUTjV"
  },
  {
    "title": "微微",
    "author": "傅如乔",
    "url": "http://127.0.0.1:7878/qqmusic/000B4ijs4Ufwql",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000003Lr7ct0vUSj3.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/000B4ijs4Ufwql.lrc",
    "music_id": "000B4ijs4Ufwql"
  },
  {
    "title": "故梦",
    "author": "双笙 (陈元汐)",
    "url": "http://127.0.0.1:7878/qqmusic/000xKbLI2QEKE9",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000001Mf4Ic1aNYYK.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/000xKbLI2QEKE9.lrc",
    "music_id": "000xKbLI2QEKE9"
  },
  {
    "title": "苏绣姑娘",
    "author": "新乐尘符/李思雨",
    "url": "http://127.0.0.1:7878/qqmusic/003QPm1q0kzu0c",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M0000012ZMuN1r6P4w.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/003QPm1q0kzu0c.lrc",
    "music_id": "003QPm1q0kzu0c"
  },
  {
    "title": "CEMETERY",
    "author": "AViVA",
    "url": "http://127.0.0.1:7878/qqmusic/002xDC6C1yyS9B",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000002vEmNW4amw8P.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/002xDC6C1yyS9B.lrc",
    "music_id": "002xDC6C1yyS9B"
  },
  {
    "title": "琴师",
    "author": "双笙 (陈元汐)",
    "url": "http://127.0.0.1:7878/qqmusic/0040VTd22jtD4c",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000004YwEra30VjtJ.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/0040VTd22jtD4c.lrc",
    "music_id": "0040VTd22jtD4c"
  },
  {
    "title": "花间酒",
    "author": "傲寒同学",
    "url": "http://127.0.0.1:7878/qqmusic/001z2Wmf2GmvLx",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M0000038mVNq4cAMtW.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/001z2Wmf2GmvLx.lrc",
    "music_id": "001z2Wmf2GmvLx"
  },
  {
    "title": "影子小姐",
    "author": "封茗囧菌",
    "url": "http://127.0.0.1:7878/qqmusic/0014wzyK4Ly2lD",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000004QEiMC2OK9e1.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/0014wzyK4Ly2lD.lrc",
    "music_id": "0014wzyK4Ly2lD"
  },
  {
    "title": "为霜",
    "author": "羽肿",
    "url": "http://127.0.0.1:7878/qqmusic/001fjfM90zA9bm",
    "pic": "https://y.qq.com/music/photo_new/T002R300x300M000003UPaLV1pXHO2.jpg",
    "lrc": "http://127.0.0.1:7878/qqmusic/lrc/001fjfM90zA9bm.lrc",
    "music_id": "001fjfM90zA9bm"
  }
]
```

参数名|参数类型|参数描述
---|---|---
author|string|作者
lrc|string|歌词地址（待解析）
pic|string|歌曲封面
title|string|歌曲名
url|string|歌曲地址（待解析）
music_id|string|音乐ID


# 声明
- **本源码仅限用于学习交流，请勿用于商业用途，非法使用与作者无关**
- 如有侵权请联系我删除
