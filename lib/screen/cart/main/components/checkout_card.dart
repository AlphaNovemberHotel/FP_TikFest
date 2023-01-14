import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/event_model.dart';

class CheckoutCard extends StatefulWidget {
  final EventModel eventModel;
  const CheckoutCard({super.key, required this.eventModel});

  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
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
                left: Constans.defaultPadding / 5,
                right: Constans.defaultPadding / 2),
            padding: const EdgeInsets.all(Constans.defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Card_background_image_1.png'),
              ),
            ),
            // child: ,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: max(0, MediaQuery.of(context).size.width - 250),
                child: Text(
                  'Education Bootcamp',
                  style: Theme.of(context).textTheme.bodyText1,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
              ),
              Text(widget.eventModel.price,
                  style: Theme.of(context).textTheme.bodyText1),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete_outline_rounded)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
