import 'package:daily_news/modules/login/controller/login_controller.dart';
import 'package:daily_news/shared/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'login_page_children.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildContent(),
    );
  }
}
