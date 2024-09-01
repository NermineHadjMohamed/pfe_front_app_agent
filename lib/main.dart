import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/utils/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/role.page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Widget _defaultHome = const LoginPage();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool _result = await SharedService.isLoggedIn();

  if (_result) {
    _defaultHome = const RolePage();
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
        '/Role': (BuildContext context) => const RolePage(),
        '/login': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
