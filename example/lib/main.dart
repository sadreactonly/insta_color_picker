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
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Initial Instagram colors',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
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
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Our color palettes',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
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
