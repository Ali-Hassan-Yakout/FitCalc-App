import 'package:bmi/ui/result_screen.dart';
import 'package:bmi/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _sliderValue = 56;
  bool maleSelected = false;
  bool femaleSelected = false;
  int weight = 0;
  double height = 0;
  int age = 0;
  double bmi = 0;
  String category = "";
  bool categoryColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      backgroundColor: mainColor,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                maleSelected = !maleSelected;
                                if (femaleSelected) {
                                  femaleSelected = !femaleSelected;
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  maleSelected ? selectedColor : secondColor,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 80,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                femaleSelected = !femaleSelected;
                                if (maleSelected) {
                                  maleSelected = !maleSelected;
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  femaleSelected ? selectedColor : secondColor,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 80,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: secondColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Height",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${_sliderValue.toInt()}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 20),
                                child: const Text(
                                  "cm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            activeColor: pinkColor,
                            inactiveColor: Colors.grey,
                            value: _sliderValue,
                            min: 56,
                            max: 244,
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: secondColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Weight",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "$weight",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (weight > 0) {
                                              weight--;
                                            }
                                          });
                                        },
                                        backgroundColor: Colors.grey,
                                        child: const Icon(Icons.remove),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (weight <= 300) {
                                              weight++;
                                            }
                                          });
                                        },
                                        backgroundColor: Colors.grey,
                                        child: const Icon(Icons.add),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: secondColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Age",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "$age",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (age > 0) {
                                              age--;
                                            }
                                          });
                                        },
                                        backgroundColor: Colors.grey,
                                        child: const Icon(Icons.remove),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (age <= 100) {
                                              age++;
                                            }
                                          });
                                        },
                                        backgroundColor: Colors.grey,
                                        child: const Icon(Icons.add),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                calculateBmi();
                textColor();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                        result: bmi,
                        message: category,
                        textColor: categoryColor),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: pinkColor,
              ),
              child: const Text(
                "CALCULATE",
                style: TextStyle(fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }

  void textColor() {
    if (bmi > 18.5 && bmi <= 24.9) {
      categoryColor = true;
    } else {
      categoryColor = false;
    }
  }

  void calculateBmi() {
    height = _sliderValue / 100;
    bmi = weight / (height * height);
    if (bmi <= 18.5) {
      category = "Under";
    } else {
      if (bmi <= 24.9) {
        category = "Normal";
      } else {
        if (bmi <= 29.9) {
          category = "Over";
        } else {
          category = "Obesity";
        }
      }
    }
  }
}
