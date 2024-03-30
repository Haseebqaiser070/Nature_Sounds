import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_theme.dart';

class HealingHomeScreen extends StatelessWidget {
  const HealingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        body: Container(
          child: Center(
            child: Text('Healing'),
          ),
        ),
      );
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
