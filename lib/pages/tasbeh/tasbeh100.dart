import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_tasbeh/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class Tasfile2 extends StatefulWidget {
  static const path = 'tasfile2';
  const Tasfile2({Key? key}) : super(key: key);

  @override
  State<Tasfile2> createState() => _Tasfile2State();
}

class _Tasfile2State extends State<Tasfile2> {
  var tem = Brightness.light;
  int s1 = 0;
  var icon1 = Icons.wb_sunny;
  Color rang1 = Colors.white;
  Color rang2 = Colors.lightBlue;
  Color rang3 = Colors.green;
  Color rang4 = Colors.black;
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    var count = counter.count;
    var totalcount = counter.total;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: tem,
      ),
      home: Scaffold(
        appBar: AppBar(
         // backgroundColor: ,
          title: const Text('Tasbeh'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              temOzgartir();
            });
          },
          child: Icon(
            icon1,
            size: 30.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30.0),
                ),
                color: rang3,
              ),
              alignment: Alignment.center,
              height: height / 4,
              width: width / 1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    counter.zikr,
                    style: TextStyle(
                      color: rang1,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                "${count}",
                style: TextStyle(
                  fontSize: 45.0,
                  color: rang1,
                ),
              ),
              const SizedBox(height: 10,),
                  Text(
                "Total count: ${totalcount}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: rang1,
                ),
              ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: rang2,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () => counter.increment100(),
                        child: Icon(
                          Icons.add,
                          size: 60,
                          color: rang4,
                        ),
                      ),
                      const SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: rang4,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                        ),
                        onPressed: () => counter.refresh(),
                        child: Icon(
                          Icons.refresh,
                          size: 30,
                          color: rang1,
                        ),
                      ),
                       OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: rang4,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                        ),
                        onPressed: (){},
                        child: Text('Save',
                        style: TextStyle(
                          color: rang1,
                          fontSize: 33,
                        ),
                        )
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: rang4,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: rang1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }

  void temOzgartir() {
    if (s1 == 1) {
      tem = Brightness.light;
      icon1 = Icons.wb_sunny;
      rang1 = Colors.white;
      rang2 = Colors.lightBlue;
      rang3 = Colors.green;
      rang4 = Colors.black;
      s1 -= 1;
    } else if (s1 == 0) {
      tem = Brightness.dark;
      icon1 = Icons.brightness_3;
      rang1 = Colors.black;
      rang2 = Colors.blue;
      rang3 = Colors.amber;
      rang4 = Colors.white;
      s1 += 1;
    }
  }
}
