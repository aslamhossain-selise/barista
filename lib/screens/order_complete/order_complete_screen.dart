import 'package:barista/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class OrderCompleteScreen extends StatelessWidget {
  static const routeName = '/order_complete_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/done_circular.svg'),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Order Complete!',
              style: TextStyle(
                fontSize: 20,
                fontFamily: kFontFamily,
                color: kBodyTextColor,
              ),
            )
          ],
        ),
        color: kButtonTextColor,
      ),
    );
  }
}
