import 'package:chat/widgets/custom_button.dart';
import 'package:chat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            Image.asset('assets/scholar.png'),
            Text(
              'Chat App',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            Spacer(flex: 2),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),

            CustomTextField(hintText: 'Email'),
            const SizedBox(height: 10),

            CustomTextField(hintText: 'Password'),
            const SizedBox(height: 10),

            CustomButton(title: 'Register'),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'you have an acount already ?',
                  style: TextStyle(color: Colors.white),
                ),
                Text('  Login', style: TextStyle(color: Color(0xffc7ede6))),
              ],
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
