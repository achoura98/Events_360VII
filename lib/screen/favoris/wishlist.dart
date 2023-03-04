import 'package:event_360/provider/favs_provider.dart';
import 'package:event_360/screen/favoris/wishlist_empty.dart';
import 'package:event_360/screen/favoris/wishlist_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/custom_app_bar.dart';

//page de favoris

class WishlistScreen extends StatelessWidget {
  static String routeName = "/wishlistScreen";
  @override
  Widget build(BuildContext context) {
    final favsProvider = Provider.of<FavsProvider>(context);

    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          CustomAppBar(),
        ];
      },
      body: favsProvider.getFavsItems.isEmpty
          ? WishlistEmpty()
          : ListView.builder(
              itemCount: favsProvider.getFavsItems.length,
              itemBuilder: (BuildContext ctx, int index) {
                return ChangeNotifierProvider.value(
                    value: favsProvider.getFavsItems.values.toList()[index],
                    child: WishlistCard(
                      eventId: favsProvider.getFavsItems.keys.toList()[index],
                    ));
              },
            ),
    );
  }
}
