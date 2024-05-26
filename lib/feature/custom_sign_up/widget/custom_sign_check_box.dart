part of '../custom_sign_up.dart';

class _CustomSignCheckBox extends StatelessWidget {
  const _CustomSignCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSignUpPadding.low.value),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: true,

            ///TODO: use from theme
            activeColor: Colors.green,
            onChanged: (value) {},
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          Text(
            CustomSignUpKeys.checkBoxTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
