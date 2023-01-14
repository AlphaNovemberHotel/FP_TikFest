import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/model/event_model.dart';
import 'package:tikfest/screen/cart/main/components/checkbox_tiles_widget.dart';
import 'package:tikfest/screen/cart/main/components/checkout_card.dart';
import 'package:tikfest/screen/cart/main/components/checkoutwidget.dart';
import 'package:tikfest/screen/cart/main/components/price_total.dart';
import 'package:tikfest/screen/cart/main/provider/main_cart_provider.dart';

class MainCartPage extends StatefulWidget {
  const MainCartPage({super.key});

  @override
  State<MainCartPage> createState() => _MainCartPageState();
}

class _MainCartPageState extends State<MainCartPage> {
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
                'Cart',
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
          // Buat cart checkout
          SliverToBoxAdapter(
            child: Consumer<MainCartProvider>(
                builder: (context, value, child) => Padding(
                      padding: const EdgeInsets.all(Constans.defaultPadding),
                      child: CheckoutCard(eventModel: value.user),
                    )),
          ),
          SliverToBoxAdapter(
            child: Consumer<MainCartProvider>(
                builder: (context, value, child) => Padding(
                      padding: const EdgeInsets.all(Constans.defaultPadding),
                      child: PriceTotal(eventModel: value.user),
                    )),
          ),
          const SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constans.defaultPadding,
                    vertical: Constans.defaultPadding / 2),
                child: CheckOutWdget()),
          ),
        ],
      ),
    ));
  }
}
