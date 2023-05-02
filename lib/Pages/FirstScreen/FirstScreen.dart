import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 20,
        title: const Text(
          "GYMPERS",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xff0D031B),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
      backgroundColor: const Color(0xff0D031B),
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, bottom: 3, right: 4, top: 4),
                              child: Image.asset(
                                "lib/Helpers/Resources/Asset/Images/path2.png",
                                height: 12,
                                width: 10,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, top: 5, left: 5, right: 5),
                                child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/path3.png",
                                  height: 12,
                                  width: 10,
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/path1.png")),
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 110,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          "T-Shirts",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          height: 146,
                          width: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xff56505F),
                              borderRadius: BorderRadius.circular(19)),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/image1.png")),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Nike",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const Text("Man's T-Shirt",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          height: 146,
                          width: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xff56505F),
                              borderRadius: BorderRadius.circular(19)),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/image2.png")),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Nike",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const Text("Man's T-Shirt",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          height: 146,
                          width: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xff56505F),
                              borderRadius: BorderRadius.circular(19)),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/image3.png")),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Nike",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const Text("Man's T-Shirt",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          height: 146,
                          width: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xff56505F),
                              borderRadius: BorderRadius.circular(19)),
                          child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/image4.png")),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Nike",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const Text("Man's T-Shirt",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            )),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff0D031B),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, color: Colors.white),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded, color: Colors.white),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                label: 'Add to Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined, color: Colors.white),
                label: 'Profile'),
          ]),
    );
  }
}
