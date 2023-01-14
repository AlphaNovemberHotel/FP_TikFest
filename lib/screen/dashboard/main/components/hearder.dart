import 'package:flutter/material.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/user_model.dart';

class HeaderRow extends StatelessWidget {
  final UserModel userModel;
  const HeaderRow({Key? key, required this.userModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome back',
                style: Theme.of(context).textTheme.headline1),
            Text(
              userModel.name,
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: const Color(0xFF848595),
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            userModel.profilePictureUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
