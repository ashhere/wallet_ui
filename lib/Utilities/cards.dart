import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNum;
  final int expiryMonth;
  final int expiryDate;
  final cardColor;
  const MyCard({
    super.key,
    required this.balance,
    required this.cardNum,
    required this.expiryDate,
    required this.expiryMonth,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 200,
        width: 280,
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(40)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Balance",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  Container(
                    height: 20,
                    width: 30,
                    decoration: const BoxDecoration(
                      
                      image: DecorationImage(
                        image: AssetImage('icons/visa2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              
              Text(
                "\$$balance",
                style: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$cardNum',
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xffCDB7FF),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '$expiryMonth/$expiryDate',
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xffCDB7FF),
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
