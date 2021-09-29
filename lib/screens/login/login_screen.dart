import 'package:barista/components/button/custom_button.dart';
import 'package:barista/constant.dart';
import 'package:barista/screens/scan/scan_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: kButtonTextColor,
        automaticallyImplyLeading: false,
        leading: CupertinoButton(
          onPressed: () => Navigator.pop(context),
          child: SvgPicture.asset('assets/icons/arrow_back.svg'),
        ),
      ),
      child: SafeArea(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log in with your email',
                    style: TextStyle(
                      color: kBodyTextColor,
                      fontSize: 20,
                      fontFamily: kFontFamily,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CupertinoTextField(
                    decoration: BoxDecoration(
                      color: kButtonTextColor,
                      border: Border(
                        bottom: BorderSide(
                          color: CupertinoColors.white,
                          width: 1,
                        ),
                      ),
                    ),
                    placeholder: 'example@selise.ch',
                    placeholderStyle: TextStyle(
                      color: Color.fromRGBO(193, 193, 193, 0.5),
                      fontFamily: kFontFamily,
                    ),
                    showCursor: true,
                    cursorColor: kButtonBgColor,
                    cursorWidth: 1,
                    suffix: SvgPicture.asset(
                      'assets/icons/mail.svg',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: true,
                    autofillHints: [AutofillHints.email],
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CupertinoTextField(
                    decoration: BoxDecoration(
                      color: kButtonTextColor,
                      border: Border(
                        bottom: BorderSide(
                          color: CupertinoColors.white,
                          width: 1,
                        ),
                      ),
                    ),
                    placeholder: 'password',
                    placeholderStyle: TextStyle(
                      color: Color.fromRGBO(193, 193, 193, 0.5),
                      fontFamily: kFontFamily,
                    ),
                    showCursor: true,
                    cursorColor: kButtonBgColor,
                    cursorWidth: 1,
                    suffix: SvgPicture.asset(
                      'assets/icons/eye_off.svg',
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                    onChanged: (value) => {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'I forgot my password',
                        style: TextStyle(
                          color: kBodyTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Spacer(),
            CustomButton(
                onPress: () {
                  Navigator.pushNamed(context, ScanScreen.routeName);
                },
                buttonText: 'Login'),
          ],
        )),
      ),
    );
  }
}
