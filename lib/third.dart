import 'package:flutter/material.dart';
//this is the third page it is a stateful widget
class Thirdscreen extends StatefulWidget {

  //in string demo the name of food passed from the second page is recieved
  String demo;

  //this is the constructor , here we have used required keyword to recieve data from the second page
  //and it is stored in the  string variable demo
  Thirdscreen({super.key, required this.demo});

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  int itemcount = 0;

  List<String> Margherita = [
    'https://media.istockphoto.com/id/1168754685/photo/pizza-margarita-with-cheese-top-view-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=psLRwd-hX9R-S_iYU-sihB4Jx2aUlUr26fkVrxGDfNg=',
    'Rs 200',
    '4/5',
    '100 Kcal',
    '30 min'
  ];
  List<String> DoubleCheesMargherita = [
    'https://media.istockphoto.com/id/1295773428/photo/pizza-with-cheese-isolated-on-white-background-clipping-path-full-depth-of-field.jpg?s=612x612&w=0&k=20&c=Oomq20XpoHKvkMROs5doC26BSWxrZH8Gs6sYIEPMtKs=',
    'Rs 300',
    '5/5',
    '150 Kcal',
    '30 min'
  ];
  List<String> SideDishSalads = [
    'https://summeryule.com/wp-content/uploads/2023/08/accompaniment-salad.jpeg',
    'Rs 500',
    '4/5',
    '100 Kcal',
    '30 min'
  ];
  List<String> DessertSalads = [
    'https://upload.wikimedia.org/wikipedia/commons/7/74/Fruktsallad_%28Fruit_salad%29.jpg',
    'Rs 400',
    '5/5',
    '150 Kcal',
    '30 min'
  ];
  List<String> IceCream = [
    'https://thumbs.dreamstime.com/b/ice-cream-scoops-cone-20015318.jpg',
    'Rs 200',
    '4/5',
    '100 Kcal',
    '30 min'
  ];
  List<String> Cheesecake = [
    'https://joyfoodsunshine.com/wp-content/uploads/2022/03/best-cheesecake-recipe-6.jpg',
    'Rs 500',
    '5/5',
    '150 Kcal',
    '30 min'
  ];
  List<String> ChickenPasta = [
    'https://www.thediaryofarealhousewife.com/wp-content/uploads/2019/10/Cheesy-Chicken-Pasta-dinner-recipe.jpg',
    'Rs 600',
    '4/5',
    '100 Kcal',
    '30 min'
  ];
  List<String> VegPasta = [
    'https://qph.cf2.quoracdn.net/main-qimg-fe95bad30c5cd4770d1f9e70d944c478.webp',
    'Rs 500',
    '5/5',
    '100 Kcal',
    '30 min'
  ];
  List<String> beer = [
    'https://images.unsplash.com/photo-1608270586620-248524c67de9?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YmVlcnxlbnwwfHwwfHx8MA%3D%3D',
    'Rs 300',
    '4/5',
    '100 Kcal',
    '30 min'
  ];
  List<String> Cocktails = [
    'https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29ja3RhaWx8ZW58MHx8MHx8fDA%3D',
    'Rs 500',
    '5/5',
    '150 Kcal',
    '30 min'
  ];
  List<String> demo1 = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      //2 pagil margherita anu click cheyunnathengil athinte full details 3 pagil varan anu if create cheyunnathu
      if (widget.demo == 'Margherita') {
        demo1 = Margherita;
      }
      if (widget.demo == ' Double Chees Margherita') {
        demo1 = DoubleCheesMargherita;
      }
      if (widget.demo == 'Side Dish Salads') {
        demo1 = SideDishSalads;
      }
      if (widget.demo == 'Dessert Salads') {
        demo1 = DessertSalads;
      }
      if (widget.demo == 'Ice Cream') {
        demo1 = IceCream;
      }
      if (widget.demo == 'Cheesecake') {
        demo1 = Cheesecake;
      }
      if (widget.demo == 'Chicken Pasta') {
        demo1 = ChickenPasta;
      }
      if (widget.demo == 'Veg Pasta') {
        demo1 = VegPasta;
      }
      if (widget.demo == 'Beer') {
        demo1 = beer;
      }
      if (widget.demo == 'Cocktails') {
        demo1 = Cocktails;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 90),
                  Text(
                    'Food Details',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230),
            child: ListView(children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Container(
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60, right: 200),
                            child: Text(
                              widget.demo,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 260),
                            child: Text(
                              'Rs 200',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 60, 190, 65)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
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
                                    onPressed: () =>
                                        setState(() => itemcount++))
                              ],
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Gold_Star.svg/1024px-Gold_Star.svg.png',
                                        height: 20,
                                        width: 20,
                                      ),
                                      Text('4/5'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.network(
                                        'https://www.shutterstock.com/image-vector/blood-drop-icon-vector-illustration-600nw-642751702.jpg',
                                        height: 20,
                                        width: 20,
                                      ),
                                      Text('100 Kcal'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.network(
                                        'https://www.shutterstock.com/shutterstock/photos/491279485/display_1500/stock-vector-gent-wrist-watch-in-black-white-vector-drawing-491279485.jpg',
                                        height: 20,
                                        width: 20,
                                      ),
                                      Text('30 min')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 250),
                              child: Text(
                                'About Foot:',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'A hugely popular margherita, with a deliciously tangy single cheese toping'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red),
                                child: Text('Add to Cart'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(demo1[0]),
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}