part of '../custom_sign_up.dart';

class _SignUpTextField extends StatelessWidget {
  const _SignUpTextField(
      {required String title,
      required TextEditingController controller,
      bool obscureText = false,
      TextInputType keyboardType = TextInputType.text})
      : _title = title,
        _controller = controller,
        _obscureText = obscureText,
        _keyboardType = keyboardType;

  final String _title;
  final TextEditingController _controller;
  final bool _obscureText;
  final TextInputType _keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSignUpPadding.low.value),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_title),
          Padding(
            padding: EdgeInsets.only(top: CustomSignUpPadding.low.value),
            child: TextField(
              keyboardType: _keyboardType,
              obscureText: _obscureText,
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                fillColor:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
