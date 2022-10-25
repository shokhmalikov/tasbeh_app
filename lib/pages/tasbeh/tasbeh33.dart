import 'package:flutter/material.dart';
import 'package:my_tasbeh/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class TasFile extends StatelessWidget {
  static const path = 'tasbeh';
  TasFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    var count = counter.count;
    var tap = counter.tap;
    bool is33 = counter.is33;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text('Tasbeh'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              color: Colors.green,
            ),
            alignment: Alignment.center,
            height: height / 4,
            width: width / 1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  counter.zikr,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '${count == 0 ? 0 : count % (is33 ? 33:99) == 0 ? (is33 ? 33:99) : count % (is33 ? 33:99)}',
                  style: const TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
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
                    backgroundColor: Colors.green,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  onPressed: () {
                    // if (tap == 33) {
                      counter.increment33();
                    // } else {
                    //   counter.increment99();
                    // }
                  },
                  child: const Icon(
                    Icons.add,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                      ),
                      onPressed: () => counter.refresh(),
                      child: const Icon(
                        Icons.refresh,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                        ),
                        onPressed: (){ counter.controllor();
                        counter.is33 = !counter.is33; 
                        },
                        child: Text(
                          '$tap',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                          ),
                        )),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
