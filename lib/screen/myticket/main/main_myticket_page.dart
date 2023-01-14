import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/screen/myticket/main/components/button_ticket_widget.dart';
import 'package:tikfest/screen/myticket/main/components/checkbox_tiles_widget.dart';
import 'package:tikfest/screen/myticket/main/components/ticket_card.dart';
import 'package:tikfest/screen/myticket/main/provider/main_my_provider.dart';

class MainMyTicketPage extends StatefulWidget {
  const MainMyTicketPage({super.key});

  @override
  State<MainMyTicketPage> createState() => MainMyTicketPageState();
}

class MainMyTicketPageState extends State<MainMyTicketPage> {
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
                'My Ticket',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constans.defaultPadding,
                    vertical: Constans.defaultPadding / 2),
                child: CBTWidget()),
          ),
          SliverToBoxAdapter(
            child: Consumer<MainTicketProvider>(
                builder: (context, value, child) => Padding(
                      padding: const EdgeInsets.all(Constans.defaultPadding),
                      child: TicketCard(eventModel: value.user),
                    )),
          ),
          const SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constans.defaultPadding,
                    vertical: Constans.defaultPadding / 2),
                child: BTNTicketWidget()),
          ),
        ],
      )),
    );
  }
}
