import 'package:fikra_app/models/quran_model.dart';
import 'package:flutter/material.dart';



class QuranProvider with ChangeNotifier {
  List<QuranModel> surahList = [];
  List<QuranModel> ayahList = [];
  List<QuranModel> pageList =[];
  List<QuranModel> juzList =[];
}
