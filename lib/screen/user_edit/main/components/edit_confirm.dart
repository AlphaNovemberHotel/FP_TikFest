import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/user_model.dart';

class EditConfirm extends StatefulWidget {
  const EditConfirm({super.key, required UserModel userModel});

  @override
  State<EditConfirm> createState() => _EditConfirmState();
}

class _EditConfirmState extends State<EditConfirm> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: Constans.defaultPadding * 2,
          vertical: Constans.defaultPadding * 1.3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.black,
        elevation: 7,
      ),
      child: Text(
        'Confirm',
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
