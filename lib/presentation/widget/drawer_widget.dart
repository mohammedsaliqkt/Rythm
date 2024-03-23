import 'package:flutter/material.dart';
import 'package:music_app/core/utils/dynamic_size.dart';
import 'package:music_app/presentation/pages/About%20Page/about_page.dart';
import 'package:music_app/presentation/pages/Policy%20Page/policy_page.dart';
import 'package:music_app/presentation/pages/terms%20&%20condition/tems_and_condition.dart';
import 'package:music_app/presentation/widget/drawerlisttile_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: context.h(8 * 9)),
        children: <Widget>[
          DrawerListTile(
            drawerText: 'feedback ',
            ontap: () {
              email();
            },
            icon: Icons.feedback_outlined,
          ),
          DrawerListTile(
            drawerText: 'about  ',
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
            icon: Icons.info,
          ),
          DrawerListTile(
            drawerText: 'policy ',
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PolicyPage(),
                  ));
            },
            icon: Icons.policy,
          ),
          DrawerListTile(
            drawerText: 'Terms&conditions  ',
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsConditionsPage(),
                  ));
            },
            icon: Icons.policy,
          ),
        ],
      ),
    );
  }

  Future<void> email() async {
    await launchUrl(Uri.parse('mailto:mujthabakk9.com'));
  }
}
