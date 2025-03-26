import 'package:contained_tab_bar_view/contained_tab_bar_view.dart'
    show ContainedTabBarView;
import 'package:flutter/material.dart';
import 'package:practice_project/NoteApp/BackupPart/FirstPage.dart';
import 'package:practice_project/NoteApp/BackupPart/SecondPart.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.note,)),
              Tab(icon: Icon(Icons.check_box)),
            ],
          ),
          title: Text("NOTES"),
          centerTitle: true,
        ),
        body: TabBarView(children: [
          FirstPage(),
          Secondpart()
        ]),
      ),
    );
  }
}
