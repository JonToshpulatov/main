import 'package:flutter/material.dart';
import 'package:kidsuz/constants.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:animated_widgets/animated_widgets.dart';

class CustomCardModel {
  String image;
  CustomCardModel({
    required this.image,
  });
}

class ModelStyle extends StatefulWidget {
  final CustomCardModel cardModel;
  ModelStyle({required this.cardModel});

  @override
  State<ModelStyle> createState() => _ModelStyleState();
}

class _ModelStyleState extends State<ModelStyle> {
  final FlutterTts flutterTts = FlutterTts();
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.only(left: 20, right: 10),
            height: 240,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  child: Container(
                    height: 210,
                    width: ScreenSize(context).width * 0.9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            this.widget.cardModel.image,
                          ),
                          fit: BoxFit.cover),
                      color: AppColors.Lpink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
