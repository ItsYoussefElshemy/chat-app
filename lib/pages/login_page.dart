import 'package:chat/constance.dart';
import 'package:chat/pages/register_page.dart';
import 'package:chat/widgets/custom_button.dart';
import 'package:chat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  'Login',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),

            CustomTextField(hintText: 'Email'),
            const SizedBox(height: 10),

            CustomTextField(hintText: 'Password'),
            const SizedBox(height: 10),

            CustomButton(title: 'Login'),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have an acount ?',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text(
                    '  Register',
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
