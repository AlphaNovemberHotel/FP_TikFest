    import 'dart:ui';

    import 'package:flutter/material.dart';
    import 'package:flutter/src/widgets/container.dart';
    import 'package:flutter/src/widgets/framework.dart';
    import 'package:tikfest/components/constans.dart';
    import 'package:tikfest/model/event_model.dart';
    import 'package:tikfest/screen/event/main/components/event_content.dart';
    import 'package:tikfest/screen/event/main/provider/button_widget.dart';
    import 'package:tikfest/screen/event/main/provider/event_page_provider.dart';
    import 'package:tikfest/screen/myticket/my_ticket_screen.dart';

    class EventPage extends StatelessWidget {
      // final EventModel event;
      const EventPage({
        super.key,
        // required this.event,
      });

      @override
      Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/Card_background_image_1.png',
                fit: BoxFit.cover,
              ),
            ),
            const ButtonWidget(),
            const EventContent(),
          ],
        )));
      }
    }





    // class EventPage extends StatefulWidget {
    //   const EventPage({super.key});

    //   @override
    //   State<EventPage> createState() => _EventPageState();
    // }

    // class _EventPageState extends State<EventPage> {
    //   @override
    //   Widget build(BuildContext context) {
    //     return SafeArea(
    //       child: Scaffold(
    //           body: CustomScrollView(
    //         slivers: [
    //           SliverToBoxAdapter(
    //             child: TextButton.icon(
    //               onPressed: () {
    //                 Navigator.push(context, MaterialPageRoute(builder: (context) {
    //                   return const MyTicket();
    //                 }));
    //               },
    //               style: TextButton.styleFrom(
    //                 foregroundColor: Colors.black,
    //                 textStyle: const TextStyle(fontSize: 20),
    //               ),
    //               icon: const Icon(
    //                 Icons.arrow_back_ios_new_rounded,
    //                 size: 24.0,
    //               ),
    //               label: const Text('Back'),
    //             ),
    //           ),
    //           SliverToBoxAdapter(
    //             child: Padding(
    //               padding: const EdgeInsets.symmetric(
    //                   horizontal: Constans.defaultPadding,
    //                   vertical: Constans.defaultPadding / 2),
    //               child: Text(
    //                 'Event Page',
    //                 style: Theme.of(context).textTheme.headline3,
    //               ),
    //             ),
    //           )
    //         ],
    //       )),
    //     );
    //   }
    // }
