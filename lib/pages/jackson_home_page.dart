import 'package:flutter/material.dart';
import 'package:jackson_website/constants/constants.dart';
import 'package:jackson_website/constants/images.dart';
import 'package:jackson_website/resources/jackson_drawer.dart';

class JacksonHomePage extends StatelessWidget {
  const JacksonHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: const JacksonDrawer(),
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: white),
        actions: const [
          Tooltip(
            message: 'Check out Jackson\'s resume',
            child: IconButton(
              onPressed: openResume,
              icon: Icon(
                Icons.book,
                color: white,
              ),
            ),
          ),
        ],
        title: Text(
          'Jackson Geer',
          style: googleFontStyle.copyWith(fontSize: 24),
        ),
        backgroundColor: burgundy,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(Images.jackson),
                radius: 120,
              ),
              seperation,
              Row(
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
              ),
              Column(
                children: [
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
                      Text(
                        'Contact Jackson',
                        style: googleFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  seperation,
                  const SmallHorizontalLine(),
                  seperation,
                  Text(
                    'Phone: 703-399-1737',
                    style: googleFontStyle.copyWith(fontSize: 12),
                  ),
                  seperation,
                  Text(
                    'Email: jacksongeer@gmail.com',
                    style: googleFontStyle.copyWith(fontSize: 12),
                  ),
                  seperation,
                  horizontalLine,
                  seperation,
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        color: white,
                        child: const Image(
                          image: AssetImage(Images.grad),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: educationSummary,
                        ),
                      ),
                    ],
                  ),
                  seperation,
                  horizontalLine,
                  seperation,
                  Row(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: workSummary,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        color: white,
                        child: const Image(
                          image: AssetImage(Images.work),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  seperation,
                  horizontalLine,
                  seperation,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
