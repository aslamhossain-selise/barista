import 'package:barista/components/button/custom_button.dart';
import 'package:barista/constant.dart';
import 'package:barista/screens/order/order_screen.dart';
import 'package:barista/screens/qr_scan/qr_scan_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScanScreen extends StatelessWidget {
  static const routeName = '/scan_screen';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        leading: CupertinoButton(
          padding: EdgeInsets.all(0),
          child: SvgPicture.asset(
            'assets/icons/nav_logo.svg',
            width: 40,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: kButtonTextColor,
        trailing: CupertinoButton(
          onPressed: () {},
          padding: EdgeInsets.all(0),
          child: Container(
            width: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/user.png',
                  width: 32,
                ),
                Text(
                  'Daniel Brunner',
                  style: TextStyle(
                    color: CupertinoColors.white,
                  ),
                ),
                SvgPicture.asset('assets/icons/keyboard_arrow_down.svg'),
              ],
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Image.asset('assets/icons/scan_camera.png'),
            Spacer(),
            CustomButton(
                onPress: () =>
                    Navigator.pushNamed(context, OrderScreen.routeName),
                buttonText: 'Click to Scan'),
          ],
        ),
      ),
    );
  }
}
