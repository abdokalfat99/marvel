import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fikra_app/models/quran_model.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuranModel>(
      builder: (context, quranConsumer, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Quran Mazid'),
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/abc.png'),
              ),
              DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                      labelStyle: TextStyle(color: Colors.green),
                      tabs: [
                        Tab(
                          text: "Surah",
                        ),
                        Tab(
                          text: "Ayah",
                        ),
                        Tab(
                          text: "Page",
                        ),
                        Tab(
                          text: "Juz",
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Surah tab content
                          ListView.builder(
                            itemCount: quranConsumer.surahList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(quranConsumer.surahList[index]),
                              );
                            },
                          ),

                          // Ayah tab content
                          ListView.builder(
                            itemCount: quranConsumer.ayahList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(quranConsumer.ayahList[index]),
                              );
                            },
                          ),

                          // Page tab content
                          ListView.builder(
                            itemCount: quranConsumer.pageList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(quranConsumer.pageList[index]),
                              );
                            },
                          ),

                          // Juz tab content
                          ListView.builder(
                            itemCount: quranConsumer.juzList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(quranConsumer.juzList[index]),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}