import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'dart:math' as math;

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  int count = 1;

  Color getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: getRandomColor(),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Turkish Steak",
                style: TextStyle(color: Color(0xFF2B3D54)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "173 Grams",
                style: TextStyle(color: Color(0xFF8D97A4), fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "\$ 25",
                style: TextStyle(color: Color(0xFFB13E55)),
              ),
            ],
          ),
        ]),
        Row(
          children: [
            CustomButton(
              icon: CupertinoIcons.minus,
              onPress: () {
                setState(() {
                  if (count > 1) {
                    count--;
                  } else {
                    SnackBar snackBar =
                        SnackBar(content: Text("Don't minus then"), backgroundColor: Colors.teal,);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "$count",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            CustomButton(
              icon: Icons.add,
              onPress: () {
                setState(() {
                  count++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
