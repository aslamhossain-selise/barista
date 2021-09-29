import 'package:barista/constant.dart';
import 'package:barista/providers/order_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberCard extends StatelessWidget {
  final int number;

  NumberCard({
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    final amount = Provider.of<Order>(context);
    final n = amount.orderAmount.toString();

    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        number > 0 || int.parse(n) > 0
            ? Provider.of<Order>(context, listen: false).addOrder(number)
            : null;
      },
      child: Container(
        width: 120,
        height: 70,
        margin: EdgeInsets.all(5),
        color: Color(0xFF3A3A3A),
        child: Center(
          child: Text(
            '$number',
            style: TextStyle(
              color: kButtonBgColor,
              fontWeight: FontWeight.w600,
              fontFamily: kFontFamily,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
