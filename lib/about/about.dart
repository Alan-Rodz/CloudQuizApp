import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/profile-img.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Im Alan Rodz.\n\nThis app was made as a project to learn about Flutter and Dart.\n\nI hope the content of the app is useful to you.\n\nYou can contact me through my personal webpage by clicking the button below :)',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            ElevatedButton(
              child: const Text('Go to my Webpage'),
              onPressed: () async {
                const url = 'https://alanrodz.com/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
