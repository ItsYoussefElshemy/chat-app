import 'package:chat/constance.dart';
import 'package:chat/widgets/custom_button.dart';
import 'package:chat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  static String id = 'RegisterPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(height: 75),
            Image.asset('assets/scholar.png', height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chat App',
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 75),

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
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '  Login',
                    style: TextStyle(color: Color(0xffc7ede6)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
