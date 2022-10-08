import 'package:flutter/material.dart';
import 'package:my_chat_app/widgets/auth_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  void _submitAuthForm(
    String email,
    String password,
    String userName,
    bool isLogin,
  ) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthForm(_submitAuthForm),
    );
  }
}
