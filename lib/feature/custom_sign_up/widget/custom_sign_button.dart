part of '../custom_sign_up.dart';

final class _CustomSignButton extends StatelessWidget {
  const _CustomSignButton({super.key});

  ThemeData _theme(BuildContext context) => Theme.of(context);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: _theme(context).colorScheme.onPrimary,
      splashColor:  _theme(context).colorScheme.onPrimary,
      onTap: () {},
      child: SizedBox(
        height: CustomSignSizeItems.normalButtonHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: CustomSignSizeItems.lowRadius,
            gradient: _ButtonGradiend(),
          ),
          child: Center(
            child: Text(
              CustomSignUpKeys.signUpButtonTitle,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: _theme(context).colorScheme.background,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}

final class _ButtonGradiend extends LinearGradient {
  _ButtonGradiend()
      : super(
          colors: [
            Colors.green,
            Colors.blue,
            Colors.purple,
            Colors.pink,
          ],
        );
}
