import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'design_system/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const RandomDopamineGame());
}

class RandomDopamineGame extends StatelessWidget {
  const RandomDopamineGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Dopamine Game',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const Scaffold(
        body: Center(
          child: Text('Random Dopamine Game'),
        ),
      ),
    );
  }
}
