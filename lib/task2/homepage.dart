import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebApp extends StatefulWidget {
  const WebApp({super.key});

  @override
  State<WebApp> createState() => _WebAppState();
}

class _WebAppState extends State<WebApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      // Image widget with reduced opacity
                      Container(
                        width: double.infinity,
                        height: constraints.maxWidth < 600 ? 250 : 350,
                        child: Image.asset(
                          'imageTask2/7farat.png',
                          fit: BoxFit.cover, // لضبط الصورة لتناسب الشاشة
                        ),
                      ),
                      // Transparent color overlay for the navigation bar
                      Container(
                        height: 50,
                        color: Colors.black.withOpacity(0.6),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('imageTask2/logo7farat.png'),
                              Spacer(),
                              Text(
                                'Home',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'About Us',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 17),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Products',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 17),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white38,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Packing',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 17),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Quality Control',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 17),
                              ),
                              Spacer(),
                              Text(
                                'EN',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                              ),
                              MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Contact Us',
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: Colors.orange,
                              )
                            ],
                          ),
                        ),
                      ),
                      // Centered text on the image
                      Positioned.fill(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Discover the ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          constraints.maxWidth < 600 ? 24 : 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Foundation ',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize:
                                          constraints.maxWidth < 600 ? 24 : 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'of ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          constraints.maxWidth < 600 ? 24 : 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Excellence In Mining ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      constraints.maxWidth < 600 ? 18 : 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Explore our offerings of silica sand, salt, gypsum, and more',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize:
                                      constraints.maxWidth < 600 ? 16 : 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 15),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 120, // Set the width of the button
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Colors.orange,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Discover ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 10,
                          width: 250,
                          color: Colors.orange.shade200,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 223,
                              width: 10,
                              color: Colors.orange.shade200,
                            ),
                            Container(
                              width: constraints.maxWidth < 600 ? 300 : 450,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset('imageTask2/7far2.jpg'),
                            ),
                            SizedBox(width: 40),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Enhance Your Projects With The Brilliance Of\nOur Mining Materials ',
                                  style: TextStyle(
                                    fontSize:
                                        constraints.maxWidth < 600 ? 16 : 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Our commitment to excellence goes beyond the surface its embedded in every grain of\n silica sand,'
                                  ' every crystal of salt, and every piece of gypsum.\n Explore the richness of our mining treasures,'
                                  ' where precision meets passion.\n Craft your projects with the assurance of unparalleled quality,'
                                  ' trust, and reliability.',
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontSize:
                                        constraints.maxWidth < 600 ? 14 : 15,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(height: 20),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.orange,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Discover ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Stack(
                    children: [
                      Container(
                        color: Colors.black,
                        height: 300,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 200,
                                child: Image(
                                  image:
                                      AssetImage('imageTask2/logo7farat.png'),
                                  fit:
                                      BoxFit.cover, // لضبط الصورة لتناسب الشاشة
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
