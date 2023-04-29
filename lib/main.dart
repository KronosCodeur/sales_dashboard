import 'package:flutter/material.dart';
import 'package:sales_dashboard/screens/root_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RootApp().routeName,
      routes: {
        RootApp().routeName: (_) => RootApp(),
      },
    );
  }
}
