// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../services/random_web_color_generator.dart';
import '../utils/utils.dart' as utils;

/// The Hello World Color greeting widget.
///
/// The widget is filled with the specified web color, and displays the color name in the center. It
/// also animates color changes.
class HelloWorldColor extends StatelessWidget {
  const HelloWorldColor({
    Key? key,
    required this.webColor,
    required this.greeting,
  }) : super(key: key);

  /// The web color being displayed.
  final WebColor webColor;

  /// The greeting to display before the color name.
  final String greeting;

  @override
  Widget build(BuildContext context) {
    final Color contrastColor = webColor.color.contrastColor();

    // Use an AnimatedContainer to animate the color change
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      color: webColor.color,
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16.0),

      // Use a RichText to display the greeting and the color name
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: '$greeting\n',
          style: DefaultTextStyle.of(context).style.copyWith(color: contrastColor),
          children: <TextSpan>[
            TextSpan(
              text: webColor.name,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: contrastColor),
            ),
          ],
        ),
      ),
    );
  }
}
