import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh33.dart';
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
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/download.jpg'), fit: BoxFit.cover)),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.green.withOpacity(0.6),
                ),
                child: const Center(
                    child: Text(
                  'Salom, Omina 😊',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.green.withOpacity(0.4),
                        Colors.green.withOpacity(0.4),
                        Colors.green.withOpacity(0.4)
                      ],
                    ),
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
              height: 20,
            ),
            Expanded(
              child: Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.green.withOpacity(0.4),
                        Colors.green.withOpacity(0.4),
                        Colors.green.withOpacity(0.4)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: CupertinoButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Tasfile4.path);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/tasbeh_hand.png',
                            fit: BoxFit.fill,
                          ),
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
