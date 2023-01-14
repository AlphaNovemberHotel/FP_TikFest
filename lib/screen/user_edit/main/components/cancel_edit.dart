import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/model/user_model.dart';
import 'package:tikfest/screen/profile/main/profile_page.dart';

class CancelEdit extends StatefulWidget {
  const CancelEdit({super.key, required UserModel userModel});

  @override
  State<CancelEdit> createState() => CancelEditState();
}

class CancelEditState extends State<CancelEdit> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            textStyle: const TextStyle(fontSize: 16),
          ),
          child: Text(
            "Cancel",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ],
    );
  }
}
