import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Decoration ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Rent House"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/pic1.jpg",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 120, right: 20),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              offset: Offset(0, 4),
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Kra Water Village"),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    SizedBox(width: 8),
                                    Text("4.9",
                                        style: TextStyle(color: Colors.amber)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "12",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Sell",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "74",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Rent",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "36",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Sublet",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue[900],
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.blue[800],
                                            blurRadius: 5,
                                            offset: Offset(-2, 2),
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        "assets/send.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rent",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        )),
                    Text(
                      "more",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(
                      primary: false,
                      children: [
                        buildTile(),
                        buildTile(),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildTile() {
    return Container(
      height: 280,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://www.incimages.com/uploaded_files/image/1920x1080/getty_146107054_2000133020009280105_347552.jpg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tom cruise",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "6 minutes ago",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    " 3.4 million",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            " This is Tom cruise old House . Any one interesed any rent this house for 3 months.",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 150,
                margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/pic2.jpg"))),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 75,
                      margin:
                          EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pic2.jpg"))),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 70,
                          margin: EdgeInsets.only(top: 4, left: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/pic2.jpg"))),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          margin: EdgeInsets.only(top: 4, left: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.5),
                          ),
                          child: Text(
                            "8 +",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
