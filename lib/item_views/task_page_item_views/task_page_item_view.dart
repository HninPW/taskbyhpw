import 'package:flutter/material.dart';
import 'package:teskbyhpw/constant/color.dart';
import 'package:teskbyhpw/constant/dimens.dart';
import 'package:teskbyhpw/constant/string.dart';

import '../../widgets/card_widget.dart';
import '../../widgets/date_widget.dart';

class TaskPageItemView extends StatelessWidget {
  const TaskPageItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: kSP270x,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(kSP60x),
                bottomLeft: Radius.circular(kSP60x)),
          ),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.all(kSP20x),
                child: Text(
                  kTitle,
                  style: TextStyle(fontSize: kFS45x, fontWeight: FontWeight.bold,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kSP10x, right: kSP20x),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: kSP150x,
                    height: kSP80x,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kSecondaryColor)),
                      onPressed: () {},
                      child: const Text(kButtonTask,
                          style: TextStyle(fontSize: kFS20x, fontWeight: FontWeight.bold,)),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    top: kSP130x, bottom: kSP20x, left: kSP20x, right: kSP20x),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Date_Widget(
                      Month: kMonth,
                      Date: "3",
                      Day: "SUN",
                      isSelected: true,
                    ),
                    Date_Widget(
                      Month: kMonth,
                      Date: "4",
                      Day: "MON",
                      isSelected: true,
                    ),
                    Date_Widget(
                      Month: kMonth,
                      Date: "5",
                      Day: "TUE",
                      isSelected: true,
                    ),
                    Date_Widget(
                      Month: kMonth,
                      Date: "6",
                      Day: "WED",
                      isSelected: true,
                    ),
                    Date_Widget(
                      Month: kMonth,
                      Date: "7",
                      Day: "THU",
                      isSelected: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: kSP20x, bottom: 20,right: kSP300x),
          child: Text("Task",style: TextStyle(
            fontSize: kFS30x,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Card_Widget(),
        Card_Widget(),
        Card_Widget(),
        Card_Widget(),
      ],
    );

  }
}
