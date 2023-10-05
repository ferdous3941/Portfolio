import 'package:flutter/material.dart';
import 'package:portfolio/Skills.dart';
import 'package:portfolio/Experiences.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/Certificates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
      theme: ThemeData(
        primaryColor: Colors.black87,
        hintColor: Colors.black87,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            color: Colors.black87,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Portfolio",
            style: Theme.of(context).textTheme.headline6!,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.teal),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.star, color: Colors.teal),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.work, color: Colors.teal),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.card_membership, color: Colors.teal),
                text: 'Certificates',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54, // Set the background color of the drawer to black
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 224, 228),
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Ferdous Hasan",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    accountEmail: Text(
                      "hasan15-3941@diu.edu.bd",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        "images/image_me.jpg",
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(133, 0, 0, 0),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    // Handle Home navigation here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Settings',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    // Handle Settings navigation here
                  },
                ),
                // Add more ListTile items for other navigation options with white text color
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            About(),
            Skills(),
            Experiences(),
            Certificates(),
          ],
        ),
      ),
    );
  }
}