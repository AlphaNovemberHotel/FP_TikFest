import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/components/constans.dart';

class BTNTicketWidget extends StatefulWidget {
  const BTNTicketWidget({super.key});

  @override
  State<BTNTicketWidget> createState() => _BTNTicketWidgetState();
}

class _BTNTicketWidgetState extends State<BTNTicketWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: Constans.defaultPadding * 2,
              vertical: Constans.defaultPadding * 1.3,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadowColor: Colors.black,
            elevation: 7,
          ),
          child: Text(
            'Refund',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        // const Spacer(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: Constans.defaultPadding * 3,
              vertical: Constans.defaultPadding * 1.3,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadowColor: Colors.black,
            elevation: 7,
          ),
          child: Text(
            'Done',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );

    // Scaffold(
    // body: Column(
    //   children: [
    //     ElevatedButton(
    //       onPressed: () {},
    //       style: ElevatedButton.styleFrom(
    //         padding: const EdgeInsets.symmetric(
    //           horizontal: Constans.defaultPadding * 2,
    //           vertical: Constans.defaultPadding * 1.3,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(15),
    //         ),
    //         shadowColor: Colors.black,
    //         elevation: 7,
    //       ),
    //       child: Text(
    //         'Refund',
    //         style: Theme.of(context).textTheme.headline5?.copyWith(
    //               color: Colors.white,
    //               fontWeight: FontWeight.w500,
    //             ),
    //       ),
    //     ),
    // ElevatedButton(
    //   onPressed: () {},
    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.symmetric(
    //       horizontal: Constans.defaultPadding * 2,
    //       vertical: Constans.defaultPadding * 1.3,
    //     ),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(15),
    //     ),
    //     shadowColor: Colors.black,
    //     elevation: 7,
    //   ),
    //   child: Text(
    //     'Done',
    //     style: Theme.of(context).textTheme.headline5?.copyWith(
    //           color: Colors.white,
    //           fontWeight: FontWeight.w500,
    //         ),
    //   ),
    // ),
    //     ],
    //   ),
    // );
  }
}
