# 唐可可MOD

## 声明

- 应拉拉人朋友要求做的MOD，本人并不是拉拉人，有什么设计的不还原人设的地方本人概不负责。
- 本人代码水平有限，如有BUG还请见谅。
- 图片均为官方设定图抠图或自制。
- 音乐暂不考虑添加。

## MOD介绍

### 领袖：唐可可

- 领袖能力——上海卷王：
    无法获得尤里卡[^1]。每个回合开始时将会获得等同于文明总文化值产出30%的科技值，获得科技将以游戏内信息的方式提示在右上部分[^2]。建造School Idol Project、学院和工业区时+100%生产力。

[^1]:如果使用了一些修改了默认尤里卡加成数值的MOD可能会出现尤里卡提供了少量科技值的情况。
[^2]:这可能会让实际研究完一项科技使用的回合数小于你在科技数面板中看到的预计回合数。

- 领袖能力——八达岭：
    所有陆地战斗单位-5战斗力，海军战斗单位-1移动力。

- 领袖能力——声音很好听的同学：
    回合开始时，所有在拥有音乐巨作的城市中的单位获得+2移动力，战斗单位额外获得+10战斗力。[^3]

[^3]:该功能通过Lua脚本实现，在多人联机时有可能会因为网络或电脑运算速度差异的问题导致非主机玩家的游戏每回合都会出现数据同步重新加载的问题，但不影响能力的正常生效。

### 文明：Liella!

- 文明能力——Liella!：每当解锁新时代第1项市政时，自动获得1张Liella!唱片[^4]。拥有摇滚乐队的强力替代：学园偶像，可更早解锁，拥有更低的价格且可以直接训练，能够选择全部升级而非随机，但是在处于和平的城市演出时产出的旅游业绩会降低。学园偶像解散时，自动获得1张Liella!唱片。

[^4]:“Liella!唱片”是本模组新增加的伟人类型“Liella!”分类下的伟人个体，每个“Liella!唱片”个体都能产生一个音乐巨作，提供4点文化和4点旅游业绩（少量唱片提供的加成翻倍）。该类伟人正常只能通过Liella!文明的能力或特色单位：学园偶像的能力获取。但是如果其他玩家拥有足够的金币或信仰值也能够强行购买！

### Liella!文明特色区域——School Idol Project：

- Liella!特色区域，代替剧院广场区域，是城市中的学园偶像聚集场所。除剧院广场相邻加成外，相邻市中心，海岸与湖泊单元格，河流时获得大量相邻加成。提供+1宜居度，相邻单元格魅力值+2。建成后自动获得3个音乐巨作槽位，填满后自动获得主题化。

### Liella!文明特色单位——学园偶像：

- 替代摇滚乐队，解锁启蒙运动市政后即可训练和使用信仰值购买，拥有更低的价格。能够选择全部升级而非随机，但是在处于和平的城市演出时产出的旅游业绩会降低。解散时将产生1张Liella!唱片。

### AI倾向和特色议程

- 产出倾向：文化
- 区域倾向：School Idol Project、学院、工业区
- 建筑倾向：古罗马剧场、艺术博物馆、广播中心
- 奇观倾向：巨石阵、莫斯科大剧院、悉尼歌剧院、匈牙利议会大厦、艾尔米塔什博物馆、百老汇
- 科技树倾向：灌溉、写作、学徒、卫生设备、无线电、飞行
- 市政树倾向：帝国初期、政治哲学、戏剧与诗歌、启蒙运动、歌剧和芭蕾、文化遗产、自然历史、大众媒体
- 单位倾向：学园偶像
- 伟人和巨作倾向：大音乐家点数、大预言家点数、音乐巨作
- 特色议程——一起做学院偶像！：专注于文化值产出。喜欢同样专注于文化且拥有很多伟人的文明。

### 其他

- 添加了文明出生地起始关联可可豆资源[^5]

[^5]:但是似乎并不是每一张地图会起作用。猜测可能是因为有些图可可资源太少或不够集中导致。
