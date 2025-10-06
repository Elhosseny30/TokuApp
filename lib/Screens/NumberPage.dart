import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tokuapprecap/model/NumbersModel.dart';
import 'package:tokuapprecap/widgets/NumersContainer.dart';

class NumeberPage extends StatelessWidget {
  NumeberPage({super.key});
  final List<numbersModel> numberModelLists = [
    numbersModel(
      jpnText: "Ichi",
      enText: "One",
      image: "assets/images/numbers/number_one.png",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    numbersModel(
      jpnText: "Ni",
      enText: "Two",
      image: "assets/images/numbers/number_two.png",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    numbersModel(
      jpnText: "San",
      enText: "Three",
      image: "assets/images/numbers/number_three.png",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    numbersModel(
      jpnText: "Shi",
      enText: "Four",
      image: "assets/images/numbers/number_four.png",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    numbersModel(
      jpnText: "Go",
      enText: "Five",
      image: "assets/images/numbers/number_five.png",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    numbersModel(
      jpnText: "Roku",
      enText: "Six",
      image: "assets/images/numbers/number_six.png",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    numbersModel(
      jpnText: "Sebun",
      enText: "Seven",
      image: "assets/images/numbers/number_seven.png",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    numbersModel(
      jpnText: "Hachi",
      enText: "Eight",
      image: "assets/images/numbers/number_eight.png",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    numbersModel(
      jpnText: "Ku",
      enText: "Nine",
      image: "assets/images/numbers/number_nine.png",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    numbersModel(
      jpnText: "Jū",
      enText: "Ten",
      image: "assets/images/numbers/number_ten.png",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Numbers",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numberModelLists.length,
        itemBuilder: (context, index) {
          return NumbersContainer(obj: numberModelLists[index]);
        },
      ),
    );
  }
}
