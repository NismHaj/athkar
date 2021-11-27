import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Morning extends StatefulWidget {
  @override
  _MorningState createState() => _MorningState();
}

class _MorningState extends State<Morning> {
  int count = 0;
  List list = [
    'كُلُّ مَنْ عَلَيْهَا فَانٍ * وَيَبْقَى وَجْهُ رَبِّكَ ذُو الْجَلَالِ وَالْإِكْرَامِ',
    'لَكِنَّ الْبِرَّ مَنِ اتَّقَى',
  ];
  int n = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(
          'أذكار الصباح',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          children: [
            defaultContainer(
                width: double.infinity,
                hight: 200,
                text: '',
                fontSize: 20,
                fontWeight: FontWeight.w100,
                borderRadius: BorderRadius.circular(10),
                margin:
                    EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
                padding: const EdgeInsets.all(10)),
            Row(
              children: [
                defaultContainerTextButton(
                    margin: EdgeInsets.only(left: 20),
                    padding: const EdgeInsets.all(5),
                    width: 100,
                    hight: 45,
                    text: 'العداد : $count',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    function: () {
                      ++count;
                      setState(() {});
                    }),
                defaultContainer(
                    width: 100,
                    hight: 45,
                    text: 'مرة واحدة',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    margin: EdgeInsets.only(right: 20, left: 80),
                    padding: const EdgeInsets.all(5)),
              ],
            ),
            defaultContainerTextButton(
                margin: EdgeInsets.all(20),
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                hight: 60,
                text: 'الذكر التالي',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                borderRadius: BorderRadius.circular(10),
                function: () {
                  ++n;
                  count = 0;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}

////////////////////////////////
Widget defaultContainer({
  @required double width,
  @required double hight,
  @required String text,
  @required double fontSize,
  @required FontWeight fontWeight,
  @required BorderRadius borderRadius,
  @required EdgeInsets margin,
  @required EdgeInsetsGeometry padding,
}) =>
    Container(
        margin: margin,
        width: width,
        height: hight,
        child: Padding(
          padding: padding,
          child: Center(
              child: SingleChildScrollView(
                  child: Text(text,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize,
                          fontWeight: fontWeight)))),
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.7),
          borderRadius: borderRadius,
        ));
/////////////////////////////////////////
Widget defaultContainerTextButton(
        {@required double width,
        @required double hight,
        @required String text,
        @required double fontSize,
        @required FontWeight fontWeight,
        @required BorderRadius borderRadius,
        @required EdgeInsets margin,
        @required EdgeInsetsGeometry padding,
        @required Function function,
        int count = 0}) =>
    Container(
        margin: margin,
        width: width,
        height: hight,
        child: Padding(
          padding: padding,
          child: Center(
              child: TextButton(
            onPressed: function,
            child: Text(text,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize,
                    fontWeight: fontWeight)),
          )),
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.7),
          borderRadius: borderRadius,
        ));
