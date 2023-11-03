import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengaduan_masyarakat/Homepage.dart';
import 'package:pengaduan_masyarakat/controllers/masyarakatController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  MasyarakatController masyarakatController = Get.put(MasyarakatController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.deepPurple.shade300,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.message)),
                Tab(icon: Icon(Icons.call)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
            title: const Text('Pengaduan Masyarakat'),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      masyarakatController.getDataMasyarakat();
                    },
                    child: Icon(Icons.refresh),
                  )),
            ],
          ),
          body: TabBarView(
            children: [
              Homepage(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
