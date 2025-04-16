import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_project/NoteApp/NotePart/UpdatePage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.data, this.i});
  final Map<String, dynamic> data;
  final int? i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => EditScren(
                  create_at: data['create_at'],
                  tittle: data['tittle'],
                  text: data['text'],
                  index: i ?? 0,
                ),
          ),
        );
      },
      child: Card(
        color: Colors.grey.shade800,
        child: SizedBox(
          height: 200,
          width: MediaQuery.sizeOf(context).width / 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${data['tittle']}",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  "${data['text']}",
                  style: TextStyle(color: Colors.white, fontSize: 16,),maxLines:20,overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey,
                      child: Text("${i}"),
                    ),
                    Text("${data['create_at'].toString().substring(0, 15)}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
