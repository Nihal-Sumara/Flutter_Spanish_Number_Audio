import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NumberAudio {
  late Source audioUri;
  late MaterialColor buttonColor;
  late String buttonText;

  NumberAudio(Source aU, MaterialColor bC, String bT) {
    audioUri = aU;
    buttonColor = bC;
    buttonText = bT;
  }
}
