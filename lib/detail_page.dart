import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F7FC),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 16, 35, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FaIcon(FontAwesomeIcons.arrowLeft),
                  FaIcon(FontAwesomeIcons.cartShopping),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Stack(
                children: [
                  SizedBox(
                    height: 357,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            'Easy Greak Salad',
                            style: TextStyle(
                              color: Color(0xff201F20),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 19),
                        Text(
                          'price',
                          style: TextStyle(
                            color: Color(0xff201F20).withOpacity(0.6),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '\$21.99',
                          style: TextStyle(
                            color: Color(0xff201F20),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 23),
                        Text(
                          'Choice quantity',
                          style: TextStyle(
                            color: Color(0xff201F20).withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 13),
                        Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              color: Colors.white,
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.minus,
                                  size: 14,
                                ),
                              ),
                            ),
                            SizedBox(width: 13),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xff201F20),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 13),
                            Container(
                              height: 24,
                              width: 24,
                              color: Colors.white,
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.plus,
                                  size: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -70,
                    bottom: 45,
                    child: Container(
                      height: 267,
                      width: 267,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Color(0xffFF594F).withOpacity(0.6)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/food2.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    children: [
                      SizedBox(height: 48),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              color: Color(0xff201F20),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: Color(0xffFF9A00),
                                size: 14,
                              ),
                              SizedBox(width: 8),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Color(0xffFF9A00),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Text(
                        'This Italian salad is full of all the right flavors and textures: crisp lettuce, crunchy garlic croutons, and zingy pepperoncini. It’s covered in punchy, herby Italian vinaigrette that makes the flavors sing! It can play sidekick to just about anything.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff201F20),
                          height: 1.8,
                        ),
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 52,
                            width: 139,
                            decoration: BoxDecoration(
                              color: Color(0xff201F20),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Order Now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 52,
                            width: 139,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0xff201F20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Add Cart',
                                style: TextStyle(
                                  color: Color(0xff201F20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
