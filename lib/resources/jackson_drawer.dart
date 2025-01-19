import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:jackson_website/constants/constants.dart';
import 'package:jackson_website/constants/images.dart';

class JacksonDrawer extends StatelessWidget {
  const JacksonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: ListView(
        children: [
          const SizedBox(height: 10),
          ListTile(
            minVerticalPadding: 20,
            leading: const CircleAvatar(backgroundImage: AssetImage(Images.jackson)),
            trailing: IconButton(
                hoverColor: burgundy,
                icon: const Icon(
                  Icons.exit_to_app,
                  color: white,
                ),
                onPressed: () => Navigator.pop(context)),
          ),
          horizontalLine,
          ListTile(
            hoverColor: burgundy,
            onTap: openLinkedIn,
            trailing: const CircleAvatar(backgroundImage: AssetImage(Images.linkedin)),
            minVerticalPadding: 20,
            title: Text(
              'LinkedIn Profile',
              style: googleFontStyle.copyWith(fontSize: 12),
            ),
          ),
          ListTile(
            hoverColor: burgundy,
            onTap: openGithub,
            trailing: const CircleAvatar(backgroundImage: AssetImage(Images.github)),
            minVerticalPadding: 20,
            title: Text(
              'Github Profile',
              style: googleFontStyle.copyWith(fontSize: 12),
            ),
          ),
          ListTile(
            hoverColor: burgundy,
            onTap: openInstagram,
            trailing: const CircleAvatar(backgroundImage: AssetImage(Images.instagram)),
            title: Text(
              'Instagram Page',
              style: googleFontStyle.copyWith(fontSize: 12),
            ),
            minVerticalPadding: 20,
          ),
          ListTile(
            hoverColor: burgundy,
            onTap: openYoutube,
            trailing: const CircleAvatar(backgroundImage: AssetImage(Images.youtube)),
            title: Text(
              'Jackson\'s YouTube',
              style: googleFontStyle.copyWith(fontSize: 12),
            ),
            minVerticalPadding: 20,
          ),
          horizontalLine,
          seperation,
          seperation,
          Center(
            child: Text(
              'Apps',
              style: googleFontStyle,
            ),
          ),
          ExpansionTile(
              title: ListTile(
                hoverColor: burgundy,
                trailing: const CircleAvatar(backgroundImage: AssetImage(Images.homeBrewed)),
                title: Text(
                  'homeBrewed',
                  style: googleFontStyle.copyWith(fontSize: 12),
                ),
                minVerticalPadding: 20,
              ),
              children: [
                ListTile(
                  hoverColor: burgundy,
                  onTap: () => context.go('/homeBrewed'),
                  trailing: const CircleAvatar(backgroundImage: AssetImage(Images.homeBrewed)),
                  title: Text(
                    'homeBrewed web',
                    style: googleFontStyle.copyWith(fontSize: 12),
                  ),
                  minVerticalPadding: 20,
                ),
                ListTile(
                  hoverColor: burgundy,
                  onTap: openAppStore,
                  trailing: const CircleAvatar(backgroundImage: AssetImage(Images.apple)),
                  title: Text(
                    'homeBrewediOS on App Store',
                    style: googleFontStyle.copyWith(fontSize: 12),
                  ),
                  minVerticalPadding: 20,
                ),
                ListTile(
                  hoverColor: burgundy,
                  onTap: openPlayStore,
                  trailing: const CircleAvatar(backgroundImage: AssetImage(Images.android)),
                  title: Text(
                    'homeBrewed on Play Store',
                    style: googleFontStyle.copyWith(fontSize: 12),
                  ),
                  minVerticalPadding: 20,
                ),
              ]),
        ],
      ),
    );
  }
}
