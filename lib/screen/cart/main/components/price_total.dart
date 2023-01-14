import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/event_model.dart';

class PriceTotal extends StatelessWidget {
  final EventModel eventModel;
  const PriceTotal({super.key, required this.eventModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constans.defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Total Price', style: Theme.of(context).textTheme.headline5),
            ],
          ),
          Column(
            children: [
              Text(
                eventModel.price,
                style: Theme.of(context).textTheme.headline5,
              ),  
            ],
          ),
        ],
      ),
    );
  }
}
