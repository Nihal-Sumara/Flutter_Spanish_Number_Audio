import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spanish_number_audio/number_audio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AudioPlayer audioPlayer = AudioPlayer();

  List<NumberAudio> numberAudio = [
    NumberAudio(AssetSource("one.wav"), Colors.red, "One"),
    NumberAudio(AssetSource("two.wav"), Colors.blue, "Two"),
    NumberAudio(AssetSource("three.wav"), Colors.amber, "Three"),
    NumberAudio(AssetSource("four.wav"), Colors.brown, "Four"),
    NumberAudio(AssetSource("five.wav"), Colors.green, "Five"),
    NumberAudio(AssetSource("six.wav"), Colors.deepOrange, "Six"),
    NumberAudio(AssetSource("seven.wav"), Colors.deepPurple, "Seven"),
    NumberAudio(AssetSource("eight.wav"), Colors.purple, "Eight"),
    NumberAudio(AssetSource("nine.wav"), Colors.teal, "Nine"),
    NumberAudio(AssetSource("ten.wav"), Colors.cyan, "Ten"),
  ];

  play(Source uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Image(
            image: AssetImage("images/logo.png"),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, i) => SizedBox(
                height: 100.0,
                width: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    play(numberAudio[i].audioUri);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: numberAudio[i].buttonColor,
                  ),
                  child: Text(
                    numberAudio[i].buttonText,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              itemCount: numberAudio.length,
            ),
          ),
        ],
      ),
    );
  }
}
