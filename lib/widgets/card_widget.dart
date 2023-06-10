import 'package:flutter/material.dart';
import 'package:teskbyhpw/constant/color.dart';
import 'package:teskbyhpw/constant/dimens.dart';

class Card_Widget extends StatelessWidget {
  const Card_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.only(top: kSP10x, left: kSP20x,right: kSP20x),
      color: kPrimaryColor,
      child: ListTile(
        leading:CircleAvatar(
          backgroundColor: kSecondaryColor,
          child: Icon(Icons.assignment, color: kPrimaryColor),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: kSP10x),
          child: Text("Project",style: TextStyle(fontSize: kFS18x, fontWeight: FontWeight.bold,),),
        ),
        isThreeLine: true,
        subtitle: Padding(
          padding: EdgeInsets.only(top: kSP10x,bottom: kSP10x),
          child: Text(
              "2 days ago"),
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
