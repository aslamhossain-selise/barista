import 'package:barista/constant.dart';
import 'package:flutter/cupertino.dart';

class AvailabilityNumbers extends StatelessWidget {
  final String title;
  final int number;

  AvailabilityNumbers({
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: kCardColor,
              fontFamily: kFontFamily,
            ),
          ),
          Text(
            '$number',
            style: TextStyle(
              color: kButtonBgColor,
              fontFamily: kFontFamily,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
