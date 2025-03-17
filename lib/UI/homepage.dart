import 'package:flutter/material.dart';
import 'package:germankotha1/UI/control.dart';
import 'package:germankotha1/UI/grammer.dart';
import 'package:germankotha1/UI/liveclass.dart';
import 'package:germankotha1/UI/page-13.dart';
import 'package:germankotha1/UI/page-25.dart';
import 'package:germankotha1/UI/page-28.dart';
import 'package:germankotha1/UI/page24.dart';
import 'package:germankotha1/UI/profile.dart';
import 'package:germankotha1/UI/rotine.dart';
import 'package:germankotha1/UI/welcame_page.dart';
import 'package:germankotha1/UI/widget.dart';
import 'package:germankotha1/unilt/levelfrom.dart';

class LevelSelectionPage extends StatefulWidget {
  const LevelSelectionPage({super.key});

  @override
  _LevelSelectionPageState createState() => _LevelSelectionPageState();
}

class _LevelSelectionPageState extends State<LevelSelectionPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const WidgetsPage(),LearnPage(),

    Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: const Color(0xff2E826E),
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.widgets), label: "Widgets"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_input_composite), label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

// Placeholder pages
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: IconButton(
                icon: const Icon(Icons.notifications_none, color: Colors.black),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xff2E826E),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        image: const DecorationImage(
                          image: AssetImage("image/8.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Danilo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Level 1",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book_outlined),
                title: const Text('My Courses'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> LiveClassPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite_border),
                title: const Text('My Hearts'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>(PremiumFeaturesPage() )));
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> page24()));
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.help_outline),
                title: const Text('Help & Support'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> WelcamePage()));
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color:Colors.red, size: 28),
                const SizedBox(width: 8),
                ...List.generate(4, (index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.favorite, color:Colors.grey, size: 28),
                )),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("image/8.png"),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello, Danilo!",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        "At which level would you like to learn?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),
            SizedBox(height: 17,),
            Levelfrom(containercolor: Color(0xff2E826E), textcolor: Colors.white, laveltext: "leval 1", ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Page13()));
            }),
            SizedBox(height: 10,),
            Levelfrom(containercolor: Colors.grey, textcolor: Colors.white60, laveltext: "Level 2", ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Rotine()));
            }),
            SizedBox(height: 10,),
            Levelfrom(containercolor: Colors.grey, textcolor: Colors.white60, laveltext: "Level 3", ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Grammer()));
            }),
            SizedBox(height: 10,),Levelfrom(containercolor: Colors.grey, textcolor: Colors.white60, laveltext: "Level 4", ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> page288()));
            }),
            SizedBox(height: 10,)
          ],
        )

    );

  }
}





