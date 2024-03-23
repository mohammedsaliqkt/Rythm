import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  _launchURL(String url) async {
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Our Music App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Welcome to our music app! We strive to provide the best music listening experience for our users. Here\'s a little bit about what our app offers:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              '- Discover a vast library of songs across various genres.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              '- Create and customize your own playlists.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              '- Enjoy high-quality audio streaming.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              '- Stay up-to-date with the latest music releases and trends.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/in/mohammedsaliqkt');
                  },
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  onPressed: () {
                    _launchURL('https://github.com/mohammedsaliq');
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Thank you for using our app and supporting us!',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
