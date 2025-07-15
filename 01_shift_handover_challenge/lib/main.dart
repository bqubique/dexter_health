import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shift_handover_challenge/src/core/di/injection_container.dart';
import 'package:shift_handover_challenge/src/shift_handover_app.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      setupServiceLocator();
      runApp(const AppProviders());
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
