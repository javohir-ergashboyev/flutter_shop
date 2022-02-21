import 'package:flutter/material.dart';
import 'package:github/screens/sign_in.dart';
import 'package:github/widgets/grid_child.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
        elevation: 0.0,
        child: const Icon(
          Icons.logout,
          color: Colors.black,
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white54,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17,
            ),
            const Text(
              "Football Shoes",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  topBar("Adidas", 1),
                  topBar("Fila", 2),
                  topBar("Bike", 3),
                  topBar("Puma", 4),
                  topBar("Gucci", 5),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: SizedBox(
                height: 800,
                child: GridView.count(
                  padding: const EdgeInsets.only(bottom: 50),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(
                    6,
                    (index) => GridChild(
                      tag: 'image$index',
                      i: index,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int sellected = 1;

  Widget topBar(String text, int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          sellected = i;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 25, letterSpacing: 1.6),
            ),
            Container(
              width: 50,
              height: 4,
              color: sellected == i ? Colors.grey[800] : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
