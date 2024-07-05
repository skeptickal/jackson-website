// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

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
SelectableText educationSummary = SelectableText(
  'Jackson Geer,\na distinguished graduate of George Mason University in Fairfax, VA, achieved a Bachelor of Individualized Study in Digital Technology and Strategic Communication in May 2021. His academic journey was marked by immersive courses, including Object Oriented Programming in Java, Computer Programming in Python, and IT Project Management. This comprehensive foundation laid the groundwork for his passion and proficiency in software development',
  style: googleFontStyle.copyWith(fontStyle: FontStyle.italic),
);

SelectableText workSummary = SelectableText(
  '''
In his professional journey, Jackson serves as a Software Support Specialist at Catalis, Court and Land Records, in Alpharetta, GA (Remote) since March 2024. In this role, he leverages his proficiency in SQL and Microsoft SQL Server Management Studio to manage and optimize databases for proprietary court record software, ensuring high performance and reliability. He provides expert technical support to clients, diagnosing and resolving software issues by analyzing error codes and collaborating with the development team to implement effective solutions. Jackson's role also involves managing server and database configurations, performing regular maintenance and updates to ensure the stability and security of client systems. Additionally, he utilizes Salesforce for ticket management, tracks client issues to ensure timely resolution, and facilitates seamless communication between clients and development teams, translating technical issues into actionable insights for continuous software improvement.

In the professional arena, Jackson served as a Leadership Development Specialist at ICOC in Vienna, VA, from August 2019 to December 2023. Throughout this transformative period, he led the charge in developing digital content, showcasing adaptability and technical prowess in response to the challenges posed by the COVID-19 pandemic. This role not only honed his leadership skills but also highlighted his strategic planning and execution capabilities.
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
