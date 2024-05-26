import 'package:flutter/cupertino.dart';

@immutable

///Custom sign up keys
final class CustomSignUpKeys {
  CustomSignUpKeys._();

  //key for the header title
  static const headerTitle = 'Let\'s sign you up';
  static const headerSubtitle='Create an account to get all features';

  //Controllers
  static const nameContollerTitle='Name';
  static const emailContollerTitle='Email';
  static const passwordContollerTitle='Password';

  //Buttons
  static const signUpButtonTitle='Sign Up';
  static const signInButtonTitle='Sign In';
  static const alreadyHaveAccunt='Allready have an account ? ';
  static const checkBoxTitle='Agree to terms and conditions ? ';
}
