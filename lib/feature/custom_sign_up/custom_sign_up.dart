import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/feature/custom_sign_up/widget/custom_sign_size_items.dart';
import 'custom_sign_up_keys.dart';
import 'custom_sign_up_padding.dart';
import 'custom_sing_up_mixin.dart';
part './widget/custom_sign_header_title.dart';
part './widget/custom_sign_controller.dart';
part './widget/custom_sign_button.dart';
part './widget/custom_sign_check_box.dart';
part './widget/custom_sign_already.dart';
part './widget/custom_sign_gradient.dart';

class CustomSignupView extends StatefulWidget {
  const CustomSignupView({super.key});

  @override
  State<CustomSignupView> createState() => _CustomSignupViewState();
}

class _CustomSignupViewState extends State<CustomSignupView>
    with CustomSignUpMixin {
  @override
  Widget build(BuildContext context) {
    return _CustomSignGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const BackButton(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: CustomSignUpPadding.medium.paddingHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _HeaderTitle(),
                _SignUpTextField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  title: CustomSignUpKeys.nameContollerTitle,
                ),
                _SignUpTextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  title: CustomSignUpKeys.emailContollerTitle,
                ),
                _SignUpTextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  title: CustomSignUpKeys.passwordContollerTitle,
                  obscureText: true,
                ),
                _CustomSignCheckBox(),
                _CustomSignButton(),
                _AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
