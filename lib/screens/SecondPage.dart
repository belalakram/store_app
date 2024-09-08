import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/product_item.dart';
import 'dart:math' as math;

import '../widgets/custom_app_bar_widget.dart';

class SecondPage extends StatelessWidget {
   SecondPage({Key? Key}) : super(key: Key);


  Color getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12),
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              CustomAppBarWidget(
                text: "Oxford Street",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ProductItem();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
