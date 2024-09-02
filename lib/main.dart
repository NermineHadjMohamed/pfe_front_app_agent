import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/utils/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/login_response_model.dart';
import 'pages/role.page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Check if the user is logged in
  bool _result = await SharedService.isLoggedIn();

  if (_result) {
    // If logged in, get the login details
    LoginResponseModel? loginResponse = await SharedService.loginDetails();
    if (loginResponse != null) {
      // Set the default home to RolePage with login details
      _defaultHome = RolePage(loginResponse: loginResponse);
    }
  }

  runApp(
    ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        '/': (context) => _defaultHome,
        '/Role': (BuildContext context) {
          final LoginResponseModel? loginResponse = ModalRoute.of(context)!.settings.arguments as LoginResponseModel?;
          if (loginResponse != null) {
            return RolePage(loginResponse: loginResponse);
          } else {
            return const LoginPage(); // fallback if no login response is provided
          }
        },
        '/login': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
