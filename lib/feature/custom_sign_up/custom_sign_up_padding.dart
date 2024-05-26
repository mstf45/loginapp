import 'package:flutter/cupertino.dart';

enum CustomSignUpPadding {
  //10
  low(10),

  //20
  medium(20),

  //30
  hight(30);

  final double value;
  const CustomSignUpPadding(this.value);

  //All sides padding with [value]
  EdgeInsets get padding => EdgeInsets.all(value);

  //Horizontal sides padding with [value]
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);

  //Vertical sides padding with [value]
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
}
