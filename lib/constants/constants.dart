// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

//Colors
const Color white = Colors.white;
const Color black = Colors.black;
const Color bgColor = Color.fromARGB(255, 32, 32, 32);
const Color burgundy = Color.fromARGB(255, 61, 10, 7);

//Style/Borders
TextStyle googleFontStyle = GoogleFonts.montserrat(color: white);
EdgeInsets rowItemPadding = const EdgeInsets.only(right: 16);
SizedBox seperation = const SizedBox(height: 10);
Container horizontalLine = Container(
  padding: const EdgeInsets.only(top: 10),
  decoration: const BoxDecoration(
    border: Border(bottom: BorderSide(color: white)),
  ),
);

//Misc
Text educationSummary = Text(
  'Jackson Geer,\na distinguished graduate of George Mason University in Fairfax, VA, achieved a Bachelor of Individualized Study in Digital Technology and Strategic Communication in May 2021. His academic journey was marked by immersive courses, including Object Oriented Programming in Java, Computer Programming in Python, and IT Project Management. This comprehensive foundation laid the groundwork for his passion and proficiency in software development',
  style: googleFontStyle.copyWith(fontStyle: FontStyle.italic),
);

SelectableText workSummary = SelectableText(
  '''
In his professional journey, Jackson serves as a Software Engineer and Flutter Developer at Cognizant Technology Solutions, subcontracted to Nationwide Insurance, since September 2024. In this role, he specializes in mobile app development using Flutter, ensuring seamless, user-centric experiences across Android and iOS platforms. Jackson demonstrates expertise in Dart programming, leveraging his skills to develop and maintain robust, scalable, and high-performing applications that align with Nationwide’s business objectives.

Before joining Cognizant, Jackson honed his software engineering skills as a freelance Flutter Developer. In this capacity, he collaborated with clients to design and deliver custom mobile applications tailored to their unique needs. His freelance work solidified his expertise in full-stack mobile development, including UI/UX design, API integration, and the use of state management tools like Bloc. This experience also developed his ability to manage projects independently, ensuring on-time delivery while maintaining high-quality standards.

From March 2024, Jackson also served as a Software Support Specialist at Catalis, Court and Land Records, in Alpharetta, GA (Remote). In this role, he leveraged his proficiency in SQL and Microsoft SQL Server Management Studio to manage and optimize databases for proprietary court record software, ensuring high performance and reliability. He provided expert technical support to clients, diagnosing and resolving software issues by analyzing error codes and collaborating with the development team to implement effective solutions. Jackson's responsibilities also included managing server and database configurations, performing regular maintenance and updates to ensure stability and security, and utilizing Salesforce for ticket management to track and resolve client issues effectively.

Previously, Jackson served as a Leadership Development Specialist at ICOC in Vienna, VA, from August 2019 to December 2023. During this period, he played a pivotal role in creating and managing digital content, demonstrating adaptability and technical acumen, especially in response to the challenges posed by the COVID-19 pandemic. This experience honed his leadership, strategic planning, and execution skills, preparing him for his current contributions in the technology sector.
''',
  style: googleFontStyle.copyWith(fontStyle: FontStyle.italic),
);

//Multiple Use Generic Functions
void openLinkedIn() {
  html.window.open('https://www.linkedin.com/in/jackson-geer-1a6955a0/', 'new tab');
}

void openGithub() {
  html.window.open('https://github.com/skeptickal', 'new tab');
}

void openInstagram() {
  html.window.open('https://www.instagram.com/the.skeptick/', 'new tab');
}

void openResume() {
  html.window.open('https://docs.google.com/document/d/1Ns6ugUkz24uSOSGm4ImIC8kipmFGyUaGK6hRwDM0oMI/edit?usp=sharing', 'new tab');
}

void openYoutube() {
  html.window.open('https://www.youtube.com/@skeptickal/featured', 'new tab');
}

void openEmail() async {
  var url = Uri.parse("mailto:jacksongeer@gmail.com?subject=Hello Jackson, let's connect&body= ");
  await launchUrl(url);
}

void openPlayStore() async {
  html.window.open('https://play.google.com/store/apps/details?id=com.JG.homeBrewed&hl=en_US', 'new tab');
}

void openAppStore() async {
  html.window.open('https://apps.apple.com/in/app/homebrewedios/id6496851936', 'new tab');
}

//Custom Widgets
class SmallHorizontalLine extends StatelessWidget {
  const SmallHorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.4),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: white)),
        ),
      ),
    );
  }
}

//client related
String localhost = '${Platform.isAndroid ? '10.0.2.2' : 'localhost'}:8080';
const Map<String, String> headers = {
  'Content-Type': 'application/json; charset=UTF-8',
};
