import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/images.dart';

class GradAndWork extends StatelessWidget {
  const GradAndWork({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final double horizontalPadding = screenWidth < 600
        ? 16.0 // Mobile
        : screenWidth < 1200
            ? 320.0 // Tablet
            : 800.0;
    List<Widget> gradInfo = [
      SizedBox(
        width: MediaQuery.of(context).size.width * .25,
        child: GestureDetector(
          onTap: () => showDialog(
            builder: (context) => AlertDialog(
              backgroundColor: burgundy,
              title: SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width * .5,
                child: const Image(
                  image: AssetImage(Images.grad),
                ),
              ),
            ),
            context: context,
          ),
          child: const Image(
            image: AssetImage(Images.grad),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: educationSummary,
      ),
    ];
    List<Widget> workInfo = [
      GestureDetector(
        onTap: () => showDialog(
          builder: (context) => AlertDialog(
            backgroundColor: burgundy,
            title: SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width * .5,
              child: const Image(
                image: AssetImage(Images.work),
              ),
            ),
          ),
          context: context,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .25,
          height: MediaQuery.of(context).size.width * .25,
          child: const Image(
            image: AssetImage(Images.work),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: ExpansionTile(
          collapsedBackgroundColor: bgColor,
          backgroundColor: burgundy,
          title: workTitle,
          collapsedIconColor: white,
          iconColor: white,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: workSummary,
            ),
          ],
        ),
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...gradInfo,
        seperation,
        seperation,
        ...workInfo,
        const SizedBox(
          height: 200,
        )
      ],
    );
  }
}
