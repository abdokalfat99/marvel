import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fikra_app/models/quran_model.dart';

class SurahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuranModel>(
      builder: (context, quranConsumer, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('قائمة السور'),
          ),
          body: ListView.builder(
            itemCount: quranConsumer.surahList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(quranConsumer.surahList[index]),
              );
            },
          ),
        );
      },
    );
  }
}