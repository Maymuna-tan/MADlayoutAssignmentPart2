// ignore: file_names
import 'package:flutter/material.dart';

//Tanni
class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GridState createState() => _GridState();
}

// ignore: non_constant_identifier_names
bool GridOne = true;
// ignore: non_constant_identifier_names
bool GridTwo = true;
// ignore: non_constant_identifier_names
bool GridThree = true;
// ignore: non_constant_identifier_names
bool GridFour = true;

class _GridState extends State<Grid> {
  void iconPressedone() {
    setState(() {
      GridOne = !GridOne;
    });
  }

  void iconPressedTwo() {
    setState(() {
      GridTwo = !GridTwo;
    });
  }

  void iconPressedThree() {
    setState(() {
      GridThree = !GridThree;
    });
  }

  void iconPressedFour() {
    setState(() {
      GridFour = !GridFour;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          // tv in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                            image: AssetImage(GridOne
                                ? 'assets/tv-off.png'
                                : 'assets/tv-on.png'),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: TextButton(
                              child: const Icon(Icons.power_settings_new,
                                  size: 40),
                              onPressed: iconPressedone,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        " WASHER",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          //actionsTaken.elementAt(textIndex1)
                          (GridOne == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // fan in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image(
                          image: AssetImage(GridTwo
                              ? 'assets/fan-off.png'
                              : 'assets/fan-on.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 92,
                        child: TextButton(
                          child: const Icon(Icons.power_settings_new, size: 40),
                          onPressed: iconPressedTwo,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        " LIGHT",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          (GridTwo == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // microwave in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage(GridThree
                                ? 'assets/microwave-off.png'
                                : 'assets/microwave-on.png'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: const Icon(Icons.power_settings_new,
                                  size: 40),
                              onPressed: (iconPressedThree),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        " AC",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          (GridThree == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // stereo in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(10),
                        child: Image(
                          image: AssetImage(GridFour
                              ? 'assets/stereo-off.png'
                              : 'assets/stereo-on.png'),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 92,
                        child: TextButton(
                          child: const Icon(Icons.power_settings_new, size: 40),
                          onPressed: iconPressedFour,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        " FRIDGE",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          (GridFour == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
