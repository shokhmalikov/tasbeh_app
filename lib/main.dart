import 'package:flutter/material.dart';
import 'package:my_tasbeh/pages/home/home_page.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh33.dart';
import 'package:my_tasbeh/provider/counter_provider.dart';
import 'package:my_tasbeh/pages/tasbeh/tasbeh100.dart';
import 'package:provider/provider.dart';

void main() async {
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
          TasFile.path: (context) => const TasFile(),
          Tasfile2.path: (context) => const Tasfile2(),
        },
        initialRoute: HomePage.path,
      ),
    );
  }
}
