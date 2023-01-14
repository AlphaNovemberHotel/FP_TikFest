import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/event_model.dart';

class TicketCard extends StatefulWidget {
  final EventModel eventModel;
  const TicketCard({super.key, required this.eventModel});

  @override
  State<TicketCard> createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 150),
      padding: const EdgeInsets.only(
          top: Constans.defaultPadding,
          bottom: Constans.defaultPadding,
          left: Constans.defaultPadding / 1.5,
          right: Constans.defaultPadding),
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
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              }),
          Container(
            width: 150,
            height: 150,
            constraints: const BoxConstraints(maxWidth: 120),
            margin: const EdgeInsets.only(
                left: Constans.defaultPadding / 10,
                right: Constans.defaultPadding / 2),
            padding: const EdgeInsets.all(Constans.defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                // image: AssetImage(eventModel.image),
                image: AssetImage('assets/images/Card_background_image_1.png'),
              ),
            ),
            // child: ,
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: max(MediaQuery.of(context).size.width - 250, 0),
                child: Text(
                  widget.eventModel.eventtitle,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.end,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // QRCode();
                  AwesomeDialog(
                    context: context,
                    headerAnimationLoop: false,
                    dialogType: DialogType.noHeader,
                    title: 'QR Code',
                    desc:
                        'Dialog description here..................................................',
                    body: 
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Give to the organizer to scan the QR Code"),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/QRCode.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    btnOkOnPress: () {
                      debugPrint('OnClcik');
                    },
                    btnOkIcon: Icons.check_circle,
                  ).show();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Constans.defaultPadding,
                    vertical: Constans.defaultPadding,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.black,
                  elevation: 7,
                ),
                child: Text(
                  'QR Code',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              // const Spacer(),
              Text(widget.eventModel.price,
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}
