// ignore_for_file: avoid_web_libraries_in_flutter

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
Text educationSummary = Text(
  'Jackson Geer,\na distinguished graduate of George Mason University in Fairfax, VA, achieved a Bachelor of Individualized Study in Digital Technology and Strategic Communication in May 2021. His academic journey was marked by immersive courses, including Object Oriented Programming in Java, Computer Programming in Python, and IT Project Management. This comprehensive foundation laid the groundwork for his passion and proficiency in software development',
  style: googleFontStyle.copyWith(fontStyle: FontStyle.italic),
);

Text workSummary = Text(
  'In the professional arena, Jackson served as a Leadership Development Specialist at ICOC in Vienna, VA, from August 2019 to December 2023. Throughout this transformative period, he led the charge in developing digital content, showcasing adaptability and technical prowess in response to the challenges posed by the COVID-19 pandemic. This role not only honed his leadership skills but also highlighted his strategic planning and execution capabilities.\n\n'
  'Jackson\'s tenure at Crews Inc. in Dulles, VA, as a Team member, Sales Associate, and Customer IT Support Specialist further enriched his digital expertise. He seamlessly provided IT support, finding innovative solutions to customer IT issues, and engaged in suggestive selling for electronic products. These experiences collectively reflect his commitment to digital innovation, technical problem-solving, and leadership in the dynamic landscape of technology and communications.',
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
