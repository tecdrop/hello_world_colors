// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'package:flutter/material.dart';

import '../common/app_strings.dart' as strings;
import '../services/random_web_color_generator.dart';
import '../widgets/hello_world_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// The random number generator used to generate the web colors.
  static final Random _random = Random();

  /// The current random web color being displayed.
  late WebColor _randomWebColor;

  /// Generates a random web color when the state is initialized.
  @override
  void initState() {
    super.initState();
    _shuffleColor(changeState: false);
  }

  /// Shuffles the web color being displayed, and optionally updates the state of the widget.
  void _shuffleColor({bool changeState = true}) {
    if (changeState) {
      setState(() => _randomWebColor = _random.nextWebColor());
    } else {
      _randomWebColor = _random.nextWebColor();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: HomeAppBar(
      //   onAction: _onAppBarAction,
      // ),

      // The body of the screen is the Hello World Color widget
      body: HelloWorldColor(
        webColor: _randomWebColor,
      ),

      // The floating action button is used to shuffle the color being displayed
      floatingActionButton: FloatingActionButton.large(
        tooltip: strings.homeFabTooltip,
        onPressed: () => _shuffleColor(),
        child: const Icon(Icons.shuffle),
      ),
    );
  }
}
