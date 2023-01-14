import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/user_model.dart';

class UserProfile extends StatelessWidget {
  final UserModel userModel;
  const UserProfile({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              userModel.profilePictureUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(userModel.name,
                style: Theme.of(context).textTheme.headline2),
          ),
          Text(
            userModel.email,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: const Color(0xFF848595),
                  fontWeight: FontWeight.w500,
                ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
          Container(
            padding: const EdgeInsets.all(Constans.defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Saldo', style: Theme.of(context).textTheme.headline5),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      userModel.money,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
