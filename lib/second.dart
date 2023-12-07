import 'package:flutter/material.dart';
import 'package:pizzatask/third.dart';

class SecondScreen extends StatefulWidget {
  final String Names;
  const SecondScreen({required this.Names});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int itemcount = 0;

  List<String> pizzaitm = ['Margherita', 'Double Chees Margherita'];
  List<String> saladsitm = ['Side Dish Salads', 'Dessert Salads'];
  List<String> dessertsitm = ['Ice Cream', 'Cheesecake'];
  List<String> pastaitm = ['Chicken Pasta', 'Veg Pasta'];
  List<String> drinkitm = ['Beer', 'Cocktails'];

  List<String> price = ['200 Rs/-', '500 Rs/-'];
  List<String> waight = ['200g', '250g'];
  List<String> rate = ['4/5', '5/5'];
  List<String> pizzaimg = [
    'https://media.istockphoto.com/id/1168754685/photo/pizza-margarita-with-cheese-top-view-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=psLRwd-hX9R-S_iYU-sihB4Jx2aUlUr26fkVrxGDfNg=',
    'https://media.istockphoto.com/id/1295773428/photo/pizza-with-cheese-isolated-on-white-background-clipping-path-full-depth-of-field.jpg?s=612x612&w=0&k=20&c=Oomq20XpoHKvkMROs5doC26BSWxrZH8Gs6sYIEPMtKs='
  ];
  List<String> saladimg = [
    'https://summeryule.com/wp-content/uploads/2023/08/accompaniment-salad.jpeg',
    'https://upload.wikimedia.org/wikipedia/commons/7/74/Fruktsallad_%28Fruit_salad%29.jpg'
  ];
  List<String> dessertimg = [
    'https://thumbs.dreamstime.com/b/ice-cream-scoops-cone-20015318.jpg',
    'https://joyfoodsunshine.com/wp-content/uploads/2022/03/best-cheesecake-recipe-6.jpg'
  ];
  List<String> pastaimg = [
    'https://www.thediaryofarealhousewife.com/wp-content/uploads/2019/10/Cheesy-Chicken-Pasta-dinner-recipe.jpg',
    'https://qph.cf2.quoracdn.net/main-qimg-fe95bad30c5cd4770d1f9e70d944c478.webp'
  ];
  List<String> drinksimg = [
    'https://images.unsplash.com/photo-1608270586620-248524c67de9?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YmVlcnxlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29ja3RhaWx8ZW58MHx8MHx8fDA%3D'
  ];
  List demo = [];
  List image = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.Names == 'Pizza') {
        demo = pizzaitm;
        image = pizzaimg;
      }
      if (widget.Names == 'Salads') {
        demo = saladsitm;
        image = saladimg;
      }
      if (widget.Names == 'Desserts') {
        demo = dessertsitm;
        image = dessertimg;
      }
      if (widget.Names == 'Pasta') {
        demo = pastaitm;
        image = pastaimg;
      }
      if (widget.Names == 'Beverages') {
        demo = drinkitm;
        image = drinksimg;
      }
    });
    print(demo);
    print(image);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
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
            Text(
              widget.Names,
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 216, 218)),
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                )
              ],
            ),
            ListView.builder(
              itemCount: demo.length,
              itemBuilder: (BuildContext context, intindex) {
                return Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 40),
                        child: Container(
                          height: 270,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(color: Colors.black, blurRadius: 60.0)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 20, top: 20, left: 60),
                            child: Text(
                              demo[intindex],
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 40,
                            foregroundColor: Colors.transparent,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Thirdscreen(demo: demo[intindex])));
                              },
                              icon: Icon(
                                Icons.production_quantity_limits,
                                color: Colors.white,
                              ),
                            ),
                          )),
                      Positioned(
                        top: 260,
                        left: 110,
                        child: Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [BoxShadow(blurRadius: 2)]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() => itemcount--);
                                },
                              ),
                              Container(),
                              Text(itemcount.toString()),
                              IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () => setState(() => itemcount++))
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 10,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(image[intindex]),
                        ),
                      ),
                      Positioned(
                        right: 30,
                        bottom: 100,
                        child: Text(
                          price[intindex],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 120,
                          bottom: 140,
                          child: Text(
                            waight[intindex],
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )),
                      Positioned(
                        left: 120,
                        bottom: 100,
                        child: Row(children: [
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Gold_Star.svg/1024px-Gold_Star.svg.png',
                            height: 140,
                            width: 20,
                          ),
                          Text(rate[intindex])
                        ]),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
