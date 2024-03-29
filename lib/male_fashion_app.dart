import 'package:e_commerce_web/config/routes/router.dart';
import 'package:e_commerce_web/config/routes/routes_path.dart';
import 'package:e_commerce_web/config/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaleFashionApp extends StatelessWidget {
  final AppRouter appRouter;
  const MaleFashionApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          locale: const Locale('en', 'US'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: 'Male Fashion',
          theme: Style.lightTheme,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: RoutePath.home,
        );
      },
    );
  }
}
