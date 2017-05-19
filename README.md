## 贴吧爬虫

### Todo
- 爬取内容
- Timeout以及FormatError处理

### 用法

```bash
创建数据库

rake create_db

Demo(爬取阿森纳吧前100页)

rake demo
```

### 数据

```ruby
User.all
=>...
 #<User:0x007fa39fc2eb20 id: 1976, name: "威尔谢儿">,
 #<User:0x007fa39fc2e788 id: 1977, name: "东亚冲冲冲">,
 #<User:0x007fa39fc2e4b8 id: 1978, name: "TTdesign29">,
 #<User:0x007fa39fc2e198 id: 1979, name: "兵工厂尛帅">,
 #<User:0x007fa39fc2def0 id: 1980, name: "hbgo1234">,
 #<User:0x007fa39fc2dbd0 id: 1981, name: "你我的怡宝4">,
 #<User:0x007fa39fc2d6a8 id: 1982, name: "weihua852368">,
 #<User:0x007fa39fc2d360 id: 1983, name: "madeinchina77">,
 #<User:0x007fa39fc2d108 id: 1984, name: "枪手_小胖胖">,
 #<User:0x007fa39fc2cc58 id: 1985, name: "M罗伊斯11">,
 #<User:0x007fa39fc2c758 id: 1986, name: "tot3mol">,
 #<User:0x007fa39fc2c488 id: 1987, name: "skillfulyan">,
 #<User:0x007fa39fc2c168 id: 1988, name: "耐久光环嗜血术">,
 #<User:0x007fa39fc2e8a0 id: 1989, name: "划掉的线">,
 #<User:0x007fa39fd4ff18 id: 1990, name: "BeneGod">,
 #<User:0x007fa39fd4fdd8 id: 1991, name: "jnlsjy2100917">]


Topic.all
=>...
 #<Topic:0x007fa39d225540 id: 4960, title: "欧冠四强排行榜", rep_num: 62, user_id: 174>,
 #<Topic:0x007fa39d225400 id: 4961, title: "龟代弟肆虐梦剧场 塞尔塔5球击溃愚笨红魔", rep_num: 0, user_id: 1988>,
 #<Topic:0x007fa39d225270 id: 4962, title: "老哥们，这样的算吧均吗？", rep_num: 9, user_id: 59>,
 #<Topic:0x007fa39d2250e0 id: 4963, title: "眼神有用要中国警察干嘛？！拿刀砍他！！！", rep_num: 4, user_id: 16>,
 #<Topic:0x007fa39d224fa0 id: 4964, title: "切赫：零封给了我们自信", rep_num: 8, user_id: 19>,
 #<Topic:0x007fa39d224e38 id: 4965, title: "不得不说，断联真的是个放下的好办法", rep_num: 2, user_id: 1989>,
 #<Topic:0x007fa39d224cf8 id: 4966, title: "球衣背后写的是球员名字，准没错。。", rep_num: 8, user_id: 68>,
 #<Topic:0x007fa39d224bb8 id: 4967, title: "懂球帝发众筹声援教授", rep_num: 48, user_id: 1990>,
 #<Topic:0x007fa39d224a78 id: 4968, title: "今年其实就缺个B2B，后腰。不然至少是个亚军，看看丢球数太多", rep_num: 0, user_id: 1991>,
 #<Topic:0x007fa39d224938 id: 4969, title: "孟书记：坚决清除工安系统害群之马", rep_num: 0, user_id: 1780>]
```
