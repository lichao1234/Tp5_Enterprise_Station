/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - yongheganggu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yongheganggu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yongheganggu`;

/*Table structure for table `bk_admin` */

DROP TABLE IF EXISTS `bk_admin`;

CREATE TABLE `bk_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `name` varchar(30) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `bk_admin` */

insert  into `bk_admin`(`id`,`name`,`password`) values (1,'admin','0192023a7bbd73250516f069df18b500'),(28,'admin000','e10adc3949ba59abbe56e057f20f883e'),(29,'admin123','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `bk_article` */

DROP TABLE IF EXISTS `bk_article`;

CREATE TABLE `bk_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `thumb` varchar(160) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击数',
  `zan` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `rec` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `bk_article` */

insert  into `bk_article`(`id`,`title`,`keywords`,`desc`,`author`,`thumb`,`content`,`click`,`zan`,`rec`,`time`,`cateid`) values (1,'奥芝士抹茶','奥芝士抹茶','Matcha cheese','奥芝士抹茶','/uploads/20180412\\9882b110872b85e108501ae1feb30e51.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523499048.jpg\" title=\"1523499048.jpg\" alt=\"2016081309313635.jpg\"/></p>',0,0,1,1523499054,3),(2,'抹茶奶盖','抹茶奶盖','Matcha milk cap','抹茶奶盖','/uploads/20180412\\25b1ba29526600da7661abe22e16fed5.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523499107.jpg\" title=\"1523499107.jpg\" alt=\"2016081309321770.jpg\"/></p>',1,0,1,1523499113,3),(3,'芝士高山绿茶','芝士高山绿茶','Cheesecake green tea','芝士高山绿茶','/uploads/20180412\\9d0a0dc19ba8e70fd081474324a4b2e8.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523499188.jpg\" title=\"1523499188.jpg\" alt=\"2016081309324964.jpg\"/></p>',3,0,1,1523499192,3),(4,'芝士金凤茶王','芝士金凤茶王','King cheese','芝士金凤茶王','/uploads/20180412\\e6b91ee06cb6bfa65448b0f8132df583.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523499223.jpg\" title=\"1523499223.jpg\" alt=\"2016081309331677.jpg\"/></p>',3,0,1,1523499227,3),(5,'heekcaa喜茶是怎样一跃而成从街边小店到“网红店” ，并获得风头？ ','喜茶官网','喜茶官网','喜茶官网','','<p>喜茶的火爆不言而喻，以喜茶为代表的“新茶饮”品牌，代表着消费升级趋势，与低端粗放的饮品店相比，具有原料好、价格高、空间体验好的特点，不仅获得了资本青睐，喜茶招商加盟的关注度也不断“升温”。这家发端于三线城市江门的茶饮店，引领了新式茶饮的风潮，创造了茶饮业销量奇迹的品牌，\r\n 背后的成长逻辑到底是什么？还会一直火下去吗？</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523500002.jpg\" alt=\"\"/></p><p><strong>1.4年沉淀</strong></p><p>最初，喜茶在三线城市的走红，其实不是靠营销推广，而是源于消费者对产品的认可。此后多年，聂云宸不断搜索、研究消费者评价，对配方进行调整，后来终于研发出了让大多数消费者称赞的“芝士茗茶”系列。</p><p>高品质、真材实料的芝士奶盖，较市场上饮品口感更佳、更健康；同时，芝士奶盖的醇香抑制了茶的苦涩、衬托了茶的回甘，口感独特、惊艳，很快受到了消费者的广泛认可。仅凭消费者的口碑传播，4年间将<a href=\"http://www.jinyishun.net\">喜茶加盟</a>店及直营店从江门走到中山、佛山、惠州、广州、深圳等，后来获得风投以后，开拓了北京、上海等一线城市。</p><p><strong>2.坚持做好“茶”</strong></p><p>品控的源头在于原料，因此控制上游也有助于保证标准化的产品质量。喜茶坚持产品自主研发，金凤、四季春、嫣红、绿妍、韵香……这些基底茶原本在市场上并不存在，喜茶从消费者需求角度出发，选择具备优质条件的原产地和良好工艺的上游供应商合作，耗费2-3年时间定制生产而成，从土壤到口味均为定制。喜茶在配方研发和供应链方面的投入，形成了较高的竞争壁垒，使得其产品不易被模仿和超越。</p><p><strong>3.打造喜“茶”的品牌文化</strong></p><p>喜茶不把自己定义为一家卖饮料的品牌，它的重心在于茶本身。不管是产品组合、品牌文化，还是背后的成本结构，都是基于茶来考虑。所有的产品都是以茶为核心，考究茶叶品种的选择和命名，将茶的真味传递给消费者。喜茶有三大系列饮品，但无论是芝士茗茶、满杯水果茶，抑或是季节限定水果茶，最重要的都是基底茶，所有的搭配都是为了衬托茶，让年轻人在接触到饮品的时候，爱上茶。</p><p>以现代方式诠释传统茶文化：喜茶从中国传统茶文化中提炼了“灵感与禅意”，作为喜茶品牌理念的一部分，无论产品、空间体验、宣传、文案，甚至是LOGO、品牌标语都在诠释这一品牌理念。</p><p>从消费者需求出发，用心做好一杯茶，或许就是喜茶最纯粹的愿望。</p><p><strong>4.吸引新消费群体</strong></p><p>中国年轻消费者已成为主流消费群体，消费市场约65%的消费增量，将由80、90以及00后贡献。</p><p>由于生活背景和成长环境的不同，新一代年轻消费者乐于体验新鲜事物、追求品质和个性，许多新茶饮品牌注重打造高颜值产品、社交化“第三空间”，可迅速吸引年轻人的目光。</p><p>但更大的难题，往往是如何提高品牌忠诚度、吸引年轻消费者持续消费。</p><p>喜茶的思路是，不仅要勤练内功、做好产品，还要为品牌注入理念和活力，让消费者与品牌产生情感共鸣，从喜爱的产品过渡到喜爱的品牌。</p><p><strong>5.用心的交互方式</strong></p><p>通过“用心”的交互方式，喜茶让喝茶变成一件有趣的事情，不仅激发了年轻消费者对喝茶的兴趣，还能在情感上引发他们的共鸣。</p><p>比如LOGO的原型，本是一幅告知消费者正确喝芝士奶盖茶的“姿势”的插画，后来不断简化成现在的LOGO，寥寥几笔，提炼的是人的共性——圆圆的脑袋带着鼻子眼睛，没有发型、表情、肤色、国籍，甚至没有男女之分。</p><p>平时的小互动，还是在新品亮相、跨界合作、进入新城市等重要时刻，喜茶都会根据不同主题，从自媒体内容到会员卡、杯套、外带袋等，创作出有趣的插画。时而走幽默路线、时而走小清新路线的插画， 使得内容更具传播力和感染力、品牌形象更富有亲切感和个性。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523500003.jpg\" alt=\"\"/></p><p><strong>6.粉丝互动</strong></p><p>喜茶热衷联名合作，其跨界合作伙伴多为当下年轻群体认可度较高的品牌。从动漫、杂志、网站，到快消品，行业跨度大，合作形式也不断刷新人们的想象：各种有趣的跨界杯套、推限定款周边、或在市集中玩快闪，甚至制造一场头脑风暴、逃班计划，只要与本身品牌能擦出火花的合作伙伴，无所限制。</p><p>借助与粉丝号召力强且“气质相投”的品牌进行联名合作，喜茶逐渐将自己打造成一个“潮牌”，在年轻群体中的曝光度不断提高，粉丝群体也不断扩大；带来源源不断的限定新款，持续吸引喜欢追赶潮流的尝鲜族。</p><p><strong>7.线上线下</strong></p><p>喜茶将经营用户的行为从线下贯穿到线上，即时反馈消费者需求，满足了年轻人“快”节奏的生活方式。线下实体店，是购买、消费、体验的场所；线上，则具有进行积分消费、反馈互动、资讯传播等功能，未来还有丰富的想象空间。</p><p>通过创造新话题和新内容，喜茶将自己打造成潮流先锋，演绎出年轻化的茶文化，让年轻人将喝茶视为潮流生活方式。</p><p><strong>8.可持续发展的底蕴</strong></p><p>许多新茶饮品牌都提到对标星巴克、做“茶饮界的星巴克”，但喜茶想做的却是“中国的喜茶”。聂云宸曾表示，喜茶的愿景是“以传统文化和茶的底蕴为基础，将中国茶、将年轻化的茶文化带向世界”。</p><p>马云说：“我不喜欢咖啡，但我喜欢星巴克。”也许星巴克的咖啡不是全世界最好喝的，但巴克仍凭借着对咖啡文化的深刻理解和独到演绎，走进了世界各地消费者的内心。</p><p>喜茶之所以能够在激烈的竞争中存活、并逐步发展壮大，关键点就在于品牌内涵。基于中国传统茶文化提炼的品牌文化、空间调性、设计风格，具有直击人心的力量，激发了消费者对中国茶、中国传统文化的情感共鸣。</p><p>喜茶不断修炼内功，深耕供应链，立志做出能够代表中国茶饮的民族品牌走向世界，是这种格局和眼界使得喜茶能够脱颖而出。</p><p>2018年，喜茶依旧会不断的火爆下去，同时喜茶加盟也在不断增加开放区域，期待下一次在你的城市与你相见！</p><p><br/></p>',101,0,1,1523500012,2),(6,'如何看待喜茶排队神店背后的争议与隐忧 ','喜茶官网','喜茶官网','喜茶官网','','<p>导读：从目前每开一家店都排队的情况看来，喜茶创造的排队风潮经常被视为成功的象征。然而，作为经营者，聂云宸从排队中看到的却是隐忧。<br/><br/>面对喜茶上海首店的火爆，聂云宸颇为冷静，认为正因它是首店才会如此火爆，并十分明确地说：“我们的目标不是开这种排队好几个小时的店，而是希望消费者可以比较快比较方便地随处买到产品。希望主动把排队时间大大降低。”<br/><br/>排队数小时的情况也引发了一些质疑。<br/><br/>首先消费者在长时间排队后会将产品预期提到很高，而过高的期望往往带来失望。这也是聂云宸所担心的问题，为了对付黄牛，也为了减少排队时间，他们采取了每人限购3杯的政策，上海首店的排队时间因此缩短为2-3小时。<br/><br/>排队其实是聂云宸非常讨厌出现的情况，所谓“网红店”或“排队神店”把稀松平常的事情变成了一种朝拜，消费者的辛苦显然不是他的目标。他想要达到的状态是，喜茶作为很日常化的东西，把茶带给年轻人。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523500101.jpg\" alt=\"\"/></p><p><br/>而刷爆社交网络的排队盛况，也带来了“饥饿营销”和有关工作效率的质疑。<br/><br/>“饥饿营销怎么会把生意做好呢?做好的根本是底层产品，只靠噱头可没法做。”对此，聂云宸反问道。至于效率，喜茶上海的店一天产出近4000杯饮料的实际数据恐怕是最好的证明。<br/><br/>体现在消费者一端，因长期排队提升的期待值确实给喜茶带来了一定的差评。聂云宸每天都会看所有店的大众点评，并要求工作人员回复每一条差评，道歉、沟通、解决问题。“消费者的投诉是非常重要的资源，因为他们才最接近产品的人，比任何店长或经理都更了解产品。”<br/><br/>最终，解决排队问题的根本做法还是加快新店的开设速度。<br/><br/><strong>渐受追捧的茶行业：是风口还是趋势？以及它的前路</strong><br/><br/>在喜茶获得1亿元融资的同时，与茶有关的消费行业正在成为资本追逐的“新贵”，部分品牌已经获得了资本青睐，这个趋势在2016年引人注目。<br/><br/>同样定位为新式茶饮的因味茶，获得了刘强东5亿人元融资；抹茶食品品牌“关茶”在去年8月已获300万元天使投资，而在近日又完成了千万级人民币 Pre A 轮融资，资方峰瑞资本和李康林在这一轮都进行了跟投。<br/><br/>其背后的逻辑，从喜茶便可见一斑。顾客愿意花数个小时来排队购买喜茶，则证明真的是冲着产品本身的吸引力，而根据我们的判断，靠产品去吸引顾客比以社交空间的概念吸引顾客在商业上显然更赚钱。<br/><br/>原因很简单。与每天翻牌率至多5-8次的餐饮相比，喜茶100平米左右的店，一个月的销售额就可以和数百平米的餐厅相媲美。在消费时间方面，不同于餐饮或母婴销售，只集中于特定时间，顾客对茶饮的需求在一天中可以从早上持续到夜晚。此外，同样面对年轻人和白领阶层，茶饮和咖啡相比，前者更适合中国人的口味，在投资人看来，发展潜力更大。<br/><br/>因此，喜茶成为黑马获得巨额融资，可以说是新趋势中的必然。</p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180412/1523500102.jpg\" alt=\"\"/></p><p><br/>上海店的火爆，让喜茶在更大范围为人所知。与之相伴的是更多投资人主动伸出的橄榄枝，但聂云宸对此却十分冷静。<br/><br/>“最初投资人看中的是我们的团队，而不是所谓的风口。”尽管外界不少声音在讲茶饮是消费升级的风口，聂云宸却从不会提及“风口”这个概念，对他而言，茶饮是一个实打实客观存在的需求，不需要风口把它吹起来，也不是只要抓住机会就可以成功，“关键还是消费者喜欢”，他的初心未变。<br/><br/>投资人谈及茶行业时，同样不愿提及“风口”。在黄海看来，消费领域同互联网领域区别很大，互联网领域的风口是有流量窗口的，而在消费领域窗口概念相对弱化，品牌或店面的成长，都需要时间，更需要比拼管理、产品和长期竞争的内功。<br/><br/>“消费领域真的不是风口，它应该是踏踏实实一步一步走的东西。从这个角度出发，炒风口是不成立的，茶应该是三五年的趋势，而不是某几个月的一个风口。”黄海向零售老板内参分析道，消费创业变化的不在于模式，而在产品，升级产品去满足新的需求才是前路。<br/><br/>这与聂云宸的做法不谋而合。但即使一直在升级产品，他最大的忧虑仍在于此。“很多事情没法突破做到更好是一路上最大的困难。虽然没有明显的失败，但你知道自己的东西不够好，却又找不到方向去做到更好。”他对零售老板内参(微信ID:lslb168)坦言，“要么是产品，要么是门店，要么是管理，当找不到方向去做到更好时，会很有挫败感。”<br/><br/>发展速度也是当务之急。市场处于早期阶段，还很巨大，聂云宸也开始加速跑马圈地，毕竟他想做的，是引领茶饮的潮流，乃至颠覆行业。而现在之于喜茶而言，正是从潮流过渡到日常消费，让消费者体会到背后文化底蕴的关键时刻。<br/><br/>尽管喜茶风头正盛，但聂云宸的危机感和担忧并非多余。在黄海看来，茶饮行业本身存在的风险也很明显。<br/><br/>茶饮的业态供应链很简单，供应链的壁垒比较低，成本不高，配方简单，原料容易获得，整体门槛偏低。在这样现状下，一个品牌最大的问题是，一旦火起来就会有很多模仿者参与竞争。<br/><br/>至于在长期竞争中谁能脱颖而出，比的则是内功，包括产品、精细化管理、运营等长期的东西。喜茶受到的挑战，恐怕会越来越多，众多入局者要想从厮杀中胜出，要走的路还很长。</p><p><br/></p>',138,0,1,1523500103,2),(7,'探寻喜茶最好喝的几款奶茶及其价格！ ','喜茶官网','喜茶官网','喜茶官网','','<p style=\"text-indent: 2em;\">相信大家已经看过诸多关于「喜茶」的前世今生，诸如：2012 \r\n年喜茶（HEYTEA）起源于广东江门一条名叫江边里的小巷， 原名皇茶 \r\nroyaltea（为了与层出不穷的山寨品牌区分开来，故全面升级为注册品牌喜茶 HEYTEA）。这些事情大家都知道，我们就不多说了。</p><p style=\"text-indent: 2em;\">今天，我们在heekcaa喜茶的产品中在选择了芝士茗茶系列、超级杯水果茶系列、低脂咸奶霜茗茶系列、当季草莓限定、传统奶茶和纯茶系列选了整整 16 杯，确保尝到每种茶，为大家整理出这份测评。</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_4483.jpg\" alt=\"喜茶菜单\"/></p><p style=\"text-indent: 2em;\">看过这么一句话：</p><p style=\"text-indent: 2em;\">如果说肉松是传统点心走向网红的命门，那么掌握了芝士就仿佛打通了网红款的任督二脉。</p><p style=\"text-indent: 2em;\">完全正确！知道为什么我们每一款都点了芝士没有点低脂吗？因为排队 4 小时到眼跟前你不可能点个低脂奶茶，买俩小布丁来安抚自己暴躁的灵魂，所以，芝士就是本命。</p><p style=\"text-indent: 2em;\">很多人不明白一杯奶茶能有什么不同？在我们排队 4 小时，喝完 16 \r\n杯喜茶之后，我可以明确的告诉你，喜茶还真是不太一样！喜茶的奶盖，是选用澳洲进口块状芝士、配上欧洲优质的鲜奶，而茶汤坚持高温水，高压萃取、每个茶袋只用一次，最大程度保证茶香；茶种类繁多，来自不同地域；有来自台湾阿里山的金凤茶、从北印度发掘的红玉茶王等等。</p><p style=\"text-indent: 2em;\">看到菜单的时候你们会发现几乎所有的茗茶都分为正常和低脂两种，并且杯子上有温馨小提示——芝士盖可以旋转，如果想多喝茶就把盖子开口旋转的角度小一些；如果想满口芝士，那就把盖子开口的程度旋转的大一些即可。但是有一点，不管是哪种，都千万不要用吸管！！</p><p style=\"text-indent: 2em;\">▼ 首先来个大合影</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_1379.jpg\" alt=\"heekcaa喜茶合照\"/></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_3253.jpg\" alt=\"heekcaa喜茶点单列表\"/></p><p style=\"text-indent: 2em;\">点单列表</p><p style=\"text-indent: 2em;\">茗茶系列（All in）</p><p style=\"text-indent: 2em;\">芝士绿妍，去冰半糖</p><p style=\"text-indent: 2em;\">芝士红玉，去冰半糖</p><p style=\"text-indent: 2em;\">芝士奥利奥红玉，去冰半糖</p><p style=\"text-indent: 2em;\">芝士金凤茶王，去冰半糖</p><p style=\"text-indent: 2em;\">芝士四季春，去冰半糖</p><p style=\"text-indent: 2em;\">芝士青雾，去冰半糖</p><p style=\"text-indent: 2em;\">芝士乌龙红了，去冰半糖</p><p style=\"text-indent: 2em;\">芝士浅香普洱，去冰半糖</p><p style=\"text-indent: 2em;\">芝士玉露茶后，去冰半糖</p><p style=\"text-indent: 2em;\">当季限定系列</p><p style=\"text-indent: 2em;\">（美罗城店、日月光店有售）</p><p style=\"text-indent: 2em;\">芝士莓莓，半糖少冰</p><p style=\"text-indent: 2em;\">混合茶系列</p><p style=\"text-indent: 2em;\">芝士青玫，去冰半糖</p><p style=\"text-indent: 2em;\">芝士奥利奥抹茶，去冰半糖</p><p style=\"text-indent: 2em;\">传统奶茶系列</p><p style=\"text-indent: 2em;\">（仅一款）</p><p style=\"text-indent: 2em;\">鲜奶静冈抹茶，去冰</p><p style=\"text-indent: 2em;\">超级杯水果茶系列</p><p style=\"text-indent: 2em;\">满杯红柚，少冰全糖</p><p style=\"text-indent: 2em;\">超级水果四季春，少冰全糖</p><p style=\"text-indent: 2em;\">爆柠四季春，少冰全糖</p><p style=\"text-indent: 2em;\">特色甜品</p><p style=\"text-indent: 2em;\">（仅两款）</p><p style=\"text-indent: 2em;\">法式焦糖烤布蕾</p><p style=\"text-indent: 2em;\">巧克力布蕾</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_9462.jpg\" alt=\"喜茶购买清单\"/></p><p style=\"text-indent: 2em;\">这次我们分别从茶汤味道、性价比、颜值、推荐程度等方面对这 16 杯喜茶作出测评，用五分制来评分 ★★★★★，好啦话不多说，赶紧进入测评正题！</p><p style=\"text-indent: 2em;\">•● 茗茶系列 ●•</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_8425.jpg\" alt=\"茗茶系列 \"/></p><p style=\"text-indent: 2em;\"><strong>● 芝士金凤茶王 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨23 元/杯丨</strong></p><p style=\"text-indent: 2em;\">茗茶系列里面呼声最高的莫过于——芝士金凤茶王和芝士玉露茶后（CP 感觉足足哒）。</p><p style=\"text-indent: 2em;\">能被称之为“茶王”，自然来头不小。其实“金凤”就是来自台湾南投的冠军乌龙茶，是茗茶系列里茶味最香浓醇厚的，重焙火半发酵工艺下的金凤香气浓郁而平稳，端到嘴边还没品，就先能闻到属于乌龙茶独特的茶香。喝上一口能感受到醇厚的芝士，接踵而至的就是清新四溢的茶香，两者融合的非常完美，绝配绝配！</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_9119.jpg\" alt=\"\"/></p><p style=\"text-indent: 2em;\">茶汤味道：★★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★★</p><p style=\"text-indent: 2em;\"><strong>● 芝士玉露茶后 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨28 元/杯丨</strong></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_2469.jpg\" alt=\"芝士玉露茶后\"/></p><p style=\"text-indent: 2em;\">说完茶王，咱再看看“茶后”，先科普一下“玉露”，这是一种日式茶中极品，一斤市价在千元左右。只在早春时节摘取其新芽，加工而成，玉露的名字也就取自于沏泡茶叶后那翡翠色的茶汤。泡茶方式很讲究，要用焖煮法来萃取茶汤，并且这种茶保质期很短，如果保存不当一个季度就变质了。</p><p style=\"text-indent: 2em;\">好的茶底，应该在喝奶盖茶的时候能够喝出的茶味，体现茶特有的微微的苦涩和香醇。芝士玉露茶后，入口清新全然没有茶的生涩感，后味丝丝回甘，同样配上芝士奶香，我可以很自信的说，即使是不喜欢喝茶的小伙伴，也不会抗拒这种味道。</p><p style=\"text-indent: 2em;\">茶汤味道：★★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★★</p><p style=\"text-indent: 2em;\"><strong>● 芝士绿妍 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨17 元/杯丨</strong></p><p style=\"text-indent: 2em;\">芝士绿妍可以说是茗茶系列里性价比最高的一杯，依然是可以选择低脂或者芝士两种。这款来自黄河中原本山种的绿茶，口感和茶汤一样明亮干净，后味茉莉的花香让整个心情都上扬起来，像是一口喝下整个春天。</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_6807.jpg\" alt=\"芝士绿妍\"/></p><p style=\"text-indent: 2em;\">茶汤味道：★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★</p><p style=\"text-indent: 2em;\"><strong>● 芝士红玉 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨22 元/杯丨</strong></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_7308.jpg\" alt=\"芝士红玉\"/></p><p style=\"text-indent: 2em;\">芝士红玉产于印度大吉岭以及台湾南投鱼池乡，全发酵的工艺使其口感丰富深沉，茶汤入口清爽，余味带着淡淡的甜香，细细品味可以感觉到桂圆的香气，后来拿了小卡片看果然有桂圆、葡萄和薄荷，怪不得会有这么清爽的口感。所有加了奥利奥的产品其实都是在奶盖上撒上了一层奥利奥饼干碎，口感一下子丰富起来了。</p><p style=\"text-indent: 2em;\">茶汤味道：★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★</p><p style=\"text-indent: 2em;\"><strong>● 芝士四季春 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨25 元/杯丨</strong></p><p style=\"text-indent: 2em;\">芝士四季春可以说是讨巧的小可爱，因为四季春是台湾独有特色品种，一年四季均能采制新茶，所以任何时候都很新鲜。没有乌龙那么生涩，但是保留了它淡淡的韵味，口感很别致。香浓细滑的芝士包裹着底蕴十足的茶底一起喝，幸福到爆炸！</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_3414.jpg\" alt=\"芝士四季春\"/></p><p style=\"text-indent: 2em;\">茶汤味道：★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★</p><p style=\"text-indent: 2em;\"><strong>● 芝士浅香普洱 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨25 元/杯丨</strong></p><p style=\"text-indent: 2em;\">芝士浅香普洱，刚开始我是拒绝的，想到曾经每天同事喝不完的“养生”普洱都会全部分给我的惨状。但是喝了几口下去，才知道大错特错。之所以叫浅香普洱，是因为这款茶不像传统普洱，重点萃取的是它的浅香，喝到第二口也许才会有普洱的味道扑面而来，清淡纯冽、齿颊生香；前面说到普洱养生，清热去火，怪不得中国国际茶文化研究会会长刘枫先生提出——「茶为国饮,普洱当先」的口号，可见普洱茶在国茶中的特殊地位和作用。</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_1608.jpg\" alt=\"芝士浅香普洱\"/></p><p style=\"text-indent: 2em;\">茶汤味道：★★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★</p><p style=\"text-indent: 2em;\">颜值：★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★</p><p style=\"text-indent: 2em;\">● 鲜奶静冈 ●</p><p style=\"text-indent: 2em;\">丨18 元/杯丨</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_4636.jpg\" alt=\"鲜奶静冈\"/></p><p style=\"text-indent: 2em;\">鲜奶静冈抹茶作为喜茶唯一一款传统奶茶，自然不能错过。因为拿到光顾着拍照，所以喝的时候已经有点分层了，但味道还是很好的。大家都知道在日本静冈抹茶，号称世界上最浓厚的抹茶。茶汤好喝回甘，搭配鲜奶就更不用担心抹茶的生涩，但是对于重度抹茶爱好者而言，这种大众的口感恐怕不能满足咯。</p><p style=\"text-indent: 2em;\">茶汤味道：★★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★★</p><p style=\"text-indent: 2em;\">•● 超级杯水果茶系列 ●•</p><p style=\"text-indent: 2em;\">说完了重头戏，来说我个人最喜欢的水果系列吧！所有水果茶系列全部都是使用 700 ml 大容量超级杯，拿到手感觉分量满满，拍照也格外好看。</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_9066.jpg\" alt=\"超级杯水果茶系列\"/></p><p style=\"text-indent: 2em;\"><strong>● 芝士莓莓 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨28 元/杯丨</strong></p><p style=\"text-indent: 2em;\">草莓季限定的—「芝士莓莓」应该是所有人的到店必买。目前上海只有美罗城店与新开的日月光店在售卖。一年只卖一季，选用当地高品质牛奶草莓新鲜现榨，商家承诺完全鲜果制作不添加果汁果酱，配上喜茶独家芝士，入口能吃到草莓的颗粒，春天气息的绿妍打底，顺滑香浓的芝士恰到好处的升华了这一杯饮品，喝过的小伙伴都说：这一杯，值了！</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_9479.jpg\" alt=\"芝士莓莓\"/></p><p style=\"text-indent: 2em;\">茶汤味道：★★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★★</p><p style=\"text-indent: 2em;\"><strong>● 满杯红柚 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨19 元/杯丨</strong></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_1833.jpg\" alt=\"满杯红柚\"/></p><p style=\"text-indent: 2em;\">满杯红柚是我最最喜欢的单品，没有之一。首先外观上粉粉嫩嫩，少女心爆棚，虽然是排队将近四小时才拿到手，但是到手第一件事情依旧是先给它拍个定妆照，因为真的很美！除了颜值在线之外，口感也是没得说，由清新的四季春茶汤搭配低热量健康冰糖，即使这一杯我们选了全糖完全没影响，上层是红柚汁打出来的冰沙，下面是一整只红柚！除了不停的点头称赞之外，嘴里都是幸福的味道！不过提醒一下：这一杯还是拿到尽快喝掉，不然红柚泡久了，可能会有些微微的涩。</p><p style=\"text-indent: 2em;\">茶汤味道：★★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★★</p><p style=\"text-indent: 2em;\"><strong>● 超级水果四季春 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨25 元/杯丨</strong></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_8186.jpg\" alt=\"超级水果四季春\"/></p><p style=\"text-indent: 2em;\">超级水果四季春，拿到手份量满满，杯壁上还贴心的附赠了小勺子可以吃果肉。茶底依旧是清新的四季春茶，搭配了香橙、西瓜、青柠、奶油草莓、百香果、金桔、青苹果以及红苹果整整八种水果。可以说是真·超级水果茶！口感丰富就不用再说了，赶紧拿着勺子吃才是正经事！这就是夏天的味道啊！不过因为本身水果的糖分已经够了，这一杯如果点半糖的话，可能效果会更好！</p><p style=\"text-indent: 2em;\">茶汤味道：★★★★</p><p style=\"text-indent: 2em;\">性价比：★★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★★★★★</p><p style=\"text-indent: 2em;\"><strong>● 爆柠四季春 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨23 元/杯丨</strong></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_9520.jpg\" alt=\"爆柠四季春\"/></p><p style=\"text-indent: 2em;\">喝过三杯超级棒的水果茶之后，对爆柠四季春的期待有点高，但是！完全错了！如果要给出“喜茶”测评中唯一的一个差评，那么非「爆柠四季春」莫属！整颗柠檬配上四季春，口感生涩极了，像是被稀释了\r\n 100 次的金桔柠檬，除了酸涩没有其他的后味，喝了一口我转身在测评笔记上默默写下了这样一句话：「想骂人的难喝」。</p><p style=\"text-indent: 2em;\">茶汤味道：★</p><p style=\"text-indent: 2em;\">性价比：★★★</p><p style=\"text-indent: 2em;\">颜值：★★★★</p><p style=\"text-indent: 2em;\">推荐程度：★</p><p style=\"text-indent: 2em;\">•● 特色甜品 ●•</p><p style=\"text-indent: 2em;\">喜茶除了饮品之外还有两种特色甜点，法式焦糖烤布蕾、樽装巧克力布蕾。</p><p style=\"text-indent: 2em;\">PS：这两个单品是不限购的，想买多少买多少。</p><p style=\"text-indent: 2em;\"><strong>● 法式焦糖烤布蕾 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨9 元/杯丨</strong></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_7641.jpg\" alt=\"特色甜品\"/></p><p style=\"text-indent: 2em;\">法式焦糖烤布蕾味道很浓郁，顺滑的口感像是冰淇淋融化在嘴里，脆脆的焦糖皮冷热对比，简直天生一对！但是提醒大家尽快吃，别问我的焦糖皮为什么化掉了。</p><p style=\"text-indent: 2em;\"><strong>● 樽装巧克力布蕾 ●</strong></p><p style=\"text-indent: 2em;\"><strong>丨9 元/杯丨</strong></p><p style=\"text-indent: 2em;\">樽装巧克力布蕾装在玻璃瓶子里，巧克力味道浓郁极了，口感很扎实，小巧的一只吃起来也没有那么重的负担（假装告诉自己不会胖的，不会胖的），小伙伴们都挺喜欢的。</p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_8350.jpg\" alt=\"樽装巧克力布蕾\"/></p><p style=\"text-align: center;\"><img src=\"http://www.jinyishun.net/upload/09152430_2709.jpg\" alt=\"\"/></p><p style=\"text-indent: 2em;\">除了饮品之外，喜茶的装潢也是处处透露出精致的茶文化。前台像实验室般的茶容器，除了代表多品类之外，更是新鲜可看见。如果日后新店铺开，不用排这么长时间的话，可以好好坐下来，品一杯“茶”。</p><p style=\"text-indent: 2em;\"><strong>温馨提示：</strong></p><p style=\"text-indent: 2em;\">排队期间如果需要暂时离开，一定要找到工作人员暂存号码；</p><p style=\"text-indent: 2em;\">一个建议，千万不要相信任何黄牛。</p><p><br/></p>',150,0,1,1523501840,2),(8,'喜茶奶茶加盟给你一条快速致富的道路 ','喜茶官网','喜茶官网','喜茶官网','','<p>随着现代社会的快速发展，人们的饮食结构发生着一些变化，现代人们对于绿色健康的美食需求量量按时相当的大。而在人们的生活当中，奶茶是相当深入人心的饮品，而喜茶奶茶在人们的心目当中按时变得看非常的受欢迎，现在加盟到喜茶这个奶茶品牌当中来，给你一条快速致富的道路。<br/>&nbsp;&nbsp;&nbsp; \r\n而且喜茶奶茶在对待产品的质量方面那是具有相当高的要求，为消费者们带来各种各样的美味奶茶品种，让消费者在这个高速发展的社会当中，品尝到一股股美味的奶茶饮品。而且喜茶奶茶的每一杯的奶茶原材料都是经过精挑细选的，没有添加任何的化学添加剂，为消费者们带来一杯又一杯美味而且健康奶茶产品。<img src=\"http://www.jinyishun.net/upload/2016081708473697.jpg\" alt=\"\"/><br/>&nbsp;&nbsp;&nbsp; 对于加盟商而言，加盟到喜茶奶茶当中，可以有一个非常好的创业体验，不管是有没有相关的工作经验，加盟到喜茶当中来，其总部会给加盟提供最为全面的奶茶加盟店的相关培训，让加盟商能够很快的掌握住经营之道。喜茶奶茶品牌，给你一个相当合适的创业品牌。<br/>&nbsp;&nbsp;&nbsp; 而且喜茶产品在对待消费者们的需求那是花了相当大的功夫，为了消费者们能够喝到健康的奶茶饮品，喜茶在产品的质量上给了消费者们最为全面的满足。各种各样的美味奶茶种类，让喜茶这个品牌深入到消费者们的心目当中，加盟到喜茶当中来，走上一条快速致富的道路。<br/></p>',114,0,1,1523502277,7),(9,'喜茶品牌加盟给予你一个美好未来 ','喜茶官网','喜茶官网','喜茶官网','','<p>在现在这个高速发展的社会，人们对于生活当中各种各样的美味产品有着更加强烈的需求，而在现在的餐饮市场当中，人们更加需求健康美味的各种美味。就在当前的社会生活当中，人们对于奶茶饮品的喜爱已经超出了许许多多加盟商的预料，其中以喜茶为代表的奶茶产品更是受到加盟商们的广泛关注。<br/>&nbsp;&nbsp;&nbsp; 在这个社会上想要获得一个非常赚钱的项目，想要赚钱就得先给予人们更加多的满足和需求，在满足的消费者之后才能够拥有赚钱的希望。而喜茶奶茶这个品牌那是非常的满足当前这个社会上消费者们的需求，加盟到喜茶奶茶这个品牌当中来，赚钱那就是非常的容易。</p><p><img src=\"/ueditor/php/upload/image/20180412/1523502307.jpg\" alt=\"\"/><br/>&nbsp;&nbsp;&nbsp; \r\n喜茶奶茶这个品牌坚持给人们最为健康的奶茶产品，让消费者们可以能够有一个满意的需求。现在这个社会上有着众多的奶茶加盟品牌，偏偏就只有喜茶这个奶茶品牌这么受欢迎呢？现在这个社会当中的创业加盟者选上喜茶就等于走上了一条致富的道路，众多好品质的奶茶满足着当前消费者们的需求，让消费者们得到满足，加盟商就能够赚取到相当多的利润。<br/>&nbsp;&nbsp;&nbsp; <a href=\"http://www.jinyishun.net\">喜茶加盟</a>给予消费者们非常多的满足，让加盟商也能够顺利的赚到应有的利润。各种各样的美味奶茶产品，给予人们非常多的需求，加盟进来，有着众多的消费者作为基础，加盟商肯定能够赚取的相当多的利润。加盟喜茶奶茶这个品牌，给你一个美好的未来。</p><p><br/></p>',134,0,1,1523502307,7),(10,'喜茶品牌加盟做独门生意 ','喜茶官网','喜茶官网','喜茶官网','','<p>就在这个快速发展的社会当中，人们的生活在不断地变化着，而现在人们对于生活当中的需求那是越来越高了，就在人们生活的周围有着许许多多的奶茶店出现。而人们对于奶茶这种物美价廉的茶饮那是非常的欢迎，这样的情况就造成了现在市场上的火爆，现在加入到奶茶行业当中来，生意火爆，利润不断。<br/>&nbsp;&nbsp;&nbsp; \r\n在现在市场当中众多的奶茶品牌当中，有着一款相当受人欢迎的奶茶品牌，那就是喜茶奶茶品牌。这个品牌有着相当多的奶茶品种，满足着消费者们的各种需求，在现在这个高速发展的社会当中，人们对于不仅仅只是满足着当前种类的奶茶饮品，而且还非常对有着特色的奶茶品牌情有独钟，加盟到喜茶奶茶品牌当中，各种美味的奶茶种类让消费者们感受到非常不错的感觉。</p><p><img src=\"/ueditor/php/upload/image/20180412/1523502336.png\" alt=\"\"/><br/>&nbsp;&nbsp;&nbsp; \r\n就在目前喜茶奶茶加盟的情况而言，前途更是一片大好，为了更加盟商和消费者们提供更多的奶茶选择。喜茶总部在奶茶的品质上下足功夫，在奶茶原料上精挑细选，采用在市场上最具有高品质的原料，制作出相当美味的奶茶产品。而对于加盟而言，不管加盟以前的经验如何，喜茶总部都会给加盟商提供最为全面周到的培训，让加盟商可以更好的把店面给开展起来，赚取丰厚的利润。<br/>&nbsp;&nbsp;&nbsp; \r\n喜茶这个奶茶品牌的加盟，让不少的投资创业者尝试到了非常好的创业体验，给予加盟商们创造了相当多的利润。而且加盟到喜茶这个品牌当中来，总部会给予加盟商区域保护政策，让加盟们在所在的加盟区域只有一家喜茶奶茶加盟店，让加盟商可以做独一份的生意，赚钱好不快活。</p><p><br/></p>',132,0,1,1523502337,7);

/*Table structure for table `bk_auth_group` */

DROP TABLE IF EXISTS `bk_auth_group`;

CREATE TABLE `bk_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `bk_auth_group` */

insert  into `bk_auth_group`(`id`,`title`,`status`,`rules`) values (1,'超级管理员',1,'15,16,19,18,17,1,9,11,14,13,12,2,3,20,10,4'),(3,'链接专员',1,'2,3,20,10,4'),(4,'配置管理员',1,'1,9,11,14,13,12');

/*Table structure for table `bk_auth_group_access` */

DROP TABLE IF EXISTS `bk_auth_group_access`;

CREATE TABLE `bk_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `bk_auth_group_access` */

insert  into `bk_auth_group_access`(`uid`,`group_id`) values (1,1),(28,3),(29,4),(30,1);

/*Table structure for table `bk_auth_rule` */

DROP TABLE IF EXISTS `bk_auth_rule`;

CREATE TABLE `bk_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(5) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `bk_auth_rule` */

insert  into `bk_auth_rule`(`id`,`name`,`title`,`type`,`status`,`condition`,`pid`,`level`,`sort`) values (1,'sys','系统设置',1,1,'',0,0,7),(2,'link','友情链接',1,1,'',0,0,4),(3,'link/lst','链接列表',1,1,'',2,1,5),(4,'link/del','删除链接',1,1,'',3,2,6),(11,'conf/lst','配置列表',1,1,'',1,1,50),(10,'link/add','添加链接',1,1,'',3,2,50),(9,'conf/conf','配置项',1,1,'',1,1,50),(12,'conf/add','添加配置',1,1,'',11,2,50),(13,'conf/del','配置删除',1,1,'',11,2,50),(14,'conf/edit','配置编辑',1,1,'',11,2,50),(15,'admin','管理员',1,1,'',0,0,50),(16,'admin/lst','管理员列表',1,1,'',15,1,50),(17,'admin/add','管理员添加',1,1,'',16,2,50),(18,'admin/del','管理员删除',1,1,'',16,2,50),(19,'admin/edit','管理员修改',1,1,'',16,2,50),(20,'link/edit','修改链接',1,1,'',3,2,50);

/*Table structure for table `bk_carousel` */

DROP TABLE IF EXISTS `bk_carousel`;

CREATE TABLE `bk_carousel` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `sort` mediumint(9) NOT NULL DEFAULT '50',
  `thumb` varchar(160) NOT NULL DEFAULT '',
  `url` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `bk_carousel` */

insert  into `bk_carousel`(`id`,`title`,`desc`,`sort`,`thumb`,`url`) values (1,'banner1','banner1',50,'/uploads/5acebed1a36e1.jpg',''),(2,'banner2','banner2',50,'/uploads/5acebee218451.jpg',''),(3,'banner3','banner3',50,'/uploads/5acebef005b71.jpg',''),(4,'banner4','banner4',50,'/uploads/5acebeffa0031.jpg','');

/*Table structure for table `bk_cate` */

DROP TABLE IF EXISTS `bk_cate`;

CREATE TABLE `bk_cate` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '栏目类型：1:文章列表栏目 2:单页栏目3：图片列表',
  `keywords` varchar(255) NOT NULL COMMENT '栏目关键词',
  `desc` varchar(255) NOT NULL COMMENT '栏目描述',
  `content` text NOT NULL COMMENT '栏目内容',
  `rec_index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `rec_bottom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '上级栏目id',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `bk_cate` */

insert  into `bk_cate`(`id`,`catename`,`type`,`keywords`,`desc`,`content`,`rec_index`,`rec_bottom`,`pid`,`sort`) values (1,'关于喜茶',2,'关于喜茶','关于喜茶','<p class=\"en_title\" style=\"text-align: center;\">INSPIRATION TEA</p><p class=\"zh_title\" style=\"text-align: center;\">- 灵感之茶 -</p><p style=\"text-align: center;\">Heekcaa喜茶：一份带有浓密情谊的奶茶，舒适而美味，甜蜜且温馨。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;\r\nHEEKCAA喜茶发展至今，实属不易，短短几年间数次更换品牌logo名称。喜茶发展之初原名为——皇茶，自开第一家店面以来，就备受青睐和关注，导致\r\n \r\n品牌名称被相继模仿，为了避免山寨产品一次充好，我们决定更换商标，几次尝试之后，由于”皇茶”不能被注册，创始人聂云宸决定放弃这个商标，于2016年\r\n \r\n出确定品牌名称——HEEKCAA喜茶，随即将原有的50多件门店全部更换，以杜绝山寨商家以此充好。目前我们的产品主要以奶茶，甜点小吃等，生意异常的\r\n \r\n火爆，随处可见在喜茶店铺门前排队买奶茶的状况。这中状况给了我们很积极的心态，我们计划今年新开20至30家直营及加盟店铺，以满足对喜茶热爱的忠实粉丝，同\r\n 样也期待与您的真诚合作。</p><p>&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HEEKCAA喜茶饮品是广州茶饮品行业中知名品牌之一，是全国各地奶茶爱好者最喜爱的茶饮品。我们坚持采用新鲜，健康的食材和上等咖啡豆为原料，精心制作每一杯饮品，做出适合当地顾客口感的时尚风味饮品。</p><p style=\" text-align:center;\"><img src=\"/ueditor/php/upload/image/20180412/1523497403.jpg\" alt=\"\"/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在提倡健康、品味、时尚的基础上，结合中华传统的养生文化，将健康、养生观念融入平常加盟奶茶店的茶饮中，在塑造健康、品味、时尚形象的同时，更注重奶茶加盟茶饮料的养生功效，迎合了各类消费人群的口味以及保健观念。</p><p>&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 时至今日，聂云宸对喜茶的产品已经有了足够的信心。无论是广州、深圳，还是上海，在进入之前他都确定会有好生意，因为“好的产品是没有地域局限性的。”所以他也正在加大布局速度。</p><p>&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在珠三角扎稳根后，喜茶开始开拓北京和上海市场。上海是一个茶饮品牌密集且外来品牌难以进入的地方，毕竟(Coco奶茶)、<a href=\"http://www.weimeizs.com/\" rel=\"nofollow\">（一点点奶茶）</a>等传统奶茶品牌已经扎根多时，而与喜茶定位相似的<a href=\"http://www.shaucma.com/\" rel=\"nofollow\">（因味茶）</a>大本营也在上海，但聂云宸依然信心十足。</p><p><br/></p>',1,0,0,50),(2,'喜茶专访',1,'喜茶专访','喜茶专访','',1,0,0,50),(3,'产品展示',3,'产品展示','产品展示','',1,0,0,50),(4,'全国门店',3,'全国门店','全国门店','',1,0,0,50),(5,'投资分析',2,'投资分析','投资分析','<p class=\"en_title\" style=\"text-align: center;\">INSPIRATION TEA</p><p class=\"zh_title\" style=\"text-align: center;\">- 灵感之茶 -</p><p style=\"text-align: center;\">心静茶至，茶至灵来。杯中滋味，与你分享。</p><p><strong>喜茶投资财报</strong><br/><br/>喜茶现在有60多家店了，计划会开到100家。在营业额上，我们没有专门规划。其实我们的营业额很高，我们单店最高可以做到300万一个月。<br/><br/>heekcaa喜茶门店做饮料、处理购买的速度很快，比星巴克要快很多。如果速度不够快，做不了这么高营业额。其实排队对营业额的帮助不大，这家店就算不排队，只要一直陆续有人买，它最后跟一直在排队的营业额是一模一样的。<br/><br/>我们最高的单店营业额出在广州一家店，它一天可以做10万块流水，相当于5000杯喜茶。一天做5000杯，这个数字在行业里绝对是第一名，没有人可以做到，星巴克也做不到。其实我们现在每个月做100万的店已经很少了，大部分都是两三百万。</p><p>&nbsp;</p><p><strong>喜茶门店模式</strong><br/>喜茶也很早就开始做空间升级，我们2013年就开始做大店了，2014年之后再也没有开过一家小店。我们所有的店都是100到200平方，标准店是100平方以上。<a href=\"http://www.jinyishun.net/contact.php\"><span style=\"color: rgb(255, 102, 0);\">去留言了解更多加盟信息</span></a><br/>&nbsp;</p><p style=\"text-align:center;\"><img src=\"/ueditor/php/upload/image/20180412/1523497555.jpg\" alt=\"喜茶投资门店\"/></p><p><strong>heekcaa喜茶创投优势</strong><br/>1、相对较低创业条件<br/>投资小，回报率高，适合实效创业者。<br/>&nbsp;<br/>2、完善的加盟培训<br/>将完整的know-how及长期经营的经验做传承与分享，降低创业失败几率。<br/>&nbsp;<br/>3、辅助完成商圈选择<br/>部协助评估商圈所在地，借由长期展店经验分析，将商圈优势发挥极致。<br/>&nbsp;<br/>4、最简单的经营模式<br/>开店期间可直接到总部店盛典进行专业培训，既学既会，专业人员上门协助，轻松开店。<br/>&nbsp;<br/>5、强势的产品保障<br/>以新鲜水果，天然素材研发符合消费者口感的优质茶品，让喜茶在竞争激烈的茶饮市场，能有用更多的差异化与优势。<br/>&nbsp;<br/>6、完善的后续保障<br/>提供完善的支援，除了专业人员的完整量身规划培训，缩短创业的摸索期。</p><p><br/></p>',1,0,0,50),(6,'联系我们',2,'联系我们','联系我们','',1,0,0,50),(7,'企业动态',1,'企业动态','企业动态','',0,0,0,50);

/*Table structure for table `bk_conf` */

DROP TABLE IF EXISTS `bk_conf`;

CREATE TABLE `bk_conf` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '配置项id',
  `cnname` varchar(50) NOT NULL COMMENT '配置中文名称',
  `enname` varchar(50) NOT NULL COMMENT '英文名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配置类型 1：单行文本框 2：多行文本 3：单选按钮 4：复选按钮 5：下拉菜单',
  `value` varchar(255) NOT NULL COMMENT '配置值',
  `values` varchar(255) NOT NULL COMMENT '配置可选值',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '配置项排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `bk_conf` */

insert  into `bk_conf`(`id`,`cnname`,`enname`,`type`,`value`,`values`,`sort`) values (1,'站点名称','sitename',1,'便利店十大品牌,便利店加盟哪个好,如邻便利店官网','',53),(2,'站点关键词','keywords',1,'便利店十大品牌,便利店加盟哪个好,如邻便利店官网','',52),(3,'站点描述','desc',2,'便利店十大品牌有哪些，便利店超市加盟哪个好？便利生活，天天如邻，如邻便利店为您创业一路保驾护航！','',51),(12,'公司名称','gsmc',1,'北京快乐峰餐饮管理股份有限公司','',50),(13,'公司地址','gsdz',1,'北京市北京经济技术开发区科创十三街29号院一区7号楼101二层、104二层','',50),(14,'招商热线','zsrx',1,'400-011-6018','',50),(15,'服务热线','fwrx',1,'400-011-6018','',50),(6,'是否关闭网站','close',3,'否','是,否',50),(7,'启动验证码','code',4,'','是',50),(8,'自动清空缓存','cache',5,'3个小时','1个小时,2个小时,3个小时',50),(9,'允许评论','comment',4,'允许','允许',50),(16,'企业QQ','qyqq',1,'2157164518','',50),(17,'企业邮箱','qyyx',1,'2157164518@qq.com','',50),(18,'投诉邮箱','tsyx',1,'2157164518@qq.com','',50);

/*Table structure for table `bk_link` */

DROP TABLE IF EXISTS `bk_link`;

CREATE TABLE `bk_link` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `title` varchar(60) NOT NULL COMMENT '链接标题',
  `desc` varchar(255) NOT NULL COMMENT '链接描述',
  `url` varchar(160) NOT NULL COMMENT '链接地址',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '链接排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `bk_link` */

insert  into `bk_link`(`id`,`title`,`desc`,`url`,`sort`) values (10,'欧尔斯','欧尔斯','http://www.liang188.com',50),(13,'茶颜悦色加盟费要多少 ','茶颜悦色加盟费要多少 ','http://www.chayanyes.com',50);

/*Table structure for table `bk_message` */

DROP TABLE IF EXISTS `bk_message`;

CREATE TABLE `bk_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `createtime` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `bk_message` */

/*Table structure for table `bk_zan` */

DROP TABLE IF EXISTS `bk_zan`;

CREATE TABLE `bk_zan` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ip` char(20) NOT NULL,
  `artid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `bk_zan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
