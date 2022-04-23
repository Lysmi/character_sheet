import 'package:flutter/material.dart';

import '../styles/colours.dart';


class InputDialog extends StatelessWidget {
  final Widget? child;

  const InputDialog({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 29),
              decoration: BoxDecoration(
                color: currTheme.mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: child),
        ],
      ),
    );
  }
}
