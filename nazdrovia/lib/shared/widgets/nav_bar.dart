import 'package:flutter/material.dart';
import 'package:nazdrovia/app_states/app_state.dart';
import 'package:provider/provider.dart';

import '../utilities/resizer.dart';
import '../utilities/utilities.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width:
                  resizeWidth(percValue: 45, context: context, fullUnder: 570),
              height: resizeHeight(percValue: 8, context: context),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
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
      ),
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
          Themes.isLightTheme ? Icons.brightness_7 : Icons.brightness_3,
          size: 40,
          color: Theme.of(context).primaryColor,
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
          Provider.of<AppState>(context, listen: false)
              .changeCurrentTheme(newTheme);
        },
      ),
    );
  }
}
