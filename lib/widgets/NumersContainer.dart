import 'package:flutter/material.dart';
import 'package:tokuapprecap/model/NumbersModel.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersContainer extends StatelessWidget {
  const NumbersContainer({required this.obj});
  final numbersModel obj;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
          height: 150,
          width: 120,
          color: const Color.fromARGB(255, 203, 200, 200),
          child: Image.asset(obj.image)),
          Spacer(flex: 1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(obj.jpnText,style: TextStyle(color: Colors.white,fontSize: 24),),
              Text(obj.enText,style: TextStyle(color: Colors.white,fontSize: 24),),
            ],
          ),
          Spacer(flex: 8,),
          IconButton(
          onPressed: (){
            final player = AudioPlayer();
            player.play(AssetSource(obj.sound));
          },
          icon: Icon(Icons.play_arrow,size: 32,color: Colors.white,)),
          
        ],
        
      ),
    );
  }
}
