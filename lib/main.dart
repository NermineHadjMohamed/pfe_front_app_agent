
import 'package:demo_app/pages/ProductDetails_page.dart';
import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/prsentation/screen/read_write_nfc_screen.dart';
import 'package:demo_app/utils/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool _result = await SharedService.isLoggedIn();

  if (_result) {
    _defaultHome = ReadWriteNFCScreen();
  }

  runApp(
    ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: SharedService.isLoggedIn(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(body: Center(child: CircularProgressIndicator())),
          );
        }

        final bool isLoggedIn = snapshot.data ?? false;

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          navigatorKey: navigatorKey,
          routes: <String, WidgetBuilder>{
            '/': (context) =>
                isLoggedIn ?  ReadWriteNFCScreen() : const LoginPage(),
            '/loginAgent': (BuildContext context) => const LoginPage(),
            '/ProductDetails': (BuildContext context) => ProductDetailsPage(),
           
          },
        );
      },
    );
  }
}