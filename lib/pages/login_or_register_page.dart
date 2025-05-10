import 'package:firabase_login_logout/pages/login_page.dart';
import 'package:firabase_login_logout/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrregisterPage extends StatefulWidget {
  const LoginOrregisterPage({super.key});

  @override
  State<LoginOrregisterPage> createState() => _LoginOrregisterPageState();
}

class _LoginOrregisterPageState extends State<LoginOrregisterPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
