import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh10.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh33.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh100.dart';
import 'package:my_tasbeh/pages/tasbeh/zikrlar100.dart';

class HomePage extends StatefulWidget {
  static const path = 'home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Tasbeh'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: CupertinoButton(
                          onPressed: () {
                            Navigator.pushNamed(context, TasFile.path);
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/tasbeh_hand.png'),
                              const SizedBox(
                                height: 22,
                              ),
                              const Text(
                                'Tasbeh 33talik',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: CupertinoButton(
                          onPressed: () {
                            Navigator.pushNamed(context, TasFile3.path);
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/tasbeh_hand.png'),
                              const SizedBox(
                                height: 22,
                              ),
                              const Text(
                                'Tasbeh 10talik',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: CupertinoButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Tasfile2.path);
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/tasbeh_hand.png'),
                              const SizedBox(
                                height: 22,
                              ),
                              const Text(
                                'Tasbeh 100talik',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: CupertinoButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Tasfile4.path);
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/tasbeh_hand.png'),
                              const SizedBox(
                                height: 22,
                              ),
                              const Text(
                                'Zikrlar 100talik',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.green,
              ),
              child: const Center(
                  child: Text(
                'Alhamdulillah 😊',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
