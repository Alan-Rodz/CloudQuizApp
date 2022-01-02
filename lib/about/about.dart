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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'This app was made as a project to learn about Flutter and Dart.\n\nI hope the content of the app is useful to you.\n\nYou can contact me by clicking the button below :)',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            ElevatedButton(
              child: const Text('Go to my LinkedIn'),
              onPressed: () async {
                const url = 'https://www.linkedin.com/in/alan-rodriguez-16b074192/';
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
