import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ChemistryPoints = prefs.getInt('ff_ChemistryPoints') ?? _ChemistryPoints;
    });
    _safeInit(() {
      _chemistryLevels = prefs.getInt('ff_chemistryLevels') ?? _chemistryLevels;
    });
    _safeInit(() {
      _unlocckTime = prefs.containsKey('ff_unlocckTime')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_unlocckTime')!)
          : _unlocckTime;
    });
    _safeInit(() {
      _chemistry1 = prefs.getInt('ff_chemistry1') ?? _chemistry1;
    });
    _safeInit(() {
      _chemistry2 = prefs.getInt('ff_chemistry2') ?? _chemistry2;
    });
    _safeInit(() {
      _chemistry3 = prefs.getInt('ff_chemistry3') ?? _chemistry3;
    });
    _safeInit(() {
      _chemistry4 = prefs.getInt('ff_chemistry4') ?? _chemistry4;
    });
    _safeInit(() {
      _chemistry5 = prefs.getInt('ff_chemistry5') ?? _chemistry5;
    });
    _safeInit(() {
      _chemistry6 = prefs.getInt('ff_chemistry6') ?? _chemistry6;
    });
    _safeInit(() {
      _chemistry7 = prefs.getInt('ff_chemistry7') ?? _chemistry7;
    });
    _safeInit(() {
      _chemistry8 = prefs.getInt('ff_chemistry8') ?? _chemistry8;
    });
    _safeInit(() {
      _chemistry9 = prefs.getInt('ff_chemistry9') ?? _chemistry9;
    });
    _safeInit(() {
      _chemistry10 = prefs.getInt('ff_chemistry10') ?? _chemistry10;
    });
    _safeInit(() {
      _chemistry11 = prefs.getInt('ff_chemistry11') ?? _chemistry11;
    });
    _safeInit(() {
      _physicspoints = prefs.getInt('ff_physicspoints') ?? _physicspoints;
    });
    _safeInit(() {
      _physicsLevels = prefs.getInt('ff_physicsLevels') ?? _physicsLevels;
    });
    _safeInit(() {
      _mathpoints = prefs.getInt('ff_mathpoints') ?? _mathpoints;
    });
    _safeInit(() {
      _mathlevels = prefs.getInt('ff_mathlevels') ?? _mathlevels;
    });
    _safeInit(() {
      _math1 = prefs.getInt('ff_math1') ?? _math1;
    });
    _safeInit(() {
      _math2 = prefs.getInt('ff_math2') ?? _math2;
    });
    _safeInit(() {
      _math3 = prefs.getInt('ff_math3') ?? _math3;
    });
    _safeInit(() {
      _math4 = prefs.getInt('ff_math4') ?? _math4;
    });
    _safeInit(() {
      _math5 = prefs.getInt('ff_math5') ?? _math5;
    });
    _safeInit(() {
      _math6 = prefs.getInt('ff_math6') ?? _math6;
    });
    _safeInit(() {
      _math7 = prefs.getInt('ff_math7') ?? _math7;
    });
    _safeInit(() {
      _math8 = prefs.getInt('ff_math8') ?? _math8;
    });
    _safeInit(() {
      _math9 = prefs.getInt('ff_math9') ?? _math9;
    });
    _safeInit(() {
      _math10 = prefs.getInt('ff_math10') ?? _math10;
    });
    _safeInit(() {
      _math11 = prefs.getInt('ff_math11') ?? _math11;
    });
    _safeInit(() {
      _math12 = prefs.getInt('ff_math12') ?? _math12;
    });
    _safeInit(() {
      _math13 = prefs.getInt('ff_math13') ?? _math13;
    });
    _safeInit(() {
      _math14 = prefs.getInt('ff_math14') ?? _math14;
    });
    _safeInit(() {
      _math15 = prefs.getInt('ff_math15') ?? _math15;
    });
    _safeInit(() {
      _math16 = prefs.getInt('ff_math16') ?? _math16;
    });
    _safeInit(() {
      _math17 = prefs.getInt('ff_math17') ?? _math17;
    });
    _safeInit(() {
      _physics1 = prefs.getInt('ff_physics1') ?? _physics1;
    });
    _safeInit(() {
      _physics2 = prefs.getInt('ff_physics2') ?? _physics2;
    });
    _safeInit(() {
      _physics3 = prefs.getInt('ff_physics3') ?? _physics3;
    });
    _safeInit(() {
      _physics4 = prefs.getInt('ff_physics4') ?? _physics4;
    });
    _safeInit(() {
      _physics5 = prefs.getInt('ff_physics5') ?? _physics5;
    });
    _safeInit(() {
      _physics6 = prefs.getInt('ff_physics6') ?? _physics6;
    });
    _safeInit(() {
      _physics7 = prefs.getInt('ff_physics7') ?? _physics7;
    });
    _safeInit(() {
      _physics8 = prefs.getInt('ff_physics8') ?? _physics8;
    });
    _safeInit(() {
      _physics9 = prefs.getInt('ff_physics9') ?? _physics9;
    });
    _safeInit(() {
      _physics10 = prefs.getInt('ff_physics10') ?? _physics10;
    });
    _safeInit(() {
      _biology1 = prefs.getInt('ff_biology1') ?? _biology1;
    });
    _safeInit(() {
      _biology2 = prefs.getInt('ff_biology2') ?? _biology2;
    });
    _safeInit(() {
      _biology3 = prefs.getInt('ff_biology3') ?? _biology3;
    });
    _safeInit(() {
      _biology4 = prefs.getInt('ff_biology4') ?? _biology4;
    });
    _safeInit(() {
      _biology5 = prefs.getInt('ff_biology5') ?? _biology5;
    });
    _safeInit(() {
      _biology6 = prefs.getInt('ff_biology6') ?? _biology6;
    });
    _safeInit(() {
      _biology7 = prefs.getInt('ff_biology7') ?? _biology7;
    });
    _safeInit(() {
      _biology8 = prefs.getInt('ff_biology8') ?? _biology8;
    });
    _safeInit(() {
      _biology9 = prefs.getInt('ff_biology9') ?? _biology9;
    });
    _safeInit(() {
      _biology10 = prefs.getInt('ff_biology10') ?? _biology10;
    });
    _safeInit(() {
      _biology11 = prefs.getInt('ff_biology11') ?? _biology11;
    });
    _safeInit(() {
      _biologylevels = prefs.getInt('ff_biologylevels') ?? _biologylevels;
    });
    _safeInit(() {
      _biologypoints = prefs.getInt('ff_biologypoints') ?? _biologypoints;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _ChemistryPoints = 0;
  int get ChemistryPoints => _ChemistryPoints;
  set ChemistryPoints(int value) {
    _ChemistryPoints = value;
    prefs.setInt('ff_ChemistryPoints', value);
  }

  int _chemistryLevels = 11;
  int get chemistryLevels => _chemistryLevels;
  set chemistryLevels(int value) {
    _chemistryLevels = value;
    prefs.setInt('ff_chemistryLevels', value);
  }

  DateTime? _unlocckTime;
  DateTime? get unlocckTime => _unlocckTime;
  set unlocckTime(DateTime? value) {
    _unlocckTime = value;
    value != null
        ? prefs.setInt('ff_unlocckTime', value.millisecondsSinceEpoch)
        : prefs.remove('ff_unlocckTime');
  }

  int _chemistry1 = 0;
  int get chemistry1 => _chemistry1;
  set chemistry1(int value) {
    _chemistry1 = value;
    prefs.setInt('ff_chemistry1', value);
  }

  int _chemistry2 = 0;
  int get chemistry2 => _chemistry2;
  set chemistry2(int value) {
    _chemistry2 = value;
    prefs.setInt('ff_chemistry2', value);
  }

  int _chemistry3 = 0;
  int get chemistry3 => _chemistry3;
  set chemistry3(int value) {
    _chemistry3 = value;
    prefs.setInt('ff_chemistry3', value);
  }

  int _chemistry4 = 0;
  int get chemistry4 => _chemistry4;
  set chemistry4(int value) {
    _chemistry4 = value;
    prefs.setInt('ff_chemistry4', value);
  }

  int _chemistry5 = 0;
  int get chemistry5 => _chemistry5;
  set chemistry5(int value) {
    _chemistry5 = value;
    prefs.setInt('ff_chemistry5', value);
  }

  int _chemistry6 = 0;
  int get chemistry6 => _chemistry6;
  set chemistry6(int value) {
    _chemistry6 = value;
    prefs.setInt('ff_chemistry6', value);
  }

  int _chemistry7 = 0;
  int get chemistry7 => _chemistry7;
  set chemistry7(int value) {
    _chemistry7 = value;
    prefs.setInt('ff_chemistry7', value);
  }

  int _chemistry8 = 0;
  int get chemistry8 => _chemistry8;
  set chemistry8(int value) {
    _chemistry8 = value;
    prefs.setInt('ff_chemistry8', value);
  }

  int _chemistry9 = 0;
  int get chemistry9 => _chemistry9;
  set chemistry9(int value) {
    _chemistry9 = value;
    prefs.setInt('ff_chemistry9', value);
  }

  int _chemistry10 = 0;
  int get chemistry10 => _chemistry10;
  set chemistry10(int value) {
    _chemistry10 = value;
    prefs.setInt('ff_chemistry10', value);
  }

  int _chemistry11 = 0;
  int get chemistry11 => _chemistry11;
  set chemistry11(int value) {
    _chemistry11 = value;
    prefs.setInt('ff_chemistry11', value);
  }

  int _physicspoints = 0;
  int get physicspoints => _physicspoints;
  set physicspoints(int value) {
    _physicspoints = value;
    prefs.setInt('ff_physicspoints', value);
  }

  int _physicsLevels = 10;
  int get physicsLevels => _physicsLevels;
  set physicsLevels(int value) {
    _physicsLevels = value;
    prefs.setInt('ff_physicsLevels', value);
  }

  int _mathpoints = 0;
  int get mathpoints => _mathpoints;
  set mathpoints(int value) {
    _mathpoints = value;
    prefs.setInt('ff_mathpoints', value);
  }

  int _mathlevels = 17;
  int get mathlevels => _mathlevels;
  set mathlevels(int value) {
    _mathlevels = value;
    prefs.setInt('ff_mathlevels', value);
  }

  int _math1 = 0;
  int get math1 => _math1;
  set math1(int value) {
    _math1 = value;
    prefs.setInt('ff_math1', value);
  }

  int _math2 = 0;
  int get math2 => _math2;
  set math2(int value) {
    _math2 = value;
    prefs.setInt('ff_math2', value);
  }

  int _math3 = 0;
  int get math3 => _math3;
  set math3(int value) {
    _math3 = value;
    prefs.setInt('ff_math3', value);
  }

  int _math4 = 0;
  int get math4 => _math4;
  set math4(int value) {
    _math4 = value;
    prefs.setInt('ff_math4', value);
  }

  int _math5 = 0;
  int get math5 => _math5;
  set math5(int value) {
    _math5 = value;
    prefs.setInt('ff_math5', value);
  }

  int _math6 = 0;
  int get math6 => _math6;
  set math6(int value) {
    _math6 = value;
    prefs.setInt('ff_math6', value);
  }

  int _math7 = 0;
  int get math7 => _math7;
  set math7(int value) {
    _math7 = value;
    prefs.setInt('ff_math7', value);
  }

  int _math8 = 0;
  int get math8 => _math8;
  set math8(int value) {
    _math8 = value;
    prefs.setInt('ff_math8', value);
  }

  int _math9 = 0;
  int get math9 => _math9;
  set math9(int value) {
    _math9 = value;
    prefs.setInt('ff_math9', value);
  }

  int _math10 = 0;
  int get math10 => _math10;
  set math10(int value) {
    _math10 = value;
    prefs.setInt('ff_math10', value);
  }

  int _math11 = 0;
  int get math11 => _math11;
  set math11(int value) {
    _math11 = value;
    prefs.setInt('ff_math11', value);
  }

  int _math12 = 0;
  int get math12 => _math12;
  set math12(int value) {
    _math12 = value;
    prefs.setInt('ff_math12', value);
  }

  int _math13 = 0;
  int get math13 => _math13;
  set math13(int value) {
    _math13 = value;
    prefs.setInt('ff_math13', value);
  }

  int _math14 = 0;
  int get math14 => _math14;
  set math14(int value) {
    _math14 = value;
    prefs.setInt('ff_math14', value);
  }

  int _math15 = 0;
  int get math15 => _math15;
  set math15(int value) {
    _math15 = value;
    prefs.setInt('ff_math15', value);
  }

  int _math16 = 0;
  int get math16 => _math16;
  set math16(int value) {
    _math16 = value;
    prefs.setInt('ff_math16', value);
  }

  int _math17 = 0;
  int get math17 => _math17;
  set math17(int value) {
    _math17 = value;
    prefs.setInt('ff_math17', value);
  }

  int _physics1 = 0;
  int get physics1 => _physics1;
  set physics1(int value) {
    _physics1 = value;
    prefs.setInt('ff_physics1', value);
  }

  int _physics2 = 0;
  int get physics2 => _physics2;
  set physics2(int value) {
    _physics2 = value;
    prefs.setInt('ff_physics2', value);
  }

  int _physics3 = 0;
  int get physics3 => _physics3;
  set physics3(int value) {
    _physics3 = value;
    prefs.setInt('ff_physics3', value);
  }

  int _physics4 = 0;
  int get physics4 => _physics4;
  set physics4(int value) {
    _physics4 = value;
    prefs.setInt('ff_physics4', value);
  }

  int _physics5 = 0;
  int get physics5 => _physics5;
  set physics5(int value) {
    _physics5 = value;
    prefs.setInt('ff_physics5', value);
  }

  int _physics6 = 0;
  int get physics6 => _physics6;
  set physics6(int value) {
    _physics6 = value;
    prefs.setInt('ff_physics6', value);
  }

  int _physics7 = 0;
  int get physics7 => _physics7;
  set physics7(int value) {
    _physics7 = value;
    prefs.setInt('ff_physics7', value);
  }

  int _physics8 = 0;
  int get physics8 => _physics8;
  set physics8(int value) {
    _physics8 = value;
    prefs.setInt('ff_physics8', value);
  }

  int _physics9 = 0;
  int get physics9 => _physics9;
  set physics9(int value) {
    _physics9 = value;
    prefs.setInt('ff_physics9', value);
  }

  int _physics10 = 0;
  int get physics10 => _physics10;
  set physics10(int value) {
    _physics10 = value;
    prefs.setInt('ff_physics10', value);
  }

  int _biology1 = 0;
  int get biology1 => _biology1;
  set biology1(int value) {
    _biology1 = value;
    prefs.setInt('ff_biology1', value);
  }

  int _biology2 = 0;
  int get biology2 => _biology2;
  set biology2(int value) {
    _biology2 = value;
    prefs.setInt('ff_biology2', value);
  }

  int _biology3 = 0;
  int get biology3 => _biology3;
  set biology3(int value) {
    _biology3 = value;
    prefs.setInt('ff_biology3', value);
  }

  int _biology4 = 0;
  int get biology4 => _biology4;
  set biology4(int value) {
    _biology4 = value;
    prefs.setInt('ff_biology4', value);
  }

  int _biology5 = 0;
  int get biology5 => _biology5;
  set biology5(int value) {
    _biology5 = value;
    prefs.setInt('ff_biology5', value);
  }

  int _biology6 = 0;
  int get biology6 => _biology6;
  set biology6(int value) {
    _biology6 = value;
    prefs.setInt('ff_biology6', value);
  }

  int _biology7 = 0;
  int get biology7 => _biology7;
  set biology7(int value) {
    _biology7 = value;
    prefs.setInt('ff_biology7', value);
  }

  int _biology8 = 0;
  int get biology8 => _biology8;
  set biology8(int value) {
    _biology8 = value;
    prefs.setInt('ff_biology8', value);
  }

  int _biology9 = 0;
  int get biology9 => _biology9;
  set biology9(int value) {
    _biology9 = value;
    prefs.setInt('ff_biology9', value);
  }

  int _biology10 = 0;
  int get biology10 => _biology10;
  set biology10(int value) {
    _biology10 = value;
    prefs.setInt('ff_biology10', value);
  }

  int _biology11 = 0;
  int get biology11 => _biology11;
  set biology11(int value) {
    _biology11 = value;
    prefs.setInt('ff_biology11', value);
  }

  int _biologylevels = 11;
  int get biologylevels => _biologylevels;
  set biologylevels(int value) {
    _biologylevels = value;
    prefs.setInt('ff_biologylevels', value);
  }

  int _biologypoints = 0;
  int get biologypoints => _biologypoints;
  set biologypoints(int value) {
    _biologypoints = value;
    prefs.setInt('ff_biologypoints', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
