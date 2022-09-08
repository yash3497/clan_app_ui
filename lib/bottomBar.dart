// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber, width: 2),
                        ),
                        child: Image.asset(
                          'assets/images/game.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      left: 2,
                      right: 2,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black45,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Clan Name: Loreum Ipsum',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '28 members, 5 online',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Achievenemts',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    'Current League',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.shield_sharp,
                    color: Colors.amber,
                    size: 80,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    'Leauge Ranking',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '11th',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    'Experience',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    '2000 xp',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    '# of Wins',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  Text(
                    '3',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Past featured performances',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              buildRow('assets/images/girl.jpg',
                  'Priya in international\nDebating League'),
              SizedBox(
                height: 20,
              ),
              buildRow('assets/images/girl.jpg',
                  'Akshay in Global\nQuizzing Finals'),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'see more',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Live clan activities on platform',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              buildContainer(
                  'assets/images/key.jpg', 'Live trading\nchampionship'),
              SizedBox(
                height: 20,
              ),
              buildContainer('assets/images/key.jpg', 'Treasure hunt'),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'see more',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Clan discussion',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              buildColumn('General thread:', '15 unread messages'),
              SizedBox(
                height: 10,
              ),
              buildColumn('(live) Anyone enthu for trading leagues jfkhkkh',
                  '10 unread messages'),
              SizedBox(
                height: 10,
              ),
              buildColumn('(live) Anyone enthu for trading leagues jfkhkkh',
                  '10 unread messages'),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'see more',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Clan members',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              memberbuildRow(
                  'assets/images/girl.jpg', 'Loreum ipsum - Clan head'),
              SizedBox(
                height: 20,
              ),
              memberbuildRow(
                  'assets/images/men.jpg', 'Loreum ipsum - Debating Sensai'),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'see more',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: 'Ranking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'LeaderBoard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Image.asset(
                'assets/images/profile.jpg',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          print(index);
        },
      ),
    );
  }

  Row buildRow(String image, String value) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Container buildContainer(String image, String value) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          value,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Column buildColumn(String data, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data,
          style: TextStyle(
            fontSize: 20,
            color: Colors.pink,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 0,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row memberbuildRow(String image, String value) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Image.asset(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
