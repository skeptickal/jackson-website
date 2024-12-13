import 'package:flutter/material.dart';
import 'package:jackson_website/constants/constants.dart';
import 'package:jackson_website/pages/home_page_widgets/grad_and_work.dart';
import 'package:jackson_website/pages/home_page_widgets/home_app_bar.dart';
import 'package:jackson_website/pages/home_page_widgets/photo_and_contacts.dart';
import 'package:jackson_website/resources/jackson_drawer.dart';

class JacksonHomePage extends StatelessWidget {
  const JacksonHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      drawer: JacksonDrawer(),
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhotoAndContacts(),
            GradAndWork(),
          ],
        ),
      ),
    );
  }
}
