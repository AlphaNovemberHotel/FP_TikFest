import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/card_model.dart';
import 'package:tikfest/screen/dashboard/main/components/card.dart';
import 'package:tikfest/screen/dashboard/main/components/hearder.dart';
import 'package:tikfest/screen/dashboard/main/components/search_widget.dart';

import 'package:tikfest/screen/dashboard/main/provider/main_dashboard_provider.dart';
import 'package:tikfest/screen/event/main/provider/event_page_provider.dart';

class MainDashboardPage extends StatefulWidget {
  const MainDashboardPage({Key? key}) : super(key: key);

  @override
  State<MainDashboardPage> createState() => _MainDashboardPageState();
}

class _MainDashboardPageState extends State<MainDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Consumer<MainDashboardProvider>(
                  builder: (context, value, child) => Padding(
                        padding: const EdgeInsets.all(Constans.defaultPadding),
                        child: HeaderRow(userModel: value.user),
                      )),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(Constans.defaultPadding),
                child: SearchWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constans.defaultPadding,
                    vertical: Constans.defaultPadding / 2),
                child: Text(
                  'Event List',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(Constans.defaultPadding),
                  child: CardWidget(
                    model: cardModelList.elementAt(index),
                    onTap: () {
                      setState(() {
                        cardModelList.elementAt(index).isFavorite =
                            !cardModelList.elementAt(index).isFavorite;
                      });
                    },
                  ),
                );
              }, childCount: cardModelList.length),
            ),
          ],
        ),
      ),
    );
  }
}
