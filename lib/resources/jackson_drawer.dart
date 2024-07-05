import 'package:flutter/material.dart';

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
          // ListTile(
          //   hoverColor: burgundy,
          //   onTap: openInstagram,
          //   trailing: const CircleAvatar(backgroundImage: AssetImage('youtube.png')),
          //   title: Text(
          //     'Project Demo Videos',
          //     style: googleFontStyle.copyWith(fontSize: 12),
          //   ),
          //   minVerticalPadding: 20,
          // ),
          // ListTile(
          //   hoverColor: burgundy,
          //   onTap: () => context.go('/summoner_lookup'),
          //   trailing: const CircleAvatar(backgroundImage: AssetImage(Images.league)),
          //   title: Text(
          //     'League of Legends Summoner Lookup',
          //     style: googleFontStyle.copyWith(fontSize: 12),
          //   ),
          //   minVerticalPadding: 20,
          // ),
        ],
      ),
    );
  }
}
