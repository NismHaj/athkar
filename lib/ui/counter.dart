import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'تسبيح',
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black12
                // image:
                //     DecorationImage(image: AssetImage('assets/img/img5.jpg'))
                ),
            child: Column(children: [
              Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'سبحان الله و بحمده',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  )),
              MaterialButton(
                color: Colors.white,
                shape: CircleBorder(),
                onPressed: () {
                  ++count;
                  setState(() {});
                },
                child: Padding(
                  child: Text(
                    '$count',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 60),
                  ),
                  padding: EdgeInsets.all(80),
                ),
              )
            ])));
  }
}
