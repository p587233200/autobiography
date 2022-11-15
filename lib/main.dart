import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Autobiography'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orangeAccent,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          currentIndex: _currentindex,
          items: [
            (_currentindex == 0)
                ? BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 40,
                    ),
                    label: 'Home',
                  )
                : BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 20,
                    ),
                    label: 'Home'),
            (_currentindex == 1)
                ? BottomNavigationBarItem(
                    icon: Icon(
                      Icons.access_alarm,
                      size: 40,
                    ),
                    label: 'Alarm',
                  )
                : BottomNavigationBarItem(
                    icon: Icon(
                      Icons.access_alarm,
                      size: 20,
                    ),
                    label: 'Alarm'),
            (_currentindex == 2)
                ? BottomNavigationBarItem(
                    icon: Icon(
                      Icons.business,
                      size: 40,
                    ),
                    label: 'Business',
                  )
                : BottomNavigationBarItem(
                    icon: Icon(
                      Icons.business,
                      size: 20,
                    ),
                    label: 'Business'),
            (_currentindex == 3)
                ? BottomNavigationBarItem(
                    icon: Icon(
                      Icons.school,
                      size: 40,
                    ),
                    label: 'School',
                  )
                : BottomNavigationBarItem(
                    icon: Icon(
                      Icons.school,
                      size: 20,
                    ),
                    label: 'School'),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
              if (index != 0) {
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
  final String s1 = '我的家庭是一個很和樂的家庭，父母親都有很穩定的收入，基本上該有的東西都不會少'
      '，我們家有四個人，爸媽我姊還有我，我跟我姊都還在學校求學，父母親希望我們能後獨立自主、主動學習，'
      '累積人生經驗，他們友會適時的給予鼓勵和建議，也叫我們要著重課業或要有一項專精的技能，在未來才可以'
      '比較輕鬆，我，我活潑開朗、樂觀進取、個性隨和，所以人緣頗佳，我做事情有條理，做事之前都先做好規劃'
      '，不會拖拖拉拉，準時繳交，遇到困難會找出辦法來解決，我喜歡接觸各種新奇事物，追求各種成就感，喜歡'
      '接觸動腦的遊戲，國小常和同學下象棋，互相切磋琢磨，也增進彼此友誼，當自己贏了同學，就很有成就感，'
      '讓自己的腦袋更加的靈光，也奠定了我對邏輯推理的興趣，因此讓我喜歡花更多時間在數學、理化上發揮長處'
      '，小學時代的時候，在課業上表現平平，自從上了國中之後，成績蒸蒸日上，我不斷的努力學習上課專心聽講'
      '、仔細思考、體會老師所說的每一句話，在腦海裡架構重要觀念，因此上課的吸收效率很高，不但使得複習的'
      '工作能夠很快完成，還有多餘的時間從事課外活動。在這麼多的科目當中，我最喜歡的是數學，因為它能夠訓'
      '練我們組織與思考能力。而生物則和日常生活有密切的關係我在學校人際關係良好，因為無論何時，總是笑臉'
      '迎人，微笑已成為我個人招牌，國中時期，由於喜歡上玩電腦遊戲，覺得這些設計遊戲程式的人很厲害，讓我'
      '也想成為設計遊戲的人，所以我想要學會寫程式，來自做遊戲給大家玩，讓大家可以放鬆心情，寫程式也有很'
      '多面向，在未來也都是朝向資訊電子３ｃ的世界，讓我可以接上軌道，這樣都是讓我下定決心要學程式的理由'
      '，在未來，我希望能利用更多的時間去學習專業領域的知識與技能，除此之外，我也會利用課餘的時間去加強'
      '語言表達與領導的能力，並盡力去考取各種技能證照，來爭取以後的優勢。而如有像寒、暑假之類的長期假期'
      '，多多的充實英文會話能力，以加強自已的聽、說、讀、寫的能力，，也要多去學電腦的應用(如文書處理、程'
      '式設計……等)以適應國際化、資訊化的未來，不浪費時間，多多的充實的過每一天，更積極往新的人生邁進！';

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("1.mp3"));

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //先放個標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(
              s1,
              style: TextStyle(fontSize: 20),
            ),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('assets/f1.jpg'),
          ),
          SizedBox(
            height: 30,
          ),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 160,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/f2.jpg'),
                    fit: BoxFit.cover,
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
                  image: DecorationImage(
                    image: AssetImage('assets/f3.jpg'),
                    fit: BoxFit.cover,
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

class screen2 extends StatelessWidget {
  final String s1= '首先，我會利用開學前的三到四個月擴充單字，我會利用開學前的三到四個月擴充字彙的記憶， 勤加練習聽、說、讀、寫的能力，希望能在開學前通過全民英檢中級測驗，好讓自己快速吸收上課內容。因為英文已經是國際上通用的語言，而且不管讀那一個科系也都是很重要的一項工具。'
                   '在大一、大二時，除了努力學習必修課程以穩固根基，並充分獲得有關資工的知識之外，還要選擇在學業與興趣間需要精進的部分，加以擴充作進一步的探討。\n';
  final String s2= '除了在課堂的學習之外，利用網路或圖書館吸收更多的資訊，並不一定只限於資工類一科，也利用課餘的時間到其他學院旁聽，增加自己在不同領域的知識，以便擴大個人的視野。希望能從貴校特有的制度中體驗真正大學新鮮人的生活。\n';
  final String s3= '在大學生活中，課堂之餘的時間很多，因此最重要的就是好好學習如何善用每一分每一秒，做好時間規劃。另外訓練自己獨立自主地生活、金錢方面的自我控制，且維持正常的作息。此外也要挪出每天零碎的時間，確實做好學業上的準備並安排適當的休閒。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            '近程計畫',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                '1.	學業方面',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.purpleAccent, offset: Offset(6, 6)),
                  ],
                ),
                child: Text(s1,style: TextStyle(fontSize: 17),),
              ),
              Text(
                '2.	校園資源的應用',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueAccent, offset: Offset(6, 6)),
                  ],
                ),
                child: Text(s2,style: TextStyle(fontSize: 17),),
              ),
              Text(
                '3.	自我管理',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.greenAccent, offset: Offset(6, 6)),
                  ],
                ),
                child: Text(s3,style: TextStyle(fontSize: 17),),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "大一時期",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 170,
                width: 350,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue, offset: Offset(6, 6)),
                  ],
                ),
                child: ListView(
                  children: [
                    //條列式參考
                    Text(
                      '1. 學好英文',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '2. 組合語言',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3. 考取證照',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4. 人際關係',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "大二時期",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 170,
                width: 350,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.redAccent, offset: Offset(6, 6)),
                  ],
                ),
                child: ListView(
                  children: [
                    //條列式參考
                    Text(
                      '1. 學會三種程式語言',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '2. 學行資工工程基本知識',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3. 考取證照',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4. 能玩些社團',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "大三時期",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 170,
                width: 350,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue, offset: Offset(6, 6)),
                  ],
                ),
                child: ListView(
                  children: [
                    //條列式參考
                    Text(
                      '1. 做出實質程式作品',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '2. 學習前端和後端，找出自己比較喜歡前端還後端',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3. 打工賺錢',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4. 考取證照',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "大四時期",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 170,
                width:350,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.redAccent, offset: Offset(6, 6)),
                  ],
                ),
                child: ListView(
                  children: [
                    //條列式參考
                    Text(
                      '1. 做好備省資料',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '2. 學習目前業界熱門程式語言',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '3.整理並複習所學的知識 ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '4. 持續學習',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  final String s2= '在每個求學階段歷程中，學生不斷地向自我挑戰，培養個人的優勢，種種的試煉都為自己的人格處事烙下不泯的影響。在學問訓練上，於忠信資訊科中學到了整體觀，在資訊科的課程訓練上，從模糊、了解到深入探討，一步一步地使學生對資訊領域更有興趣與執著。'
      '未來，除了將繼續對資訊領域做更廣泛的學習與深一層的瞭解之外，更希望可以針對自己興趣較為濃厚的程式課，做更深入的探索與研究，當然研究內容希望能結合理論與實際面，將所學應證於實務上，並藉由對實習更深入的探討，因而激發出新的思維。';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '未來展望',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightGreenAccent, offset: Offset(6, 6)),
                    ],
                  ),
                child: Text(s2,style: TextStyle(fontSize: 17),),
              ),
            ],

          )
        ],
      ),
    );
  }
}
