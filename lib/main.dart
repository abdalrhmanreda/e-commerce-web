import 'package:e_commerce_web/config/routes/router.dart';
import 'package:e_commerce_web/core/di/dependancy_injection.dart';
import 'package:e_commerce_web/core/observer/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'male_fashion_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(MaleFashionApp(
    appRouter: AppRouter(),
  ));
}
