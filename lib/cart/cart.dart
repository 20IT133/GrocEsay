import 'package:flutter/material.dart';
import 'package:grocesay/cart/SizeConfig.dart';
import 'package:grocesay/cart/dairy.dart';
import 'package:grocesay/cart/fruits.dart';
import 'package:grocesay/cart/second.dart';
import 'package:grocesay/cart/nuts.dart';
import 'package:grocesay/cart/vegetables.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: MyMainPage(),
            );
          },
        );
      },
    );
  }
}

class MyMainPage extends StatefulWidget {
  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  get heightMultiplier => null;

  get imageSizeMultiplier => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var textMultiplier;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 5 * SizeConfig.imageSizeMultiplier,
                    ),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 5 * SizeConfig.imageSizeMultiplier,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.grey, width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Search here",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: imageSizeMultiplier,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: heightMultiplier,
              ),
              TabBar(
                  controller: tabController,
                  indicatorColor: Colors.green,
                  indicatorWeight: 3.0,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        "Fruits",
                        style: TextStyle(
                            fontSize: textMultiplier, fontFamily: 'OpenSans'),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Vegetables",
                        style: TextStyle(
                            fontSize: textMultiplier, fontFamily: 'OpenSans'),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Nuts & Seeds",
                        style: TextStyle(
                            fontSize: textMultiplier, fontFamily: 'OpenSans'),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Dairy",
                        style: TextStyle(
                            fontSize: textMultiplier, fontFamily: 'OpenSans'),
                      ),
                    ),
                  ]),
              Expanded(
                child: Container(
                  child:
                      TabBarView(controller: tabController, children: <Widget>[
                    Fruits(
                      title: 'A',
                    ),
                    Vegetables(
                      title: 'Veggies',
                    ),
                    Nuts(
                      title: 'A',
                    ),
                    Dairy(),
                  ]),
                ),
              )
            ],
          ),
        )));
  }
}
