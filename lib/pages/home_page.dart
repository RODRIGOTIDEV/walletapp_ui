// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp_ui/util/botton.dart';
import 'package:walletapp_ui/util/list_tile.dart';
import 'package:walletapp_ui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'My',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'cards',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 400.00,
                  carNumeber: 500,
                  expiryYear: 28,
                  expiryMonth: 08,
                  color: Colors.blue,
                ),
                MyCard(
                  balance: 4000.00,
                  carNumeber: 555,
                  expiryYear: 28,
                  expiryMonth: 08,
                  color: Colors.pink,
                ),
                MyCard(
                  balance: 1.000,
                  carNumeber: 123,
                  expiryYear: 28,
                  expiryMonth: 08,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Botton(
                  iconButton: 'assets/icons/send-money.png',
                  textButton: 'Enviar',
                ),
                Botton(
                  iconButton: 'assets/icons/credit-card.png',
                  textButton: 'Pagar',
                ),
                Botton(
                  iconButton: 'assets/icons/bill.png',
                  textButton: 'Boletos',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              child: Column(
                children: [
                  MyListTile(
                    iconImagePath: 'assets/icons/trend.png',
                    tileTile: 'Estatiticas',
                    tileSubTitle: 'Parametro de mercado',
                  ),
                  MyListTile(
                    iconImagePath: 'assets/icons/cash-flow.png',
                    tileTile: 'Transferecia',
                    tileSubTitle: 'media diaria',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
