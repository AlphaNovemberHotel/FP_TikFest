import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/screen/login/login_screen.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context){
            return const LoginScreen();
          }));
        },
        child: const Icon(
           Icons.arrow_back_ios_new_rounded,
                  size: 24.0,
                  color: Colors.black,
        ),
      ),
    );
  }
}