import 'package:fikra_app/providers/quran_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuranProvider>(
      builder: (context, quranConsumer, child) {
        return Scaffold(
          appBar: AppBar(
           centerTitle: true, title: const Text('Quran Mazid'),
          ),
          body: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                const TabBar(
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
                        physics: NeverScrollableScrollPhysics(),
                         shrinkWrap: true,
                        itemCount: quranConsumer.surahList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(quranConsumer.surahList[index].toString()),
                          );
                        },
                      ),
                           Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/abc.png'),
              ),
          
                      // Ayah tab content
                      ListView.builder(                            physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
                        itemCount: quranConsumer.ayahList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(quranConsumer.ayahList[index].toString()),
                          );
                        },
                      ),
          
                      // Page tab content
                      ListView.builder(                            physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
                        itemCount: quranConsumer.pageList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(quranConsumer.pageList[index].toString()),
                          );
                        },
                      ),
          
                      // Juz tab content
                      ListView.builder(                            physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
                        itemCount: quranConsumer.juzList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(quranConsumer.juzList[index].toString()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}