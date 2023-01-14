import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';
import 'package:tikfest/model/user_model.dart';
import 'package:tikfest/screen/profile/main/profile_page.dart';
import 'package:tikfest/screen/user_edit/main/provider/main_user_edit_provider.dart';
import 'package:tikfest/screen/user_edit/main/user_edit_page.dart';

class UserSetting extends StatefulWidget {
  const UserSetting({super.key, required UserModel userModel});

  @override
  State<UserSetting> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserSetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
          // <-- TextButton
          onPressed: () {
            // Provider.of<MainUserEditProvider>(context, listen: false)
            //     .navigateTo(MainUserEditPage());
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const MainUserEditPage(

            //     ),
            //   ),
            // );
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 20),
          ),
          icon: const Icon(
            Icons.settings,
            size: 24.0,
          ),
          label: const Text('Setting'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: TextButton.icon(
            // <-- TextButton
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 20),
            ),
            icon: const Icon(
              Icons.info_outline,
              size: 24.0,
            ),
            label: const Text('About us'),
          ),
        ),
        // GFButton(
        //   onPressed: () {},
        //   text: "Setting",
        //   icon: Icon(Icons.settings),
        //   type: GFButtonType.transparent,
        // ),
        // GFButton(
        //   onPressed: () {},
        //   text: "About Us",
        //   icon: Icon(Icons.info_outline),
        //   type: GFButtonType.transparent,
        // ),
      ],
    );
  }
}
