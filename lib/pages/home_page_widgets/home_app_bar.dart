import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      title: SelectableText(
        'Jackson Geer',
        style: googleFontStyle.copyWith(fontSize: 24),
      ),
      centerTitle: true,
      backgroundColor: bgColor,
    );
  }
}
