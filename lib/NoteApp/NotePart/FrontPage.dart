import 'package:flutter/material.dart';
import 'package:practice_project/NoteApp/NotePart/CreatePage.dart';
import 'package:practice_project/NoteApp/NotePart/FrontPage.dart'
    show CustomCard;
import 'package:practice_project/NoteApp/NotePart/SecondPart.dart'
    show CustomCard;

List<Map<String, dynamic>> noteList = [
  {"create_at": DateTime.now(), "tittle": "Tittle", "text": "Context"},
];

class FrontpageDesign extends StatefulWidget {
  const FrontpageDesign({super.key});

  @override
  State<FrontpageDesign> createState() => _FrontpageDesignState();
}

class _FrontpageDesignState extends State<FrontpageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Note App"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 10,
                ),
                hintText: "Search notes",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: noteList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(i: index + 1, data: noteList[index]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePageDesign()),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.grey.shade800,
      ),
    );
  }
}
