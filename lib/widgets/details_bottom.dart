import 'package:flutter/material.dart';

class DetailsBottom extends StatefulWidget {
  const DetailsBottom({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsBottom> createState() => _DetailsBottomState();
}

class _DetailsBottomState extends State<DetailsBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  setColor(Colors.amber, 0),
                  const SizedBox(
                    width: 10,
                  ),
                  setColor(Colors.red, 1),
                  const SizedBox(
                    width: 10,
                  ),
                  setColor(Colors.grey, 2),
                  const Spacer(),
                  const Text(
                    'popuarity: 99%',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
                'This football shoes is made in addidas firm. Cristiano Ronaldo scored 255 goals wearing this amazing shoe. When it comes to materials skin, and clear cooton are used to make'),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  const Text(
                    '1',
                    style: TextStyle(fontSize: 28),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '-',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 3 / 5,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
    );
  }

  int sellected = 0;

  Widget setColor(MaterialColor color, int i) {
    return GestureDetector(
      onTap: () => setState(() {
        sellected = i;
      }),
      child: CircleAvatar(
        radius: sellected == i ? 25 : 21,
        backgroundColor: color.shade200,
        child: CircleAvatar(
          radius: 18,
          backgroundColor: color,
        ),
      ),
    );
  }
}
