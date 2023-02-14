import 'package:flutter/material.dart';
import 'package:foodorderui/customAppbar.dart';
import 'package:foodorderui/foodlist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffe0e0e0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: customAppbar(),
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('images/redtheme.webp'),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 30,
                  child: Text(
                    'Order',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                    left: 400,
                    top: 30,
                    child: Text(
                      'Close',
                      style: TextStyle(color: Colors.white),
                    )),
                Positioned(
                    top: 100,
                    left: 77,
                    child: Container(
                      //
                      //height: 200,7
                      width: MediaQuery.of(context).size.width*0.65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Subtotal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\u{20B9}' '150.50',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Tax&Fees',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\u{20B9}' '50.50',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Free',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      '\u{20B9}' '200.50',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            //SizedBox(height: 20,),

            foodlist(),

            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: InkWell(
                onTap: () {
                  // print('hello');
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('images/redtheme.webp'),
                          fit: BoxFit.fill),
                      gradient: LinearGradient(
                          colors: [Color(0xFFF12711), Color(0xFFF5AF19)])),
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
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


/*Expanded(
child: ListView(
children:[
Padding(
padding: EdgeInsets.only(left: 47,right: 50),
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
SizedBox(width: 10,),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.only(bottom: 5),
child: Text('Chicken Tandoori',style: TextStyle(fontWeight: FontWeight.bold),),
),
Padding(
padding: const EdgeInsets.only(bottom: 3),
child: Text('Served with Tandoori Roti/Naan',style: TextStyle(color: Colors.grey),),
),
Text('\u{20B9}''230',style: TextStyle(color: Colors.deepOrange),)

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
padding: EdgeInsets.only(left: 47,right: 50),
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
SizedBox(width: 10,),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.only(bottom: 5),
child: Text('Rumali Roti',style: TextStyle(fontWeight: FontWeight.bold),),
),
Padding(
padding: const EdgeInsets.only(bottom: 3),
child: Text('Three roti each',style: TextStyle(color: Colors.grey),),
),
Text('\u{20B9}''200',style: TextStyle(color: Colors.deepOrange),)

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
padding:  EdgeInsets.only(left: 47,right: 50),
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
child: Image.asset('images/shake.jpg',
fit: BoxFit.fill,),
)
],
),
SizedBox(width: 10,),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.only(bottom: 5),
child: Text('Icecream Shake',style: TextStyle(fontWeight: FontWeight.bold),),
),
Padding(
padding: const EdgeInsets.only(bottom: 3),
child: Text('Sharjah Shake with Vanilla Ice Cream',style: TextStyle(color: Colors.grey),),
),
Text('\u{20B9}''120',style: TextStyle(color: Colors.deepOrange),)

],
)

],
),
)
],
),
),
),

]

),
)*/
