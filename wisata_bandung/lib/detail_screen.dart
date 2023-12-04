import 'package:flutter/material.dart';
import 'package:wisata_bandung/model/tourism_place.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.asset(place.imageAsset),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              place.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Staatliches'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(Icons.calendar_today),
                    const SizedBox(height: 8),
                    Text(
                      place.openDays,
                      style: informationTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.access_time),
                    const SizedBox(height: 8),
                    Text(
                      place.openTime,
                      style: informationTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.monetization_on),
                    const SizedBox(height: 8),
                    Text(
                      place.ticketPrice,
                      style: informationTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              place.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontFamily: 'Oxygen'),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(url),
                      ));
                }).toList()),
          )
        ],
      ),
    )));
  }
}
