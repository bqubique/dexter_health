import 'package:flutter/material.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/constants/shift_handover_theme.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/presentation/screens/shift_handover_screen.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShiftHandoverApp();
  }
}

class ShiftHandoverApp extends StatelessWidget {
  const ShiftHandoverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shift Handover',
      debugShowCheckedModeBanner: false,
      theme: kThemeData,
      home: const ShiftHandoverScreen(),
    );
  }
}
