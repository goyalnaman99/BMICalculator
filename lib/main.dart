import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resultpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int age = 26;
  int weight = 70;
  int height = 170;
  bool isMale = false;
  Color mcol = Colors.blue;
  Color fcol = Colors.blue;
  Color col = Colors.blue;
  void incWeight() {
    setState(() {
      weight++;
    });
  }

  void decWeight() {
    setState(() {
      if (weight >= 1) weight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 25,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        "BMI Calculator",
                        style: GoogleFonts.anton(fontSize: 32),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 25,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        "Select Your Gender",
                        style: GoogleFonts.lato(fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: mcol,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                                //shape: BoxShape.circle
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = true;
                                    if (isMale) {
                                      mcol = Colors.blueGrey;
                                      fcol = col;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.male,
                                  size: 50,
                                ),
                              ),
                            ),
                            Text(
                              "MALE",
                              style: GoogleFonts.lato(),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: fcol,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                                //shape: BoxShape.circle
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = false;
                                    if (isMale) {
                                      fcol = col;
                                    } else {
                                      fcol = Colors.pink;
                                      mcol = col;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.female,
                                  size: 50,
                                ),
                              ),
                            ),
                            Text(
                              "FEMALE",
                              style: GoogleFonts.lato(),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                height: 1,
                color: Colors.white10,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 25,
                      ),
                      child: Text(
                        "Enter Your Age",
                        style: GoogleFonts.lato(fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 5,
                          ),
                          child: Text(
                            "$age",
                            style: GoogleFonts.lato(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                child: Icon(
                                  Icons.keyboard_arrow_up,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (age >= 1) age--;
                                });
                              },
                              child: Container(
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      height: 1,
                      color: Colors.white10,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 25,
                          ),
                          child: Text(
                            "Height(cm)",
                            style: GoogleFonts.lato(fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                right: 10,
                                bottom: 5,
                              ),
                              child: Text(
                                "$height",
                                style: GoogleFonts.lato(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      height++;
                                    });
                                  },
                                  child: Container(
                                    child: Icon(
                                      Icons.keyboard_arrow_up,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (height >= 1) height--;
                                    });
                                  },
                                  child: Container(
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 35),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 25,
                          ),
                          child: Text(
                            "Weight(kg)",
                            style: GoogleFonts.lato(fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                right: 10,
                                bottom: 5,
                              ),
                              child: Text(
                                "$weight",
                                style: GoogleFonts.lato(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: incWeight,
                                  child: Container(
                                    child: Icon(
                                      Icons.keyboard_arrow_up,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: decWeight,
                                  child: Container(
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Builder(
                  builder: (context) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ResultPage(
                            bmi: calculateBMI(weight, height),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade500,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      margin: EdgeInsets.only(
                        bottom: 40,
                      ),
                      padding: EdgeInsets.all(9.5),
                      child: Text("CALCULATE",
                          style: GoogleFonts.alef(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

double calculateBMI(int weight, int height) {
  double h = height / 100.0;
  double x = weight / (h * h);
  return x;
}
