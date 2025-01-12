import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nivvesh/authentication/signup.dart';
// import 'package:flutter/services.dart';
import 'package:nivvesh/constants/themes.dart';
import 'package:nivvesh/home_page/infrastructure/home_repository.dart';
import 'package:nivvesh/home_page/screens/bottom_nav.dart';
import 'package:nivvesh/shared/routes.dart';
import 'package:nivvesh/shared/service_locator.dart';

Future<void> main() async {
  await setupServiceLocator();
  // await SystemChrome.setPreferredOrientations(
  //   [DeviceOrientation.portraitUp],
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => HomeRepository(
            sl(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          RepositoryProvider(
            create: (context) => HomeRepository(
              sl(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Invvesh',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          // initialRoute: RouteGenerator.homeScreen,
          onGenerateRoute: RouteGenerator.generateRoute,
          home: const SignupPage(),
        ),
      ),
    );
  }
}