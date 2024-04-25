import '../components/reusable_icon_content.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/custom_fab.dart';
import 'gender_enum.dart';
import 'package:bmi_calculator_flutter/constants/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 40;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      body: Column(
        children: [
          // Row - Gender Selection Row
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  onCardTap: () => setState(() {
                    selectedGender = Gender.MALE;
                  }),
                  cardBackgroundColor: (selectedGender == Gender.MALE)
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const ReusableIconContent(
                    icon: FontAwesomeIcons.mars,
                    contentText: "MALE",
                  ),
                ),
                ReusableCard(
                  onCardTap: () => setState(() {
                    selectedGender = Gender.FEMALE;
                  }),
                  cardBackgroundColor: (selectedGender == Gender.FEMALE)
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const ReusableIconContent(
                    icon: FontAwesomeIcons.venus,
                    contentText: "FEMALE",
                  ),
                ),
              ],
            ),
          ),

          // Height Slider
          ReusableCard(
            cardBackgroundColor: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "HEIGHT",
                  style: kContentTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kFatTextStyle,
                    ),
                    const Text(
                      " cm",
                      style: kContentTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: kCustomSliderTheme,
                  child: Slider(
                    value: height.roundToDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double de) {
                      setState(() {
                        height = de.toInt();
                      });
                    },
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [

                // Weight Container
                ReusableCard(
                  cardBackgroundColor: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: kContentTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kFatTextStyle,
                      ),

                      // Increment/Decrement Buttons Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFAB(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => setState(() {
                              weight--;
                            }),
                          ),
                          const SizedBox(width: 16.0),
                          CustomFAB(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => setState(() {
                              weight++;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                // AGE Container
                ReusableCard(
                  cardBackgroundColor: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "AGE",
                        style: kContentTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kFatTextStyle,
                      ),

                      // Increment/Decrement Buttons Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFAB(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => setState(() {
                              age--;
                            }),
                          ),
                          const SizedBox(width: 16.0),
                          CustomFAB(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => setState(() {
                              age++;
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
            child: const Center(
              child: Text(
                "CALCULATE BMI",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
