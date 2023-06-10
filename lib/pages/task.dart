import 'package:flutter/material.dart';
import 'package:teskbyhpw/constant/color.dart';
import 'package:teskbyhpw/item_views/task_page_item_views/task_page_item_view.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color:  kIconColor),
          onPressed: (){ },
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search , color:  kIconColor)),
        ],
      ),
      body: const TaskPageItemView() ,

    );
  }
}
