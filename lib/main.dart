// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion_Design',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.deepPurple,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Fashion Design',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.pink.shade300,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(12),
              scrollDirection: Axis.horizontal,
              children: [
                listElements('assets/images/model-1.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 12,
                ),
                listElements('assets/images/model-2.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 12,
                ),
                listElements('assets/images/model-3.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 12,
                ),
                listElements('assets/images/model-4.jpg',
                    'assets/images/chanellogo.jpg'),
                listElements('assets/images/model-1.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 12,
                ),
                listElements('assets/images/model-2.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 12,
                ),
                listElements('assets/images/model-3.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 12,
                ),
                listElements('assets/images/model-4.jpg',
                    'assets/images/chanellogo.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              elevation: 5,
              color: Colors.deepPurple.shade200,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                height: 450,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/model-1.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'A few min ago',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Colors.deepPurple.shade300),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 75,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.deepPurple,
                          size: 24,
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet."
                      "Et enim animi in excepturi inventore est asperiores veniam in sapiente repellendus aut nisi temporibus.",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/big-1.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  listElements(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 43,
              left: 36,
              child: Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 11,
        ),
        Container(
          height: 23,
          width: 77,
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade600,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
