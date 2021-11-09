import 'package:flutter/material.dart';
import 'package:screen1/screen_two.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenOne extends StatelessWidget {
  static final String path = "ScreenOne";
  ScreenOne({Key? key}) : super(key: key);
  String name = "Faisal";
  int std = 2020172;

  List<Map<String, dynamic>> People = <Map<String, dynamic>>[
    {
      "id": 01,
      "name": "Faisal Islam",
      "email": "faisal2619@gmail.com",
    },
    {
      "id": 02,
      "name": "Nissan",
      "email": "faisal2619@gmail.com",
    },
    {
      "id": 03,
      "name": "Foxu bro",
      "email": "faisal2619@gmail.com",
    },
    {
      "id": 04,
      "name": "Parvej",
      "email": "Parvej@gmail.com",
    },
    {
      "id": 05,
      "name": "Shakil",
      "email": "Shakil@gmail.com",
    },
  ];
  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      return launch(url);
    } else {
      throw "could not launch $url";
    }
  }

  Future launchEmail(String url) async {
    if (await canLaunch(url)) {
      return launch(url);
    } else {
      throw "could not launch $url";
    }
  }

  Future launchPhone(String url) async {
    if (await canLaunch(url)) {
      return launch(url);
    } else {
      throw "could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColorDark),
                onPressed: () {
                  Navigator.pushNamed(context, ScreenTwo.path,
                      arguments: People);
                },
                child: Text("ScreenOne")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () async {
          await launchURL("https://flutter.dev/");
          // await launchEmail(
          //     'mailto:${People[1]["email"]}?subject=News&body=New%20plugin');
          // await launchPhone("tel: 01674203635");
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
