import 'package:fikra_app/providers/quran_provider.dart';
import 'package:fikra_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QuranProvider>(create: (_) => QuranProvider()),
      ],
      child:  const MaterialApp(
        title: ' ',
                home: HomeScreen(),

        ),
      );
  }
}
