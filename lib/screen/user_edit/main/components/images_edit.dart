import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/model/user_model.dart';

class ImagesEdit extends StatelessWidget {
  final UserModel userModel;
  const ImagesEdit({super.key, required this.userModel});

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
          )
        ],
      ),
    );
  }
}
