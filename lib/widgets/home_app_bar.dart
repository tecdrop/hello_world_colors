// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../common/app_strings.dart' as strings;

/// The actions available in the app bar.
enum HomeAppBarActions { colorPreview, copy, rate, what }

/// The app bar of the Home Screen.
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
    required this.onAction,
  }) : super(key: key);

  /// The callback that is called when an app bar action is pressed.
  final Function(HomeAppBarActions action) onAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(strings.homeScreenTitle),
      actions: [
        IconButton(
          icon: const Icon(Icons.preview_outlined),
          tooltip: strings.colorPreviewActionTooltip,
          onPressed: () => onAction(HomeAppBarActions.colorPreview),
        ),
        PopupMenuButton<HomeAppBarActions>(
          onSelected: onAction,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<HomeAppBarActions>>[
            const PopupMenuItem<HomeAppBarActions>(
              value: HomeAppBarActions.copy,
              child: Text(strings.copyAction),
            ),
            const PopupMenuItem<HomeAppBarActions>(
              value: HomeAppBarActions.rate,
              child: Text(strings.rateAction),
            ),
            const PopupMenuItem<HomeAppBarActions>(
              value: HomeAppBarActions.what,
              child: Text(strings.appHomeAction),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
