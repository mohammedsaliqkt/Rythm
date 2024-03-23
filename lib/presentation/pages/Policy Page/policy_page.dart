import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Our music app respects and protects the privacy of all users. This Privacy Policy explains how we collect, use, and disclose your personal information when you use our app.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Data Collection and Usage:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'We may collect certain information from you when you use our app, such as your device information, location, and usage data. This information is used to improve our services and provide personalized experiences for our users.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Third-party Services:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Our app may use third-party services, such as analytics tools or advertising networks, which may collect information about your use of the app. Please refer to the privacy policies of these third-party services for more information on how they handle your data.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Changes to This Policy:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'We reserve the right to update or change our Privacy Policy at any time. Any changes will be effective immediately upon posting the updated policy on this page.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PolicyPage(),
  ));
}
