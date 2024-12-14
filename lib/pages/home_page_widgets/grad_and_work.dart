import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/images.dart';

class GradAndWork extends StatelessWidget {
  const GradAndWork({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWebMobile = kIsWeb && (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android);
    List<Widget> gradInfo = [
      SizedBox(
        width: MediaQuery.of(context).size.width * .25,
        child: GestureDetector(
          onTap: () => showDialog(
            builder: (context) => const AlertDialog(
              scrollable: true,
              backgroundColor: burgundy,
              title: Image(
                image: AssetImage(Images.grad),
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
        padding: isWebMobile ? const EdgeInsets.all(18.0) : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.33, vertical: 18),
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(18.0),
          initiallyExpanded: isWebMobile ? false : true,
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
          builder: (context) => const AlertDialog(
            backgroundColor: burgundy,
            title: Image(
              image: AssetImage(Images.work),
            ),
            scrollable: true,
          ),
          context: context,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .25,
          child: const Image(
            image: AssetImage(Images.work),
            fit: BoxFit.cover,
          ),
        ),
      ),
      seperation,
      seperation,
      Padding(
        padding: isWebMobile ? const EdgeInsets.all(18.0) : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.33, vertical: 18),
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(18.0),
          initiallyExpanded: isWebMobile ? false : true,
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
