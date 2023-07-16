import 'package:flutter/material.dart';

import 'views/homepage/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), /*  routes: routess, */
    ),
  );
}
