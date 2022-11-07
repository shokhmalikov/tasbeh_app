import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_tasbeh/pages/home/home_page.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh10.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh33.dart';
import 'package:my_tasbeh/pages/tasbeh/zikrlar100.dart';
import 'package:my_tasbeh/provider/counter_provider.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh100.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.openBox('my_tasbeh_counter');
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.path: (context) => const HomePage(),
          TasFile.path: (context) => TasFile(),
          Tasfile2.path: (context) => const Tasfile2(),
          TasFile3.path: (context) => const TasFile3(),
          Tasfile4.path: (context) => const Tasfile4(),
        },
        initialRoute: HomePage.path,
      ),
    );
  }
}
