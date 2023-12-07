import 'package:flutter/material.dart';
import 'package:pizzatask/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStackWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStackWidget extends StatelessWidget {
  List<String> Names = ["Pizza", "Salads", "Desserts", "Pasta", "Beverages"];
  List<String> Images = [
    "https://thumbs.dreamstime.com/b/pepperoni-pizza-thinly-sliced-popular-topping-american-style-pizzerias-30402134.jpg",
    "https://t3.ftcdn.net/jpg/00/51/21/24/360_F_51212489_T5VPYoaeyKQc3XShEjJAn5Xng6DbBjLV.jpg",
    "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/dessert-main-image-molten-cake-0fbd4f2.jpg?resize=768,574",
    "https://www.budgetbytes.com/wp-content/uploads/2023/07/Bruschetta-Pasta-Overhead.jpg",
    "https://thumbs.dreamstime.com/b/cans-beverages-19492376.jpg"
  ];
  List<String> Items = ["5 items", "2 items", "2 items", "1 items", "1 items"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(
          fit: StackFit.passthrough,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: Names.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                    ),
                    child: Center(
                      child: Stack(
                        //fit: StackFit.passthrough,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 20),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      Names[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      Items[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              bottom: 0,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(Images[index]),
                              )),
                          Positioned(
                            top: 0,
                            right: 0,
                            bottom: 0,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.red,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SecondScreen(
                                              Names: Names[index])));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_outlined,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
