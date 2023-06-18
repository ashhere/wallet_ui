import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/Utilities/cards.dart';
import 'package:wallet_ui/Utilities/icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFE),
      appBar: AppBar(
        backgroundColor: const Color(0xffF9FAFE),
        elevation: 0,
        title: const Text.rich(
          TextSpan(
              text: 'My',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <InlineSpan>[
                TextSpan(
                  text: ' Cards',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                )
              ]),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                  color: Color(0xffE4EAFB), shape: BoxShape.circle),
              child: const Icon(
                Icons.add,
                color: Colors.black,
                size: 25,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Column(
          children: [
            
            SizedBox(
              height: 200,
              child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: const [
                    MyCard(
                      balance: 1897.77,
                      cardNum: 77788898,
                      expiryDate: 20,
                      expiryMonth: 12,
                      cardColor: Color(0xff6A5EF3),
                    ),
                    MyCard(
                      balance: 2172.85,
                      cardNum: 777778888,
                      expiryDate: 24,
                      expiryMonth: 10,
                      cardColor: Color(0xff1F6E8C),
                    ),
                    MyCard(
                      balance: 3597.85,
                      cardNum: 888887458,
                      expiryDate: 14,
                      expiryMonth: 01,
                      cardColor: Color(0xff0E2954),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 15,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconsButtons(
                      iconsImage: 'send.png',
                      iconBoxColor:  Color(0xffEEEEEE)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    iconText(name: 'Send')
                  ],
                ),
                Column(
                  children: [
                    IconsButtons(
                      iconsImage: 'pay.png',
                      iconBoxColor:  Color(0xffEEEEEE)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    iconText(
                      name: 'Pay',
                    )
                  ],
                ),
                Column(
                  children: [
                    IconsButtons(
                      iconsImage: 'bill.png',
                      iconBoxColor:  Color(0xffEEEEEE)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    iconText(name: 'Bill')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffF9FAFE), Color(0xffDDDFE6)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: const Column(
                  children: [
                    ListTile(
                      title: Text('Statistics'),
                      subtitle: Text("Payment and Income"),
                      leading: IconsButtons(iconsImage: 'stats.png',
                      iconBoxColor:  Color(0xffA69EE7)),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    SizedBox(height: 10,),
                    ListTile(
                      title: Text('Transactions'),
                      subtitle: Text("Transaction history"),
                      leading: IconsButtons(iconsImage: 'transaction.png',
                      iconBoxColor:  Color(0xff6DA7C7)),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            // const ListTile(
            //   title: Text('Statistics'),
            //   subtitle: Text("Payment and Income"),
            //   leading: IconsButtons(iconsImage: 'stats.png'),
            //   trailing: Icon(Icons.arrow_forward_ios),
            // ),
            // const ListTile(
            //   title: Text('Transactions'),
            //   subtitle: Text("Transaction history"),
            //   leading: IconsButtons(iconsImage: 'transaction.png'),
            //   trailing: Icon(Icons.arrow_forward_ios),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink.shade200,
        child: const Icon(
          Icons.attach_money_sharp,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor:const  Color.fromARGB(255, 244, 143, 177),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,size: 35,
                color: Color.fromARGB(255, 244, 143, 177),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 35,
              ),
              label: "Settings")
        ],
        backgroundColor: const Color(0xffF9FAFE),
        elevation: 0,
      ),
    );
  }
}
