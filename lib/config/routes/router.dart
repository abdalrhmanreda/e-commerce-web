import 'package:e_commerce_web/config/routes/routes_path.dart';
import 'package:e_commerce_web/core/di/dependancy_injection.dart';
import 'package:e_commerce_web/features/home/ui/screens/home_screen.dart';
import 'package:e_commerce_web/features/login/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/logic/auth_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this argument is used to pass data from one screen to another
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutePath.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case RoutePath.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: const SignInAndSignUpScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
