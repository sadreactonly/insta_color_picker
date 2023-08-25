import 'package:flutter/material.dart';
import 'package:insta_color_picker/insta_color_picker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Color _color = Colors.white;
  Color _color2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('insta_color_picker'),
      ),
      body: Column(children: [
        const Text('Initial Instagram colors'),
        InstaColorPicker(
          pageController: PageController(keepPage: true),
          selectedColor: _color,
          onColorSelected: (color) {
            setState(() {
              _color = color;
            });
          },
        ),
        const Divider(),
        const Text('Our color palettes'),
        InstaColorPicker(
          pageController: PageController(keepPage: true),
          icon: Icons.colorize,
          selectedColor: _color2,
          colorsList: const [
            ColorPalettes.autumnVibes,
            ColorPalettes.oceanBreeze,
            ColorPalettes.pastelDream,
            ColorPalettes.tropicalParadise,
            ColorPalettes.urbanChic
          ],
          onColorSelected: (color) {
            setState(() {
              _color2 = color;
            });
          },
        ),
      ]),
    );
  }
}
