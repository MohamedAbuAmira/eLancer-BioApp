import 'package:flutter/material.dart';
import '../widgets/item_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Bio"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
          Colors.blueAccent,
          Colors.blueGrey
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/photo.jpeg'),
            radius: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mohammed Abu Amira',
              style: TextStyle(fontFamily: 'noto sans', fontWeight: FontWeight.bold),
            ),
          ),
          Text('Trainee as Flutter Developer \n in eLancer project at UCASTI', style: TextStyle(fontFamily: 'noto sans', fontWeight: FontWeight.w500)),
          Divider(
            color: Colors.white,
            indent: 20.0,
            endIndent: 20.0,
            thickness: 1.5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemCard(displayText: 'mohammed.tayser94@gmail.com', displayIcon: Icon(Icons.email)),
              ItemCard(displayText: '+97059776792', displayIcon: Icon(Icons.mobile_friendly_rounded)),
              ItemCard(displayText: 'Gaza Strip, Palestine', displayIcon: Icon(Icons.home)),
            ],
          ),
        ],
      ),
    );
  }
}
