import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserData extends StatefulWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  final Url = "https://jsonplaceholder.typicode.com/users";
  List User = [];
  Future getUser() async {
    final response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      setState(() {
        User = jsonDecode(response.body);
      });
      print(User);
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Data"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Text(User[index]["name"]),
                Text(User[index]["email"]),
                Text(
                  User[index]["address"]["street"].toString(),
                ),
                Text(
                  User[index]["address"]["city"].toString(),
                ),
              ],
            ),
          );
        },
        itemCount: User.length,
      ),
    );
  }
}
