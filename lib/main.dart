import 'package:e_commerce_web/config/routes/router.dart';
import 'package:flutter/material.dart';

import 'male_fashion_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaleFashionApp(
    appRouter: AppRouter(),
  ));
}
