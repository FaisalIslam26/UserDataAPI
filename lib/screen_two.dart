import 'package:flutter/material.dart';
import 'package:screen1/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  static final String path = "ScreenTwo";
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as List;
    print("data $data");
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Text(data[index]["id"].toString()),
                      title: Text(data[index]["name"]),
                      subtitle: Text(data[index]["email"]),
                    );
                  }),
            ),

            // Text("people: ${data[0]} people: ${data[1]} People: ${data[2]}"),

            // Text("Name: ${data["name"]} std: ${data["std"]}"),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenThree.path);
              },
              child: Text("Screen Two"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
