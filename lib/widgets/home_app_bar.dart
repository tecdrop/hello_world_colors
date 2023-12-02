// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../common/app_strings.dart' as strings;

/// The actions available in the app bar.
enum HomeAppBarActions { colorPreview, copy, about }

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
      actions: <Widget>[
        // The color preview action
        IconButton(
          icon: const Icon(Icons.visibility_rounded),
          tooltip: strings.colorPreviewActionTooltip,
          onPressed: () => onAction(HomeAppBarActions.colorPreview),
        ),
        PopupMenuButton<HomeAppBarActions>(
          onSelected: onAction,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<HomeAppBarActions>>[
            // The copy color code action
            const PopupMenuItem<HomeAppBarActions>(
              value: HomeAppBarActions.copy,
              child: Text(strings.copyAction),
            ),
            // The app homepage action
            const PopupMenuItem<HomeAppBarActions>(
              value: HomeAppBarActions.about,
              child: Text(strings.aboutAction),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
