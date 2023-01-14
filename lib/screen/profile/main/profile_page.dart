import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/card_model.dart';
import 'package:tikfest/screen/dashboard/main/components/card.dart';
import 'package:tikfest/screen/dashboard/main/components/hearder.dart';
import 'package:tikfest/screen/dashboard/main/components/search_widget.dart';
import 'package:tikfest/screen/dashboard/main/provider/main_dashboard_provider.dart';
import 'package:tikfest/screen/profile/main/components/user_logout.dart';
import 'package:tikfest/screen/profile/main/components/user_profile.dart';
import 'package:tikfest/screen/profile/main/components/user_setting.dart';
import 'package:tikfest/screen/profile/main/components/user_top_up.dart';
import 'package:tikfest/screen/profile/main/provider/main_profile_provider.dart';

class MainProfilePage extends StatefulWidget {
  const MainProfilePage({Key? key}) : super(key: key);

  @override
  State<MainProfilePage> createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constans.defaultPadding,
                    vertical: Constans.defaultPadding / 2),
                child: Text(
                  'Profile',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Consumer<MainProfileProvider>(
                  builder: (context, value, child) => Padding(
                        padding: const EdgeInsets.all(Constans.defaultPadding),
                        child: UserProfile(userModel: value.user),
                      )),
            ),
            SliverToBoxAdapter(
              child: Consumer<MainProfileProvider>(
                  builder: (context, value, child) => Padding(
                        padding: const EdgeInsets.all(Constans.defaultPadding),
                        child: UserTopUp(userModel: value.user),
                      )),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constans.defaultPadding,
                    vertical: Constans.defaultPadding / 1000),
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
              child: Consumer<MainProfileProvider>(
                  builder: (context, value, child) => Padding(
                        padding: const EdgeInsets.all(Constans.defaultPadding),
                        child: UserSetting(userModel: value.user),
                      )),
            ),
            SliverToBoxAdapter(
              child: Consumer<MainProfileProvider>(
                  builder: (context, value, child) => Padding(
                        padding: const EdgeInsets.all(Constans.defaultPadding),
                        child: UserLogout(userModel: value.user),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
