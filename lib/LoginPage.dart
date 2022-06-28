import 'package:flutter/material.dart';
import 'package:login_page/login-container.dart';
import 'package:login_page/social-container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  _columnWidget() {
    return Column(
      children: const <Widget>[
        Expanded(child: LoginContainer()),
        Expanded(child: SocialContainer())
      ],
    );
  }

  _buttonMid() {
    return const Center(
      child: CircleAvatar(
        maxRadius: 30.0,
        child: Icon(Icons.keyboard_arrow_down),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _columnWidget(),
        _buttonMid(),
      ],
    );
  }
}
