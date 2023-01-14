import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tikfest/screen/user_edit/main/components/cancel_edit.dart';
import 'package:tikfest/screen/user_edit/main/components/edit_confirm.dart';
import 'package:tikfest/screen/user_edit/main/components/images_edit.dart';
import 'package:tikfest/screen/user_edit/main/components/input_email_widget.dart';
import 'package:tikfest/screen/user_edit/main/components/input_name_widget.dart';
import 'package:tikfest/screen/user_edit/main/components/input_password_widget.dart';
import 'package:tikfest/screen/user_edit/main/provider/main_user_edit_provider.dart';

import '../../../components/constans.dart';

class MainUserEditPage extends StatefulWidget {
  const MainUserEditPage({Key? key}) : super(key: key);

  @override
  State<MainUserEditPage> createState() => _MainUserEditPageState();
}

class _MainUserEditPageState extends State<MainUserEditPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Consumer<MainUserEditProvider>(
                builder: (context, value, child) => Padding(
                      padding: const EdgeInsets.all(Constans.defaultPadding),
                      child: CancelEdit(userModel: value.user),
                    )),
          ),
          SliverToBoxAdapter(
            child: Consumer<MainUserEditProvider>(
                builder: (context, value, child) => Padding(
                      padding: const EdgeInsets.all(Constans.defaultPadding),
                      child: ImagesEdit(userModel: value.user),
                    )),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Constans.defaultPadding,
                  vertical: Constans.defaultPadding),
              child: Divider(
                height: 1,
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constans.defaultPadding,
                  vertical: Constans.defaultPadding / 100),
              child: Text(
                'Name :',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(Constans.defaultPadding),
              child: InputNameWidget(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constans.defaultPadding,
                  vertical: Constans.defaultPadding / 100),
              child: Text(
                'Email :',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(Constans.defaultPadding),
              child: InputEmailWidget(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constans.defaultPadding,
                  vertical: Constans.defaultPadding / 100),
              child: Text(
                'Password :',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(Constans.defaultPadding),
              child: InputPasswordWidget(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Constans.defaultPadding,
                  vertical: Constans.defaultPadding),
              child: Divider(
                height: 1,
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Consumer<MainUserEditProvider>(
                builder: (context, value, child) => Padding(
                      padding: const EdgeInsets.all(Constans.defaultPadding),
                      child: EditConfirm(userModel: value.user),
                    )),
          ),
        ],
      ),
    ));
  }
}
