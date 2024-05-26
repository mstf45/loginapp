import 'package:flutter/cupertino.dart';

import 'custom_sign_up.dart';

//Custom sign up mixin for custom sign up wiev
mixin CustomSignUpMixin on State<CustomSignupView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
