// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        image: const DecorationImage(
            image: ExactAssetImage("assets/imagem/background.jpg"),
            fit: BoxFit.cover),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
        ),
      ),
    );
  }
}
