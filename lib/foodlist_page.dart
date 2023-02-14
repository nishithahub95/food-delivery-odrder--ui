import 'package:flutter/material.dart';

class foodlist extends StatelessWidget {
  const foodlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.only(left: 47, right: 50),
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('images/Thandoori.jfif'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Chicken Tandoori',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(
                              'Served with Tandoori Roti/Naan',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Text(
                            '\u{20B9}' '230',
                            style: TextStyle(color: Colors.deepOrange),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 47, right: 50),
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('images/rotti.jfif'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Rumali Roti',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(
                              'Three roti each',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Text(
                            '\u{20B9}' '200',
                            style: TextStyle(color: Colors.deepOrange),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 47, right: 50),
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'images/shake.jpg',
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Icecream Shake',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(
                              'Sharjah Shake with Vanilla Ice Cream',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Text(
                            '\u{20B9}' '120',
                            style: TextStyle(color: Colors.deepOrange),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}