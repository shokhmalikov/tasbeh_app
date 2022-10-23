import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  late int _totalcount = 0;
  int get count => _count;
  int get total => _totalcount;
  String zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";

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

  void increment100() {
    ++_count;
    if (count < 100) {
      zikr = " La ilaha illallah";
    } else if (count == 100) {
      zikr = "Muhammadur rasulullah";
       _totalcount = _totalcount+1;
    } else {
      _count = 0;
      zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }

  void refresh() {
    if (count != 0) {
      _count = 0;
      zikr = "𝐁𝐢𝐬𝐦𝐢𝐥𝐥𝐚𝐡 بسملة";
    }
    notifyListeners();
  }
}
