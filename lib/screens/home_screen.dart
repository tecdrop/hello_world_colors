// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/app_consts.dart' as consts;
import '../common/app_strings.dart' as strings;
import '../services/random_web_color_generator.dart';
import '../utils/utils.dart' as utils;
import '../widgets/hello_world_color.dart';
import '../widgets/home_app_bar.dart';
import 'color_preview_screen.dart';

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

  /// Perform the actions of the app bar.
  void _onAppBarAction(HomeAppBarActions action) {
    switch (action) {
      // Navigate to the Color Preview screen
      case HomeAppBarActions.colorPreview:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ColorPreviewScreen(color: _randomWebColor.color),
          ),
        );
        break;

      // Copy the color to the clipboard
      case HomeAppBarActions.copy:
        (() async {
          ScaffoldMessengerState messengerState = ScaffoldMessenger.of(context);
          String value = _randomWebColor.color.toHexString();
          try {
            await Clipboard.setData(ClipboardData(text: value));
            utils.showSnackBar(messengerState, strings.copiedSnack(value));
          } catch (error) {
            utils.showSnackBar(messengerState, strings.copiedErrorSnack(value));
          }
        }());
        break;

      // Open the Google Play app page to allow the user to rate the app
      case HomeAppBarActions.rate:
        utils.launchUrlExternal(context, consts.rateAppUrl);
        break;

      // Open the app home page in the default browser
      case HomeAppBarActions.what:
        utils.launchUrlExternal(context, consts.appHomeUrl);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The app bar with the title and main actions
      appBar: HomeAppBar(
        onAction: _onAppBarAction,
      ),

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
