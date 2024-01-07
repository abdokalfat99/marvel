import 'package:fikra_app/models/quran_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class QuranProviders with ChangeNotifier {
  List<QuranModel> sureh = [];
  List<QuranModel> ayah = [];
  List<QuranModel> page =[];
  List<QuranModel> juz =[];
}
