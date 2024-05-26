part of '../custom_sign_up.dart';

final class _CustomSignGradient extends StatelessWidget {
  const _CustomSignGradient({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: _GradientBody(),
          ),
        ),
        child
      ],
    );
  }
}

final class _GradientBody extends LinearGradient {
  _GradientBody()
      : super(
          stops: [0, 0.1, 0.9, 1.0],
          colors: [
            const Color.fromARGB(255, 137, 245, 141),
            Colors.white,
            Colors.white,
            const Color.fromARGB(225, 223, 155, 38),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        );
}
