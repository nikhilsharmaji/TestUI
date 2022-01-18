import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        child: ListView(
          shrinkWrap: true,
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
            Container(
                padding: const EdgeInsets.fromLTRB(30, 5, 20, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 5.0), // shadow direction: bottom right
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleImage(
                            image:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Tiramisu_-_Raffaele_Diomede.jpg/800px-Tiramisu_-_Raffaele_Diomede.jpg'),
                        CircleImage(
                          image:
                              'https://static.toiimg.com/thumb/53238170.cms?imgsize=195776&width=800&height=800',
                        ),
                        CircleImage(
                          image:
                              'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/garimasgautam-gmail.com/Indo_Chinese_Chicken_Hakka_Noodles.jpg',
                        ),
                        CircleImage(
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg',
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        CircleImage(
                          image:
                              'https://www.ambitiouskitchen.com/wp-content/uploads/2018/02/chickensoup-2-725x725-1.jpg',
                        ),
                        CircleImage(
                          image:
                              'https://www.licious.in/blog/wp-content/uploads/2020/12/Turkish-Kebabs-min.jpg',
                        ),
                        CircleImage(
                          image:
                              'https://www.sbs.com.au/food/sites/sbs.com.au.food/files/adana-kebabs-with-onion-salad-tomatoes-chillies.jpg',
                        ),
                        CircleImage(
                          image:
                              'https://static.toiimg.com/thumb/59052760.cms?width=1200&height=900',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text('Latest Recipes',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text("Let's go down reading lane",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 250,
              width: double.infinity,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ImageContainer(),
                  ImageContainer(),
                  ImageContainer(),
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
