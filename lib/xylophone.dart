import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  static Source getSound(int number) => AssetSource('note$number.wav');

  static var colorChoice = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.teal, Colors.blue, Colors.purple];

  static Color getColor(int number) => colorChoice[number];

  static var player = AudioPlayer();

  static Expanded buildKey(int number) => expandButton(ElevatedButton(
        onPressed: () async {
          await player.play(getSound(number + 1));
          player.seek(const Duration(milliseconds: 0));
        },
        style: ElevatedButton.styleFrom(backgroundColor: getColor(number)),
        child: null,
      ));

  @override
  Widget build(BuildContext context) {
    return myMaterialApp;
  }

  static MaterialApp myMaterialApp = MaterialApp(
    home: myScaffold,
  );

  static Scaffold myScaffold = Scaffold(
    backgroundColor: Colors.black,
    body: SafeArea(
      child: myColumn,
    ),
  );

  //static var player = AudioPlayer().audioCache; //.setSource(AssetSource("assets/note1.wav"));
  //static AudioCache player2 = AudioCache();

  static Center myCenter = Center(
    child: Column(
      children: buttonList,
    ),
  );

  static Column myColumn = Column(
    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: builtButtonList,
  );

  static List<Widget> builtButtonList = [
    buildKey(0),
    buildKey(1),
    buildKey(2),
    buildKey(3),
    buildKey(4),
    buildKey(5),
    buildKey(6),
  ];

  static List<Widget> expandedButtonList = [
    expandButton(noteButton1),
    expandButton(noteButton2),
    expandButton(noteButton3),
    expandButton(noteButton4),
    expandButton(noteButton5),
    expandButton(noteButton6),
    expandButton(noteButton7),
  ];

  static List<Widget> buttonList = [
    expandButton(noteButton1),
    noteButton2,
    noteButton3,
    noteButton4,
    noteButton5,
    noteButton6,
    noteButton7,
  ];

  static Expanded expandButton(ElevatedButton button) => Expanded(child: button);

  static ElevatedButton noteButton1 = ElevatedButton(
    onPressed: () {
      player.play(getSound(1));
    },
    style: ElevatedButton.styleFrom(backgroundColor: getColor(0)),
    child: null,
  );
  static ElevatedButton noteButton2 = ElevatedButton(
    onPressed: () {
      player.play(getSound(2));
    },
    style: ElevatedButton.styleFrom(backgroundColor: getColor(1)),
    child: null,
  );
  static ElevatedButton noteButton3 = ElevatedButton(
    onPressed: () {
      player.play(getSound(3));
    },
    style: ElevatedButton.styleFrom(backgroundColor: getColor(2)),
    child: null,
  );
  static ElevatedButton noteButton4 = ElevatedButton(
    onPressed: () {
      player.play(getSound(4));
    },
    style: ElevatedButton.styleFrom(backgroundColor: getColor(3)),
    child: null,
  );
  static ElevatedButton noteButton5 = ElevatedButton(
    onPressed: () {
      player.play(getSound(5));
    },
    style: ElevatedButton.styleFrom(backgroundColor: getColor(4)),
    child: null,
  );
  static ElevatedButton noteButton6 = ElevatedButton(
    onPressed: () {
      player.play(getSound(6));
    },
    style: ElevatedButton.styleFrom(backgroundColor: getColor(5)),
    child: null,
  );
  static ElevatedButton noteButton7 = ElevatedButton(
    onPressed: () {
      player.play(getSound(7));
    },
    style: ElevatedButton.styleFrom(backgroundColor: getColor(6)),
    child: null,
  );
}
