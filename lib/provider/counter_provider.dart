import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int _count1 = 0;
  int _count3 = 0;
  int _count4 = 0;
  int _listlength = 0;
  int _tap = 33;
  bool is33 = true;
  late int _totalcount = 0;
  late int _totalcount1 = 0;
  late int _totalcount2 = 0;
  late int _tahlilcount = 0;
  int get count => _count;
  int get count1 => _count1;
  int get count3 => _count3;
  int get count4 => _count4;
  int get tap => _tap;
  int get total => _totalcount;
  int get total1 => _totalcount1;
  int get total2 => _totalcount2;
  int get tahlil => _tahlilcount;
  List<String> zikrlist = [
    "𝐒𝐮𝐛𝐡𝐚𝐧'𝐀𝐥𝐥𝐚𝐡 سبحان الله",
    "𝐀𝐥𝐡𝐚𝐦𝐝𝐮𝐥𝐢𝐥𝐥𝐚𝐡 الحمد لله",
    "𝐀𝐥𝐥𝐚𝐡 𝐡𝐮 𝐚𝐤𝐛𝐚𝐫 الله أكبر",
  ];
  List<String> zikrlar = [
    "La ilaha illallah",
    "Ashhadu alla ilaha illallah",
    "La hawla quvvata illa billah",
    "Subhanallohi va bihamdihi",
    "Subhan Allahil Azim",
  ];
  String zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
  String zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
  void change() {
    is33 = !is33;
    notifyListeners();
  }

  void controllor() {
    _tap = tap;
    if (tap == 99) {
      _tap = 33;
    } else if (tap == 33) {
      _tap = 99;
    }
    notifyListeners();
  }

  void increment33() {
    ++_count;
    zikr = zikrlist[(_count % (is33 ? 33 : 99) == 0
            ? (_count - 1) ~/ (is33 ? 33 : 99)
            : _count ~/ (is33 ? 33 : 99)) %
        zikrlist.length];

    notifyListeners();
  }

  void increment10() {
    ++_count3;
    if (count3 < 10) {
      zikr1 = " La ilaha illallah";
    } else if (count3 == 10) {
      zikr1 = "La ilaha illallah\nMuhammadur rasulullah";
      _totalcount1 = _totalcount1 + 1;
    } else if (total1 == total1 + 7000) {
      _count3 = 1;
      zikr1 = "$_tahlilcount tahlil bo'ldi.";
    } else {
      _count3 = 1;
      zikr1 = "La ilaha illallah";
    }
    notifyListeners();
  }

  void increment100() {
    ++_count1;
    if (count1 < 100) {
      zikr1 = "La ilaha illallah";
    } else if (count1 == 100) {
      zikr1 = " La ilaha illallah\nMuhammadur rasulullah";
      _totalcount = _totalcount + 1;
    } else {
      _count1 = 1;
      zikr1 = "La ilaha illallah";
    }
    notifyListeners();
  }

  void incrementzikr100() {
    ++_count4;
    if (count4 <= 100) {
      zikr1 = zikrlar[_listlength].toString();
    } else {
      zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
      _count4 = 0;
      ++_listlength;
      _totalcount2 = _totalcount2 + 100;
    }
    notifyListeners();
  }

  void refresh() {
    if (count != 0) {
      _count = 0;
      zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
      notifyListeners();
    }
    notifyListeners();
  }

  void refresh1() {
    if (count1 != 0) {
      _count1 = 0;
      _totalcount = 0;
      _tahlilcount = 0;
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

  void refresh3() {
    if (count4 != 0) {
      _count4 = 0;
      _totalcount2 = 0;
      zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }
}
