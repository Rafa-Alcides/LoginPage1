// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:login_page/login-container.dart';
import 'package:login_page/social-container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  _columnWidget() {
    return Column(
      children: const <Widget>[
        Expanded(flex: 3, child: LoginContainer()),
        Expanded(flex: 1, child: SocialContainer())
      ],
    );
  }

  _toolBar() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        height: 40,
        child: Row(
          children: <Widget>[
            Image.asset("assets/imagem/drawer.png"),
            Expanded(child: Container()),
            Image.asset("assets/imagem/logo.png"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _columnWidget(),
        _toolBar(),
      ],
    );
  }
}
