import 'package:flutter/material.dart';
import 'package:github/constants.dart';
import 'package:github/widgets/details_bottom.dart';
import 'package:github/widgets/details_top.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.tag, required this.i})
      : super(key: key);
  final String tag;
  final int i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('ADD TO CART'),
              icon: const Icon(Icons.add_shopping_cart),
            ),
            backgroundColor: color[i],
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            body: Column(
              children: [DetailsTop(i: i), const DetailsBottom()],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 1.2 / 5,
            right: 25,
            child: Hero(
              tag: tag,
              child: Draggable(
                data: 'red',
                feedback: Image.asset(
                  images[i],
                  width: 200,
                  height: 200,
                ),
                child: Image.asset(
                  images[i],
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 18,
            left: 10,
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:
                      const LinearGradient(colors: [Colors.red, Colors.pink])),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "total: ${prices[i]}\$",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
