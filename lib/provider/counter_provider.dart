import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int _count4 = 0;
  int _listlength = 0;
  late int _totalcount2 = 0;
  int get count => _count;
  int get count4 => _count4;
  int get total2 => _totalcount2;
  List<String> zikrlar = [
    "La ilaha illallah",
    "Ashhadu alla ilaha illallah",
    "La hawla quvvata illa billah",
    "Subhanallohi va bihamdihi",
    "Subhan Allahil Azim",
  ];
  String zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
  String zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";

  void increment99() {
    ++_count;
    zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    if (count <= 33) {
      zikr = "𝐒𝐮𝐛𝐡𝐚𝐧'𝐀𝐥𝐥𝐚𝐡 سبحان الله";
    } else if (count > 33 && count <= 66) {
      zikr = "𝐀𝐥𝐡𝐚𝐦𝐝𝐮𝐥𝐢𝐥𝐥𝐚𝐡 الحمد لله";
    } else if (count <= 99) {
      zikr = "𝐀𝐥𝐥𝐚𝐡 𝐡𝐮 𝐚𝐤𝐛𝐚𝐫 الله أكبر";
    } else {
      _count = -1;
      zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
      ++_count;
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

  void refresh3() {
    if (count4 != 0) {
      _count4 = 0;
      _totalcount2 = 0;
      zikr1 = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }
}
