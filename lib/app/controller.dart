import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/autoit.dart' show autoit;
import 'package:print_script/app/const_default_gradients.dart';

import 'const_default_code.dart';

class Controller extends ChangeNotifier {
  static final Controller _instance = Controller._internal();

  Controller._internal();

  factory Controller() {
    return _instance;
  }

  static final textEditorController = CodeController(

      text: defaultCode, // Initial code
      language: autoit);

  static ValueNotifier<List<Color>> backgroundColor =
      ValueNotifier<List<Color>>([...gradients.first]);
  static ValueNotifier<double> padding = ValueNotifier(25);
  setColor(List<Color> newColor) {
    backgroundColor.value = newColor;
  }

  setPadding(double newPaddin) {
    padding.value = newPaddin;
    notifyListeners();
  }
}
