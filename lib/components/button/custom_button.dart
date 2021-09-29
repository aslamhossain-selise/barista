import 'package:barista/constant.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final Function? onPress;
  final String buttonText;
  final Color? color;

  CustomButton({
    this.onPress,
    required this.buttonText,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: CupertinoButton(
          disabledColor: Color(0xFF2E2E2E),
          onPressed: onPress != null
              ? () {
                  onPress!();
                }
              : null,
          color: color != null ? color : kButtonBgColor,
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 24,
              fontFamily: kFontFamily,
              color: color != null ? color : kButtonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
