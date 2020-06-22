import 'package:flutter/material.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({
    this.restaurantData,
  });

  final Restaurant restaurantData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading:
            IconButton(icon: const Icon(Icons.arrow_back), iconSize: 30.0, onPressed: () => Navigator.pop(context)),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.mapMarkerAlt, color: Colors.white),
              color: Colors.transparent,
              label: const Text('Geolocation', style: TextStyle(color: Colors.white)))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: restaurantData.name,
                child: ClipRRect(
                  child: Image(
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                    colorBlendMode: BlendMode.darken,
                    height: MediaQuery.of(context).size.width - 100,
                    width: MediaQuery.of(context).size.width,
                    image: NetworkImage(restaurantData.featuredPhoto),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                height: MediaQuery.of(context).size.width - 100,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(restaurantData.name,
                        style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white)),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Text('${restaurantData.userRating.votes}',
                            style: const TextStyle(color: Colors.white, fontSize: 16.0)),
                        const Text('⭐', style: TextStyle(fontSize: 16.0)),
                        Text('  (${restaurantData.userRating.votes})',
                            style: const TextStyle(color: Colors.white, fontSize: 16.0))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(restaurantData.name,
                        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
                    // (data.establishment[0] == '' ? Text('', style: TextStyle(color: Colors.grey, fontSize: 14.0)) :
                    // Text(data.establishment[0], style: TextStyle(color: Colors.grey, fontSize: 14.0))),
                  ],
                ),
                IconButton(icon: const Icon(FontAwesomeIcons.solidHeart, color: Colors.red), onPressed: () async {}),
              ],
            ),
          ),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: Divider()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Location',
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                Text(restaurantData.location.address, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: Divider()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Cuisines',
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                Text('${restaurantData.cuisines}', style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: const Divider()),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Text('Reviews', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0.0),
              children: <Widget>[
                Shimmer.fromColors(
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      leading: const CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.grey,
                      ),
                      title: Container(height: 50.0, width: double.infinity, color: Colors.grey),
                    ),
                    baseColor: Colors.grey[500],
                    highlightColor: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
