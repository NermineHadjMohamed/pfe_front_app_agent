
import 'package:demo_app/pages/ProductDetails_page.dart';
import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/prsentation/screen/read_write_nfc_screen.dart';
import 'package:demo_app/utils/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

<<<<<<< HEAD
=======
import 'models/login_response_model.dart';
import 'pages/role.page.dart';

>>>>>>> 0a0ccd66aaa85b1f0def1417ac45e1a9d89839b3
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Check if the user is logged in
  bool _result = await SharedService.isLoggedIn();

  if (_result) {
<<<<<<< HEAD
    _defaultHome = ReadWriteNFCScreen();
=======
    // If logged in, get the login details
    LoginResponseModel? loginResponse = await SharedService.loginDetails();
    if (loginResponse != null) {
      // Set the default home to RolePage with login details
      _defaultHome = RolePage(loginResponse: loginResponse);
    }
>>>>>>> 0a0ccd66aaa85b1f0def1417ac45e1a9d89839b3
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
<<<<<<< HEAD
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
=======
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
>>>>>>> 0a0ccd66aaa85b1f0def1417ac45e1a9d89839b3
      },
    );
  }
}
