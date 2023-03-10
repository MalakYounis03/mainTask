import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            padding: EdgeInsets.only(top: 150),
            margin: EdgeInsets.all(40),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Notepad",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 4.0),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search notes',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        child: ListTile(
                          title: Text("first Note"),
                          subtitle: Text("my day was ..."),
                        ),
                        margin: EdgeInsets.only(bottom: 20),
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                            color: ifColor(index),
                            borderRadius: BorderRadius.circular(10)),
                      );
                    }),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black12,
        foregroundColor: Colors.black87,
      ),
    );
  }
}

Color ifColor(int index) {
  if (index % 2 == 0) {
    return Colors.black26;
  } else
    return Colors.black54;
}
