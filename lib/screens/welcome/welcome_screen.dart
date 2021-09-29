import 'package:barista/components/button/custom_button.dart';
import 'package:barista/constant.dart';
import 'package:barista/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome_screen';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Image.asset('assets/images/welcome_coffee.png'),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome to Barista App',
                      style: TextStyle(
                        fontSize: 20,
                        color: kBodyTextColor,
                        fontFamily: kFontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                onPress: () =>
                    Navigator.pushNamed(context, LoginScreen.routeName),
                buttonText: 'Login/Registration',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
