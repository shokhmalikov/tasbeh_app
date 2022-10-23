import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int _count1 = 0;
  int _count2 = 0;
  int _count3 = 0;
  late int _totalcount = 0;
  late int _totalcount1 = 0;
  late int _tahlilcount = 0;
  int get count => _count;
  int get count1 => _count1;
  int get count2 => _count2;
  int get count3 => _count3;
  int get total => _totalcount;
  int get total1 => _totalcount1;
  int get tahlil => _tahlilcount;
  String zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
  String zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";

  void increment99() {
    ++_count;
    if (count <= 33) {
      zikr = "𝐒𝐮𝐛𝐡𝐚𝐧'𝐀𝐥𝐥𝐚𝐡 سبحان الله";
    } else if (count <= 66) {
      zikr = "𝐀𝐥𝐡𝐚𝐦𝐝𝐮𝐥𝐢𝐥𝐥𝐚𝐡 الحمد لله";
    } else if (count <= 99) {
      zikr = "𝐀𝐥𝐥𝐚𝐡 𝐡𝐮 𝐚𝐤𝐛𝐚𝐫 الله أكبر";
    } else {
      _count = 0;
      zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }

   void increment33() {
    ++_count2;
    if (count2 <= 33) {
      zikr = "𝐒𝐮𝐛𝐡𝐚𝐧'𝐀𝐥𝐥𝐚𝐡 سبحان الله";
    } else{
      _count2 = 1;
      if (count <= 33) {
      zikr = "𝐀𝐥𝐡𝐚𝐦𝐝𝐮𝐥𝐢𝐥𝐥𝐚𝐡 الحمد لله";
    }
    } 
    notifyListeners();
  }

  void increment100() {
    ++_count1;
    if (count1 < 100) {
      zikr1 = "La ilaha illallah";
    } else if (count1 == 100) {
      zikr1 = " La ilaha illallah\nMuhammadur rasulullah";  
       _totalcount = _totalcount+1;
    } else {
      _count1 = 1;
      zikr1 = "La ilaha illallah";
    }
    notifyListeners();
  }

   void increment10() {
    ++_count3;
    if (count3 < 10) {
      zikr1 = " La ilaha illallah";
    } else if (count3 == 10) {
      zikr1 = "La ilaha illallah\nMuhammadur rasulullah";  
       _totalcount1 = _totalcount1+1;
    }else if (total1 == total1 + 7000) {
       _count3 = 1;
      zikr1 = "$_tahlilcount tahlil bo'ldi.";  
    }  else {
      _count3 = 1;
      zikr1 = "La ilaha illallah";
    }
    notifyListeners();
  }

  void refresh() {
    if (count != 0 || count2 != 0) {
      _count = 0;
      _count2 = 0;
      zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }

  void refresh1() {
    if (count1 != 0) {
      _count1 = 0;
      _totalcount = 0;
      zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }

  void refresh2() {
    if (count3 != 0) {
      _count3 = 0;
      _totalcount1 = 0;
      zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }

}
