import 'package:flutter/material.dart';
import 'package:wechat_reading/base_card.dart';

///本周推荐
class CardRecommend extends BaseCard {
  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  bottomContent() {
    //高度撑满
    return Expanded(
        child: Container(
          constraints: BoxConstraints.expand(), //通过BoxConstraints尽可能撑满父容器
          margin: EdgeInsets.only(top: 20),
          child: Image.network(
            'http://www.devio.org/io/flutter_beauty/card_1.jpg',
            fit: BoxFit
                .cover, //宽高充满父容器，会裁切
          ),
        ));
  }

  @override
  topTitle(String title) {
    return super.topTitle('本周推荐');
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('送你一天无限卡·全场书籍免费读 >');
  }
}
