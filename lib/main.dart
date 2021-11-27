import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:project/ui/counter.dart';
import 'package:project/ui/morning.dart';

void main() {
  runApp(MaterialApp(
    home: Slider(),
  ));
}

class Slider extends StatelessWidget {
  List<Map> itemes = [
    {
      'info':
          'كُلُّ مَنْ عَلَيْهَا فَانٍ * وَيَبْقَى وَجْهُ رَبِّكَ ذُو الْجَلَالِ وَالْإِكْرَامِ'
    },
    {'info': 'وَلَكِنَّ الْبِرَّ مَنِ اتَّقَى'},
    {'info': 'قَدْ أَفْلَحَ مَنْ تَزَكَّى * وَذَكَرَ اسْمَ رَبِّهِ فَصَلَّى'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الأذكار',
          textAlign: TextAlign.right,
        ),
        backgroundColor: Colors.teal[900],
      ),
      body: Container(
        color: Colors.teal,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return SliderWidget(itemes[0]['info']);
                  },
                )),
            Expanded(
              flex: 3,
              child: ListWidget(),
            )
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////
class SliderWidget extends StatelessWidget {
  String item;
  SliderWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            item,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w100),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ]));
  }
}

////////////////
class ListWidget extends StatelessWidget {
  List<Map> imges = [
    {'img': 'assets/img/img.jpg'},
    {'img': 'assets/img1/img.jpg'},
    {'img': 'assets/img/img.jpg'},
    {'img': 'assets/img1/img.jpg'},
    {'img': 'assets/img/img.jpg'},
    {'img': 'assets/img1/img.jpg'},
    {'img': 'assets/img/img.jpg'},
    {'img': 'assets/img1/img.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: imges.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //mainAxisExtent: 300,
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Stack(children: [
          Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: TextButton(
                  child: Text(
                    'أذكار الصباح',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onPressed: () {},
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.7),
                borderRadius: BorderRadius.circular(15),
              )),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 70,
              height: 70,
              child: Icon(Icons.wb_sunny_sharp),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(30)),
              ),
              // defaultContainerTextButton(
              //     width: 50,
              //     hight: 50,
              //     text: 'الصباح',
              //     fontSize: 18,
              //     fontWeight: FontWeight.w100,
              //     borderRadius: BorderRadius.circular(10),
              //     margin: EdgeInsets.all(10),
              //     padding: EdgeInsets.all(10),
              //     function: () {})
            ),
          )
        ]);
      },
    );
  }
}
