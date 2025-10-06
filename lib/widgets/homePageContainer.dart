import 'package:flutter/material.dart';
import 'package:tokuapprecap/model/homePageContainerModel.dart';

class homePageContainer extends StatelessWidget {
  const homePageContainer({required this.obj});
  final homePageContainerModel obj;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:obj.onTap,
      child: Container(
        padding: EdgeInsets.only(left: 14),
        alignment: Alignment.centerLeft,
        height: 100,
        width: double.infinity,
        color: obj.color,
        child: Text(
          obj.Text,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
