import 'package:flutter/material.dart';
import 'package:store_app/screens/SecondPage.dart';
import '../widgets/custom_app_bar_widget.dart';
import 'dart:math' as math;

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isFavourit = false;

  // Function to generate a random color
  Color getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Allows the screen to resize when the keyboard appears
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 10),
              CustomAppBarWidget(text: "Belal st",),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0XFFF5F7F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search in thousands of products',
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey,
                          ),
                          width: 40,
                          height: 50,
                        ),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Home Address",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text("Belal St. No:2"),
                            SizedBox(height: 2),
                            Text("Street x12"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey,
                          ),
                          width: 40,
                          height: 50,
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Home Address",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text("Belal St. No:2"),
                            SizedBox(height: 2),
                            Text("Street x12"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Explore by Category",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                    },
                    child: const Text(
                      "See All (36)",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 110,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 80,
                          height: 70,
                          color: getRandomColor(),
                          child: Center(child: Text("$index")),
                        ),
                        SizedBox(height: 10),
                        Text("Steak"),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deals of the day",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 170,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 25),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: getRandomColor(),
                              ),
                            ),
                            Positioned(
                              top: -20,
                              left: -20,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isFavourit ? Colors.red : Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavourit = !isFavourit;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Summer Sun Ice Cream Pack",
                              style: TextStyle(color: Color(0XFF474749)),
                            ),
                            Text("Pieces 5", style: TextStyle(fontSize: 14)),
                            Row(
                              children: [
                                Icon(Icons.location_on_sharp),
                                Text("15 Minutes Away"),
                              ],
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$ 12   ",
                                    style: TextStyle(
                                      color: Color(0XFFEE6A61),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " \$ 18",
                                    style: TextStyle(
                                      color: Color(0XFFACADAD),
                                      fontSize: 16,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0XFFFEC8BD),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Mega", style: TextStyle(color: Colors.red)),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "WHOPP",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 0), // Adjusted position
                                Text(
                                  "E",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "R",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text("\$17", style: TextStyle(color: Colors.red)),
                            Text(
                              "\$32",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        const Text("* Available until 24 December 2020"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
