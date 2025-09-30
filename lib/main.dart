import 'package:chat/pages/login_page.dart';
import 'package:chat/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'LoginPage',
    );
  }
}
