import 'package:flutter/material.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/card_model.dart';
import 'package:tikfest/screen/event/main/event_page.dart';
import 'package:tikfest/screen/event/main/provider/event_page_provider.dart';

class CardWidget extends StatelessWidget {
  // final EventPageProvicer eventPageProvider;
  final CardModel model;
  final VoidCallback onTap;

  const CardWidget({
    Key? key,
    required this.model,
    required this.onTap,
    // required this.eventPageProvider
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EventPage()
                // {
                //   return EventPage(
                //     event: ,
                //     eventPageProvicer: eventPageProvicer,
                //   );
                // return EventPage();
                // return EventPage();
                // }
                ));
      },
      child: Container(
        constraints: const BoxConstraints(maxHeight: 200),
        padding: const EdgeInsets.all(Constans.defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(model.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(Constans.defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                  ),
                  child: Text('${model.totalParticipants} Participants'),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(Constans.defaultPadding),
                  child: GestureDetector(
                    onTap: onTap,
                    child: Icon(
                      model.getIcon(),
                      color: model.getIconColor(),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.all(Constans.defaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      model.getFormattedDate(),
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
