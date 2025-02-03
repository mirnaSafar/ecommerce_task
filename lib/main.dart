import 'package:flutter/material.dart';

import 'app/app.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  // di.sl<SharedPreferences>().clear();
  runApp(MyApp());
}

