import 'package:flutter/material.dart';

//Pages
import './pages/splash_page.dart';
import './pages/login_page.dart';
import './pages/home_page.dart';
import '../pages/register.dart';

void main() {
  runApp(
      SplashPage(
          key: UniqueKey(),
          onInitialisationComplete: (){
            runApp(
              MainApp(),
            );
          }
      )
  );
}

class MainApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      theme: ThemeData(colorScheme: ColorScheme.dark(),
        scaffoldBackgroundColor: Colors.grey[400],
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.grey[600],
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext _context) => LoginPage(),
         '/home':(BuildContext _context) => HomePage(),
        '/register':(BuildContext _context) => RegisterPage(),
      },
    );
  }

}

