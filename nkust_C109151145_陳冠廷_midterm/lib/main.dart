import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: 'Alarm',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: 'Business',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: 'School',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

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

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          SizedBox(height: 30,),

        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('學習歷程'),);
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 200,
                    width: 200,
                  child: ListView(
                    children: [
                      Text('1. 英文門檻'),
                      Text('2. 組合語言'),
                      Text('3. 生活技巧'),
                      Text('4. 人際關係'),
                    ],
                  ),
                ),
              ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    Text('1. 人際關係'),
                    Text('2. 組合語言'),
                    Text('3. 生活技巧'),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    Text('1. 學分門檻'),
                    Text('2. 環境建置'),
                    Text('3. 危機處理'),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    Text('1. 畢業門檻'),
                    Text('2. 程式語言'),
                    Text('3. 獨立生活'),
                    Text('4. 人際關係'),
                  ],
                ),
              ),
            ],),
          Row(),
          Row(),
          Row(),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('專案方向'),);
  }
}
