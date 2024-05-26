part of '../custom_sign_up.dart';

class _AlreadyHaveAccount extends StatelessWidget {
  const _AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSignUpPadding.medium.paddingVertical,
      child: Center(
        child: Text.rich(
          TextSpan(
            text: CustomSignUpKeys.alreadyHaveAccunt,
            children: [
              TextSpan(
                text: CustomSignUpKeys.signInButtonTitle,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
