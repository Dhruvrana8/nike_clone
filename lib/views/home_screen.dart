import 'dart:math';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import "./strings.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final size = ["9", "9.5", "10", "10.5"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(248, 240, 229, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/nikeShoes.png',
                  height: MediaQuery.of(context).size.height * 10,
                  width: MediaQuery.of(context).size.width * 10,
                ),
              ),
              ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(248, 240, 229, 1),
                            border: Border.all(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(Icons.arrow_back),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(248, 240, 229, 1),
                            border: Border.all(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(Icons.shopping_cart),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        Strings.title,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Strings.description,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              Strings.size,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: size
                                  .map(
                                    (e) => Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      height: 50,
                                      width: 50,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: e == '9.5'
                                              ? Colors.deepPurpleAccent.shade100
                                              : const Color.fromRGBO(
                                                  248, 240, 229, 1),
                                          border: Border.all(
                                              color: Colors.black, width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Center(
                                        child: Text(e),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            )
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              Strings.fav,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(248, 240, 229, 1),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(child: LikeButton()),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                    text: Strings.rs,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                  text: Strings.priceValue,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            Strings.price,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 45,
                            width: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 45,
                            width: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const Text(
                            Strings.color,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Center(
                              child: Text(
                            Strings.addToCart,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Center(
                              child: Text(
                            Strings.buyNow,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
