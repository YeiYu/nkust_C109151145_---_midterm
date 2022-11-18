import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen1 extends StatelessWidget {

  final String s1='我出生在偏遠但清淨的大家庭中，'
                  '父親在國外工作，母親則是在護理學校擔任教師，'
                  '父母用不同的方式教導我，但都保持著相同的理念:'
                  '「不喜歡框架孩子的思考，及扼殺孩子的創造力，培養具有獨立的思考能力及責任感」'
                  '在嚴格的基礎下，開放的讓我們自由決定未來的方向'
                  '在健康的基礎下，盡情尋找性取與一技之長，將來才能自立更生。'
                  '在高職期間就讀電子科，至高二起參與選手競賽與科展'
                  '雖然沒有得到優秀的名次，但讓我因此學到很多知識與經驗'
                  '在那個時候，我開始認識到程式語言，學到許多程式設計的知識'
                  '在高職結束後，我找到我喜歡興趣--製作動畫'
                  '在之中，我能研究出個人的藝術項目與風格，可以分享自想像力'
                  '這對於不擅長繪圖的我，無疑是最喜歡的項目';

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Text("Who am I",
                              style: TextStyle(fontSize:24,
                                               fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Colors.blue,
                                               offset: Offset(6, 6)),
                        ],),
            child:Text(s1,
                       style: TextStyle(fontSize: 20),),
            ),

          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
