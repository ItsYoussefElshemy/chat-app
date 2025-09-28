import 'package:chat/widgets/custom_button.dart';
import 'package:chat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/scholar.png'),
            Text('Chat App', style: TextStyle(fontSize: 32, color: Colors.white)),
        
            Text('Login', style: TextStyle(fontSize: 24, color: Colors.white)),
        
            CustomTextField(hintText: 'Email'),
        
            CustomTextField(hintText: 'Password'),
        
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
