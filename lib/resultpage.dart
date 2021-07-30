import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi});
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("RESULT", style: GoogleFonts.lato())),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                "YOUR BMI IS",
                style: GoogleFonts.anton(fontSize: 32),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                bmi.toStringAsFixed(2),
                style:
                    GoogleFonts.lato(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                dp(bmi),
                style: GoogleFonts.lato(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String dp(double bmi) {
  if (bmi < 18.5) {
    return "You are Underweight";
  }
  if (bmi >= 18.5 && bmi < 25) {
    return "You are Normal";
  }
  if (bmi >= 25 && bmi < 30) {
    return "You are Overweight";
  }
  if (bmi >= 30) {
    return "You are Obese";
  }
  return "Adbhut Case";
}
