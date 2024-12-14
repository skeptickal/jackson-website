import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jackson_website/constants/images.dart';

import '../../constants/constants.dart';

class PhotoAndContacts extends StatelessWidget {
  const PhotoAndContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWebMobile = kIsWeb && (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android);
    return Column(
      children: [
        GestureDetector(
          onTap: () => showDialog(
            builder: (context) => const AlertDialog(
              scrollable: true,
              backgroundColor: burgundy,
              title: Image(
                image: AssetImage(Images.jackson),
              ),
            ),
            context: context,
          ),
          child: const CircleAvatar(
            backgroundImage: AssetImage(Images.jackson),
            radius: 120,
          ),
        ),
        seperation,
        isWebMobile
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tooltip(
                      message: 'Check out Jackson\'s LinkedIn profile',
                      child: IconButton(hoverColor: burgundy, onPressed: openLinkedIn, icon: Image.asset(Images.linkedin, width: 50, height: 50))),
                  Tooltip(
                      message: 'Check out Jackson\'s Github profile',
                      child: IconButton(hoverColor: burgundy, onPressed: openGithub, icon: Image.asset(Images.github, width: 50, height: 50))),
                  Tooltip(
                      message: 'Check out Jackson\'s Instagram Page',
                      child: IconButton(hoverColor: burgundy, onPressed: openInstagram, icon: Image.asset(Images.instagram, width: 50, height: 50))),
                ],
              )
            : const SizedBox(),
        Column(children: [
          seperation,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: rowItemPadding,
                child: const Icon(
                  Icons.mail,
                  color: white,
                ),
              ),
              SelectableText(
                'Contact Jackson',
                style: googleFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          seperation,
          const SmallHorizontalLine(),
          seperation,
          SelectableText(
            'Phone: 703-399-1737',
            style: googleFontStyle.copyWith(fontSize: 12),
          ),
          seperation,
          TextButton(
              onPressed: openEmail,
              child: Text(
                'Email: jacksongeer@gmail.com',
                style: googleFontStyle.copyWith(fontSize: 12),
              )),
          seperation,
          seperation
        ]),
      ],
    );
  }
}
