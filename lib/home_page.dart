import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;
  final List<String> category = [
    'All',
    'Healthy Food',
    'Junk Food',
    'Dessert',
    'Drinks',
    'Junk Food',
    'Dessert',
    'Drinks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F7FC),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FaIcon(FontAwesomeIcons.bars),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          border: Border.all(
                              color: Color(0xffFF594F).withOpacity(0.6)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/pic1.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Text(
                            'Enjoy your favorite food delicious',
                            style: TextStyle(
                              color: Color(0xff201F20),
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              // height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15),
                              child: FaIcon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: Color(0xff1F1F1F),
                              ),
                            ),
                            // prefixStyle: ,
                            hintText: 'Search...',
                            hintStyle: TextStyle(
                              color: Color(0xff201F20).withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 57),
                      SizedBox(
                        height: 15,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  category[index],
                                  style: TextStyle(
                                    color: index == selectedIndex
                                        ? Color(0xff201F20)
                                        : Color(0xff201F20).withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 0),
                          itemCount: category.length,
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        height: 295,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              child: Container(
                                width: 188,
                                // height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff201F20).withOpacity(0.1),
                                      offset: Offset(2, 6),
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Spacer(),
                                          FaIcon(FontAwesomeIcons.solidHeart),
                                        ],
                                      ),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/food1.png',
                                          width: 142,
                                          height: 142,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Eybisi Salad Mix',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff201F20),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Mix vegetables inggridients',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff201F20)
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        '\$14.99',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff201F20),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            width: 0,
                          ),
                          itemCount: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: BottomNavigationBar(
                    elevation: 0,
                    selectedItemColor: Color(0xffffffff),
                    unselectedItemColor: Color(0xffffffff).withOpacity(0.7),
                    backgroundColor: Color(0xff201F20),
                    items: const [
                      BottomNavigationBarItem(
                        icon: FaIcon(FontAwesomeIcons.house),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: FaIcon(FontAwesomeIcons.basketShopping),
                        label: 'Cart',
                      ),
                      BottomNavigationBarItem(
                        icon: FaIcon(FontAwesomeIcons.user),
                        label: 'Profile',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.all(Radius.circular(20)),
      //     child: BottomNavigationBar(
      //       elevation: 0,
      //       selectedItemColor: Colors.green,
      //       unselectedItemColor: Colors.amber,
      //       backgroundColor: Color(0xff201F20),
      //       type: BottomNavigationBarType.fixed,
      //       items: const [
      //         BottomNavigationBarItem(
      //           icon: FaIcon(FontAwesomeIcons.house),
      //           label: 'Home',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: FaIcon(FontAwesomeIcons.basketShopping),
      //           label: 'Cart',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: FaIcon(FontAwesomeIcons.user),
      //           label: 'Profile',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
