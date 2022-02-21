import 'package:flutter/material.dart';
import 'package:github/constants.dart';
import 'package:github/screens/details_screen.dart';

class GridChild extends StatelessWidget {
  const GridChild({Key? key, required this.i, required this.tag})
      : super(key: key);
  final int i;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) => DetailsScreen(tag: tag, i: i)),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.blue, blurRadius: 2, blurStyle: BlurStyle.outer)
          ],
          border: Border.all(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Hero(
                    tag: tag,
                    child: Image.asset(
                      images[i],
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                height: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: color[i],
                        blurRadius: 2,
                        blurStyle: BlurStyle.outer)
                  ],
                  color: color[i],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Text(
              titles[i],
              style: const TextStyle(fontSize: 20, color: Colors.black45),
            ),
            Text(
              '${prices[i]}\$',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
