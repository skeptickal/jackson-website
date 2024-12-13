import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/images.dart';

class GradAndWork extends StatelessWidget {
  const GradAndWork({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(18.0),
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(18.0),
          initiallyExpanded: true,
          collapsedBackgroundColor: burgundy,
          backgroundColor: burgundy,
          title: Text(
            'Learn of Jackson\'s Education',
            style: googleFontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          collapsedIconColor: white,
          iconColor: white,
          children: [
            educationSummary,
          ],
        ),
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
          height: MediaQuery.of(context).size.height * .25,
          child: const Image(
            image: AssetImage(Images.work),
            fit: BoxFit.cover,
          ),
        ),
      ),
      seperation,
      seperation,
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(18.0),
          initiallyExpanded: true,
          collapsedBackgroundColor: burgundy,
          backgroundColor: burgundy,
          title: workTitle,
          collapsedIconColor: white,
          iconColor: white,
          children: [
            workSummary,
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
