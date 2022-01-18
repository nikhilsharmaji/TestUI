import 'package:flutter/material.dart';
import 'package:testui/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 25, 15, 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 5.0), // shadow direction: bottom right
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              // elevation: 6,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(35)),
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Recipes Curated for your Breakfast",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(18, 8, 0, 25),
                    child: Text(
                        'Are you hungry? We thought so. Browse through these recipes curated just for you to feed your hunger',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  ),
                  TopCards(
                    dishCalories: '273 Calories',
                    dishCategory: "Indian",
                    dishName: 'Aamras',
                    dishTime: '15 mins',
                    imagePath: 'assets/images/aam.jpg',
                  ),
                  TopCards(
                    dishCalories: '253 Calories',
                    dishCategory: "Italian",
                    dishName: 'Tiramisu',
                    dishTime: '30 mins',
                    imagePath: 'assets/images/tira.jpeg',
                  ),
                  TopCards(
                    dishCalories: '133 Calories',
                    dishCategory: "South Indian",
                    dishName: 'Dosa',
                    dishTime: '30 mins',
                    imagePath: 'assets/images/dosa.jpg',
                  ),
                  TopCards(
                    dishCalories: '1013 Calories',
                    dishCategory: "Italian",
                    dishName: 'Cheese Pizza',
                    dishTime: '30 mins',
                    imagePath: 'assets/images/pizza.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Food',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_dining,
              ),
              label: 'Restaurants'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFfd8b19),
        selectedIconTheme: IconThemeData(color: Color(0xFFfd8b19)),
        unselectedItemColor: Colors.black87,
        unselectedIconTheme: const IconThemeData(color: Colors.black87),
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
