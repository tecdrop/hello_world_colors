// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

// cSpell:ignore Cornsilk, Gainsboro, Rebecca

/// Defines an extension method on [Random] that generates a random web color.
library;

import 'dart:math';
import 'dart:ui';

/// The web color type, that contains the color name and the [Color] value.
///
/// Uses the new Dart Record syntax.
typedef WebColor = ({String name, Color color});

extension RandomWebColor on Random {
  /// An extension method on [Random] that generates a random web color.
  WebColor nextWebColor() {
    final int randomIndex = nextInt(_webColors.length);
    return _webColors[randomIndex];
  }
}

/// A list of web colors, that are randomly displayed by this app.
///
/// Based on [CSS Color Module Level 4](https://www.w3.org/TR/css-color-4/) named colors.
const List<WebColor> _webColors = [
  (name: 'Alice Blue', color: Color(0xFFF0F8FF)),
  (name: 'Antique White', color: Color(0xFFFAEBD7)),
  (name: 'Aqua', color: Color(0xFF00FFFF)),
  (name: 'Aquamarine', color: Color(0xFF7FFFD4)),
  (name: 'Azure', color: Color(0xFFF0FFFF)),
  (name: 'Beige', color: Color(0xFFF5F5DC)),
  (name: 'Bisque', color: Color(0xFFFFE4C4)),
  (name: 'Black', color: Color(0xFF000000)),
  (name: 'Blanched Almond', color: Color(0xFFFFEBCD)),
  (name: 'Blue', color: Color(0xFF0000FF)),
  (name: 'Blue Violet', color: Color(0xFF8A2BE2)),
  (name: 'Brown', color: Color(0xFFA52A2A)),
  (name: 'Burly Wood', color: Color(0xFFDEB887)),
  (name: 'Cadet Blue', color: Color(0xFF5F9EA0)),
  (name: 'Chartreuse', color: Color(0xFF7FFF00)),
  (name: 'Chocolate', color: Color(0xFFD2691E)),
  (name: 'Coral', color: Color(0xFFFF7F50)),
  (name: 'Cornflower Blue', color: Color(0xFF6495ED)),
  (name: 'Cornsilk', color: Color(0xFFFFF8DC)),
  (name: 'Crimson', color: Color(0xFFDC143C)),
  (name: 'Cyan', color: Color(0xFF00FFFF)),
  (name: 'Dark Blue', color: Color(0xFF00008B)),
  (name: 'Dark Cyan', color: Color(0xFF008B8B)),
  (name: 'Dark Golden Rod', color: Color(0xFFB8860B)),
  (name: 'Dark Gray', color: Color(0xFFA9A9A9)),
  (name: 'Dark Green', color: Color(0xFF006400)),
  (name: 'Dark Grey', color: Color(0xFFA9A9A9)),
  (name: 'Dark Khaki', color: Color(0xFFBDB76B)),
  (name: 'Dark Magenta', color: Color(0xFF8B008B)),
  (name: 'Dark Olive Green', color: Color(0xFF556B2F)),
  (name: 'Dark Orange', color: Color(0xFFFF8C00)),
  (name: 'Dark Orchid', color: Color(0xFF9932CC)),
  (name: 'Dark Red', color: Color(0xFF8B0000)),
  (name: 'Dark Salmon', color: Color(0xFFE9967A)),
  (name: 'Dark Sea Green', color: Color(0xFF8FBC8F)),
  (name: 'Dark Slate Blue', color: Color(0xFF483D8B)),
  (name: 'Dark Slate Gray', color: Color(0xFF2F4F4F)),
  (name: 'Dark Slate Grey', color: Color(0xFF2F4F4F)),
  (name: 'Dark Turquoise', color: Color(0xFF00CED1)),
  (name: 'Dark Violet', color: Color(0xFF9400D3)),
  (name: 'Deep Pink', color: Color(0xFFFF1493)),
  (name: 'Deep Sky Blue', color: Color(0xFF00BFFF)),
  (name: 'Dim Gray', color: Color(0xFF696969)),
  (name: 'Dim Grey', color: Color(0xFF696969)),
  (name: 'Dodger Blue', color: Color(0xFF1E90FF)),
  (name: 'Fire Brick', color: Color(0xFFB22222)),
  (name: 'Floral White', color: Color(0xFFFFFAF0)),
  (name: 'Forest Green', color: Color(0xFF228B22)),
  (name: 'Fuchsia', color: Color(0xFFFF00FF)),
  (name: 'Gainsboro', color: Color(0xFFDCDCDC)),
  (name: 'Ghost White', color: Color(0xFFF8F8FF)),
  (name: 'Gold', color: Color(0xFFFFD700)),
  (name: 'Golden Rod', color: Color(0xFFDAA520)),
  (name: 'Gray', color: Color(0xFF808080)),
  (name: 'Green', color: Color(0xFF008000)),
  (name: 'Green Yellow', color: Color(0xFFADFF2F)),
  (name: 'Grey', color: Color(0xFF808080)),
  (name: 'Honey Dew', color: Color(0xFFF0FFF0)),
  (name: 'Hot Pink', color: Color(0xFFFF69B4)),
  (name: 'Indian Red', color: Color(0xFFCD5C5C)),
  (name: 'Indigo', color: Color(0xFF4B0082)),
  (name: 'Ivory', color: Color(0xFFFFFFF0)),
  (name: 'Khaki', color: Color(0xFFF0E68C)),
  (name: 'Lavender', color: Color(0xFFE6E6FA)),
  (name: 'Lavender Blush', color: Color(0xFFFFF0F5)),
  (name: 'Lawn Green', color: Color(0xFF7CFC00)),
  (name: 'Lemon Chiffon', color: Color(0xFFFFFACD)),
  (name: 'Light Blue', color: Color(0xFFADD8E6)),
  (name: 'Light Coral', color: Color(0xFFF08080)),
  (name: 'Light Cyan', color: Color(0xFFE0FFFF)),
  (name: 'Light Golden Rod Yellow', color: Color(0xFFFAFAD2)),
  (name: 'Light Gray', color: Color(0xFFD3D3D3)),
  (name: 'Light Green', color: Color(0xFF90EE90)),
  (name: 'Light Grey', color: Color(0xFFD3D3D3)),
  (name: 'Light Pink', color: Color(0xFFFFB6C1)),
  (name: 'Light Salmon', color: Color(0xFFFFA07A)),
  (name: 'Light Sea Green', color: Color(0xFF20B2AA)),
  (name: 'Light Sky Blue', color: Color(0xFF87CEFA)),
  (name: 'Light Slate Gray', color: Color(0xFF778899)),
  (name: 'Light Slate Grey', color: Color(0xFF778899)),
  (name: 'Light Steel Blue', color: Color(0xFFB0C4DE)),
  (name: 'Light Yellow', color: Color(0xFFFFFFE0)),
  (name: 'Lime', color: Color(0xFF00FF00)),
  (name: 'Lime Green', color: Color(0xFF32CD32)),
  (name: 'Linen', color: Color(0xFFFAF0E6)),
  (name: 'Magenta', color: Color(0xFFFF00FF)),
  (name: 'Maroon', color: Color(0xFF800000)),
  (name: 'Medium Aqua Marine', color: Color(0xFF66CDAA)),
  (name: 'Medium Blue', color: Color(0xFF0000CD)),
  (name: 'Medium Orchid', color: Color(0xFFBA55D3)),
  (name: 'Medium Purple', color: Color(0xFF9370DB)),
  (name: 'Medium Sea Green', color: Color(0xFF3CB371)),
  (name: 'Medium Slate Blue', color: Color(0xFF7B68EE)),
  (name: 'Medium Spring Green', color: Color(0xFF00FA9A)),
  (name: 'Medium Turquoise', color: Color(0xFF48D1CC)),
  (name: 'Medium Violet Red', color: Color(0xFFC71585)),
  (name: 'Midnight Blue', color: Color(0xFF191970)),
  (name: 'Mint Cream', color: Color(0xFFF5FFFA)),
  (name: 'Misty Rose', color: Color(0xFFFFE4E1)),
  (name: 'Moccasin', color: Color(0xFFFFE4B5)),
  (name: 'Navajo White', color: Color(0xFFFFDEAD)),
  (name: 'Navy', color: Color(0xFF000080)),
  (name: 'Old Lace', color: Color(0xFFFDF5E6)),
  (name: 'Olive', color: Color(0xFF808000)),
  (name: 'Olive Drab', color: Color(0xFF6B8E23)),
  (name: 'Orange', color: Color(0xFFFFA500)),
  (name: 'Orange Red', color: Color(0xFFFF4500)),
  (name: 'Orchid', color: Color(0xFFDA70D6)),
  (name: 'Pale Golden Rod', color: Color(0xFFEEE8AA)),
  (name: 'Pale Green', color: Color(0xFF98FB98)),
  (name: 'Pale Turquoise', color: Color(0xFFAFEEEE)),
  (name: 'Pale Violet Red', color: Color(0xFFDB7093)),
  (name: 'Papaya Whip', color: Color(0xFFFFEFD5)),
  (name: 'Peach Puff', color: Color(0xFFFFDAB9)),
  (name: 'Peru', color: Color(0xFFCD853F)),
  (name: 'Pink', color: Color(0xFFFFC0CB)),
  (name: 'Plum', color: Color(0xFFDDA0DD)),
  (name: 'Powder Blue', color: Color(0xFFB0E0E6)),
  (name: 'Purple', color: Color(0xFF800080)),
  (name: 'Rebecca Purple', color: Color(0xFF663399)),
  (name: 'Red', color: Color(0xFFFF0000)),
  (name: 'Rosy Brown', color: Color(0xFFBC8F8F)),
  (name: 'Royal Blue', color: Color(0xFF4169E1)),
  (name: 'Saddle Brown', color: Color(0xFF8B4513)),
  (name: 'Salmon', color: Color(0xFFFA8072)),
  (name: 'Sandy Brown', color: Color(0xFFF4A460)),
  (name: 'Sea Green', color: Color(0xFF2E8B57)),
  (name: 'Sea Shell', color: Color(0xFFFFF5EE)),
  (name: 'Sienna', color: Color(0xFFA0522D)),
  (name: 'Silver', color: Color(0xFFC0C0C0)),
  (name: 'Sky Blue', color: Color(0xFF87CEEB)),
  (name: 'Slate Blue', color: Color(0xFF6A5ACD)),
  (name: 'Slate Gray', color: Color(0xFF708090)),
  (name: 'Slate Grey', color: Color(0xFF708090)),
  (name: 'Snow', color: Color(0xFFFFFAFA)),
  (name: 'Spring Green', color: Color(0xFF00FF7F)),
  (name: 'Steel Blue', color: Color(0xFF4682B4)),
  (name: 'Tan', color: Color(0xFFD2B48C)),
  (name: 'Teal', color: Color(0xFF008080)),
  (name: 'Thistle', color: Color(0xFFD8BFD8)),
  (name: 'Tomato', color: Color(0xFFFF6347)),
  (name: 'Turquoise', color: Color(0xFF40E0D0)),
  (name: 'Violet', color: Color(0xFFEE82EE)),
  (name: 'Wheat', color: Color(0xFFF5DEB3)),
  (name: 'White', color: Color(0xFFFFFFFF)),
  (name: 'White Smoke', color: Color(0xFFF5F5F5)),
  (name: 'Yellow', color: Color(0xFFFFFF00)),
  (name: 'Yellow Green', color: Color(0xFF9ACD32)),
];
