import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalStorage.getInstance();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.buildLightThemeData(),
      darkTheme: Themes.buildDarkThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NavBar());
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: resizeWidth(percValue: 45, context: context, fullUnder: 570),
            height: resizeHeight(percValue: 8, context: context),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                LayoutBuilder(
                  builder: (BuildContext ctx, BoxConstraints cons) {
                    return Text(
                      'NAZDROVIA',
                      style: TextStyle(
                        fontSize: cons.maxHeight / 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: DropdownThemeButton(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DropdownThemeButton extends StatefulWidget {
  @override
  _DropdownThemeButtonState createState() => _DropdownThemeButtonState();
}

class _DropdownThemeButtonState extends State<DropdownThemeButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: DropdownButton<String>(
        icon: Icon(
          Icons.color_lens,
          size: 40,
        ),
        items: <String>[Themes.darkTheme, Themes.lightTheme]
            .map<DropdownMenuItem<String>>((String theme) {
          return DropdownMenuItem<String>(
            value: theme,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(theme),
                Icon(
                  theme == Themes.darkTheme
                      ? Icons.brightness_3
                      : Icons.brightness_7,
                ),
              ],
            ),
          );
        }).toList(),
        underline: const SizedBox(),
        onChanged: (String newTheme) {
          setState(() {
            LocalStorage.setItem(Themes.lsThemeKey, newTheme);
          });
        },
      ),
    );
  }
}
