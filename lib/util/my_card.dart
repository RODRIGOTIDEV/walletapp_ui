import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double? balance;
  final int carNumeber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  const MyCard(
      {Key? key,
      r,
      this.balance,
      required this.carNumeber,
      required this.expiryMonth,
      required this.expiryYear,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Balance',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              '\$ ' + balance.toString(),
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  carNumeber.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
