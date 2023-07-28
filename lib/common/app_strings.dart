// Copyright 2020-2023 Tecdrop (www.tecdrop.com)
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

/// String constants used in the user interface of the app.
library;

const String appName = 'Hello World Colors';

// -----------------------------------------------------------------------------
// Home Screen
// -----------------------------------------------------------------------------

const String homeScreenTitle = 'Hello World Colors';
const String homeFabTooltip = 'Next random color';

const String colorPreviewActionTooltip = 'Color preview';
const String copyAction = 'Copy color code';
const String rateAction = 'Rate app';
const String appHomeAction = 'App homepage';

String copiedSnack(String value) => '$value copied to clipboard';
String copiedErrorSnack(String value) => 'Copy to clipboard failed: $value';
