import 'package:band_names/models/models.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Band> bands = [
    Band(id: '1', name: 'Metallica', votes: 5),
    Band(id: '2', name: 'Queen', votes: 1),
    Band(id: '3', name: 'Heroes del silencio', votes: 2),
    Band(id: '4', name: 'Bon Jovi', votes: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'BandNames',
              style: TextStyle(color: Colors.black87),
            ),
            backgroundColor: Colors.white,
            actions: []),
        body: ListView.builder(
          itemCount: bands.length,
          itemBuilder: (context, index) {
            return _bandTile(bands[index]);
          },
        ));
  }

  ListTile _bandTile(Band band) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(band.name.substring(0, 2)),
      ),
    );
  }
}
