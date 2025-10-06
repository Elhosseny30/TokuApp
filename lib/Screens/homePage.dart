import 'package:flutter/material.dart';
import 'package:tokuapprecap/Screens/Colors.dart';
import 'package:tokuapprecap/Screens/FamilyMembers.dart';
import 'package:tokuapprecap/Screens/NumberPage.dart';
import 'package:tokuapprecap/Screens/Phrases.dart';
import 'package:tokuapprecap/model/homePageContainerModel.dart';
import 'package:tokuapprecap/widgets/homePageContainer.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toku",
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 51, 43),
      ),
      backgroundColor: const Color.fromARGB(179, 255, 255, 255),
      body: Column(
        children: [
          homePageContainer(
            obj: homePageContainerModel(
              Text: "Numbers",
              color: Colors.orangeAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return NumeberPage();
                    },
                  ),
                );
              },
            ),
          ),
          homePageContainer(
            obj: homePageContainerModel(
              Text: "Family Members",
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return familyMembers();
                    },
                  ),
                );
              },
            ),
          ),
          homePageContainer(
            obj: homePageContainerModel(
              Text: "Colors",
              color: Colors.purple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColorsScreen();
                    },
                  ),
                );
              },
            ),
          ),
          homePageContainer(
            obj: homePageContainerModel(
              Text: "Phrases",
              color: Colors.blueAccent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return phrasesScreen();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
