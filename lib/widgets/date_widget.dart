import 'package:flutter/material.dart';
import 'package:teskbyhpw/constant/dimens.dart';

import '../constant/color.dart';

class Date_Widget extends StatelessWidget {
  const Date_Widget({
    Key? key,
    required this.Month,
    required this.Date,
    required this.Day,
    this.isSelected = false,
  }) : super(key: key);

  final String Month;
  final String Date;
  final String Day;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kSP70x,
      height: kSP100x,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius:
                (isSelected) ? BorderRadius.circular(kSP15x) : BorderRadius.zero),
        color: (isSelected) ? kSecondaryColor : kPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kSP10x),
              child: Text(
                Month,
                style: TextStyle(
                    fontSize: kSP15x,
                    color:
                        (isSelected) ? kSecondaryTextColor : kPrimaryTextColor),
              ),
            ),
            Text(
              Date,
              style: TextStyle(
                  fontSize: kSP30x,
                  color:
                      (isSelected) ? kSecondaryTextColor : kPrimaryTextColor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: kSP10x),
              child: Text(
                Day,
                style: TextStyle(
                    fontSize: kSP15x,
                    color:
                        (isSelected) ? kSecondaryTextColor : kPrimaryTextColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
