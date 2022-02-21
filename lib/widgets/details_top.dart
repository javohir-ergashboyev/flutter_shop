import 'package:flutter/material.dart';
import 'package:github/constants.dart';

class DetailsTop extends StatelessWidget {
  const DetailsTop({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 2 / 5,
      color: color[i],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              titles[i],
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              'price: \$${prices[i]}',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
