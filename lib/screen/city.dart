import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mobile/components/bottom_nav.dart';
import 'package:mobile/components/profile_card.dart';
import 'package:mobile/screen/chatlist.dart';
import 'package:mobile/screen/photo_profile.dart';
import 'package:mobile/screen/profile.dart';

class CityScreen extends HookWidget {
  final String imageLink;
  final String place;
  CityScreen({super.key, required this.place, required this.imageLink});

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place),
      ),
      bottomNavigationBar: BottomNav(),
      body: ListView(
        children: [
          Column(
            children: [
              Image.network(
                imageLink,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Where do you want to go?',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: () {
                      // TODO: Implement picker functionality
                    },
                  ),
                ),
                onChanged: (value) {
                  // TODO: Implement search functionality
                },
              ),
              Row(
                children: [
                  Container(
                    height: 180,
                    width: 210,
                    child: Card(
                      color: Color.fromARGB(255, 228, 247, 254),
                      elevation: 10,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Image.network(
                              'https://th.bing.com/th/id/OIP.25456G2XDEfiIJQeYUHyIAHaET?w=284&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('富士山ツアー'),
                                RatingBarIndicator(
                                  itemSize: 15,
                                  itemCount: 5,
                                  rating: 4.7,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 0, 140, 255),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: 180,
                      width: 210,
                      child: Card(
                        color: Color.fromARGB(255, 228, 247, 254),
                        elevation: 10,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image.network(
                                'https://th.bing.com/th/id/OIP.CIwNQKOfcKEnr3UQKlSb0AHaE9?w=266&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '富士急ハイランド',
                                    style: TextStyle(fontSize: 10.5),
                                  ),
                                  RatingBarIndicator(
                                    itemSize: 15,
                                    itemCount: 5,
                                    rating: 4.5,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 0, 140, 255),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: const Text('Photographer'),
                  ),
                  TextButton(
                    child: Text('see all'),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      ),
                      child: ProfileCard(
                        imageUrl:
                            'https://th.bing.com/th/id/OIP.2gDO0D0JtHDfc_8LoSWoGAAAAA?w=189&h=187&c=7&r=0&o=5&dpr=2&pid=1.7',
                        name: '猫ミーム',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: ProfileCard(
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.2gDO0D0JtHDfc_8LoSWoGAAAAA?w=189&h=187&c=7&r=0&o=5&dpr=2&pid=1.7',
                      name: '猫ミーム',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: ProfileCard(
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.2gDO0D0JtHDfc_8LoSWoGAAAAA?w=189&h=187&c=7&r=0&o=5&dpr=2&pid=1.7',
                      name: '猫ミーム',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

//               onChanged: (value) {
//                 // TODO: Implement search functionality
//               },
//             ),
//             ElevatedButton(
//               onPressed: () => Navigator.pushNamed(context, '/chat'),
//               child: null,
//             ),
//           ],
//         ));
  }
}
