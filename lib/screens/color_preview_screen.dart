// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../utils/utils.dart' as utils;

/// The color preview screen.
///
/// This screen is filled with the specified color, and only displays the default back action in the
/// app bar.
class ColorPreviewScreen extends StatelessWidget {
  /// Creates a new color preview screen.
  const ColorPreviewScreen({
    Key? key,
    required this.color,
  }) : super(key: key);

  /// The color to preview.
  final Color color;

  @override
  Widget build(BuildContext context) {
    final Color contrastColor = color.contrastColor();

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
        foregroundColor: contrastColor,
        elevation: 0.0,
      ),
    );
  }
}
