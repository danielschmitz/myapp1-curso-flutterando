import 'package:flutter/material.dart';

import '../app_controller.dart';

class SwitchMyTheme extends StatelessWidget {
  const SwitchMyTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: (value) => {AppController.instance.changeTheme()},
      value: AppController.instance.isDarkTheme,
    );
  }
}
