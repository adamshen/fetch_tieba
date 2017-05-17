## 贴吧爬虫

### Todo
- 爬取内容
- Timeout以及FormatError处理
- 通过ActiveRecord存入数据库

```
Tieba.new('阿森纳').serialize 

=> 
[{:author=>"l只小灰狼", :tilte=>"【小灰狼】2016-17赛季——联赛第三十四轮补赛", :rep_num=>"54"},
 {:author=>"海参崴", :tilte=>"米堡一个赛季就进了27个球", :rep_num=>"52"},
 {:author=>"易帝骑毅帝", :tilte=>"利物浦最后一轮不是有人滑倒就是有人回传。", :rep_num=>"23"},
 {:author=>"根本岸久西", :tilte=>"作死之挑战厂吧权威", :rep_num=>"36"},
 {:author=>"佩沙云", :tilte=>"温格回应有关科拉西纳兹的消息：目前没什么好说的", :rep_num=>"23"},
 {:author=>"Bear少", :tilte=>"拉维奇洗不白的", :rep_num=>"149"},
 {:author=>"伯恩的路", :tilte=>"不给力的破厂，下赛季黄萨仁集体老迈低迷，却没欧冠资格。", :rep_num=>"10"},
 {:author=>"adspion", :tilte=>"有什么好的减肥方法呀", :rep_num=>"16"},
 {:author=>"爱德华11诺顿", :tilte=>"大家来猜猜这俩还没开的店是卖什么的？", :rep_num=>"10"},
 {:author=>"花布加蕾丝", :tilte=>"温格：桑德兰展现出来的战斗精神是英超所需要的。", :rep_num=>"4"},
 {:author=>"music1man", :tilte=>"吉鲁风骚停球", :rep_num=>"9"},
 {:author=>"corry1998", :tilte=>"我就问问，老哥们上大学的时候一年体重涨多少", :rep_num=>"4"},
 {:author=>"枪手之魂411", :tilte=>"别水了 出大事了 曼狗愿赌服输了", :rep_num=>"25"},
 {:author=>"丁耀扬22", :tilte=>"吉布斯我看的真要吐了，这水平老子真不服也能在阿森纳踢球", :rep_num=>"26"},
 {:author=>"花布加蕾丝", :tilte=>"袁腾飞：我可能是生错地方了，想穿越回宋朝，那里对文人最友善！", :rep_num=>"153"},
 {:author=>"马尔福的眼泪", :tilte=>"震惊？波飞机示好热刺！赞叹白鹿巷勇士们的成绩！", :rep_num=>"20"},
 ...
]
```
