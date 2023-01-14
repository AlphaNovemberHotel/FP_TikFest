import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/components/constans.dart';

class EventContent extends StatefulWidget {
  const EventContent({super.key});

  @override
  State<EventContent> createState() => _EventContentState();
}

class _EventContentState extends State<EventContent> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.8,
        maxChildSize: 1.0,
        minChildSize: 0.7,
        builder: (context, scrollController) {
          return Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.grey,
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: Constans.defaultPadding / 10,
                          bottom: Constans.defaultPadding * 2,
                          left: Constans.defaultPadding * 2,
                          right: Constans.defaultPadding * 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Education BootCamp",
                              style: Theme.of(context).textTheme.headline2),
                          const Divider(
                            height: 20,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: Icon(
                                  Icons.location_on_rounded,
                                  size: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Location",
                                      style:
                                          Theme.of(context).textTheme.headline3),
                                  SizedBox(
                                    width: max(0,
                                        MediaQuery.of(context).size.width - 100),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "Jl. Ring Road Utara, Ngringin, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 20,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          Text("Description",
                              style: Theme.of(context).textTheme.headline3),
                          SizedBox(
                            width:
                                max(0, MediaQuery.of(context).size.width - 100),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                          const Divider(
                            height: 20,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Constans.defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    'Check Out',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        });
  }
}
