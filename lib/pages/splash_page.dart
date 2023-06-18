import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{

  final VoidCallback onInitialisationComplete;

  const SplashPage({
    required key,
    required this.onInitialisationComplete,
  }): super(key: key) ;

  State<StatefulWidget> createState() {
    return _SplashPageState();
  }

}

class _SplashPageState extends State<SplashPage>{
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then(
            (_) => widget.onInitialisationComplete()
    );
    
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Smart Home',
        theme: ThemeData(colorScheme: ColorScheme.dark(),
          scaffoldBackgroundColor: Colors.grey[400],
        ),
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration:
            BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                image: AssetImage('assets/images/smart home.jpg'),
              )
            ),
          ),
        ),
      ),
    );

  }
}

