import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/widgets/login_button.dart';
import 'package:nazdrovia/shared/widgets/theme_button.dart';

import '../utils/utilities.dart';

class NavBar extends StatelessWidget {
  const NavBar();

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
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ThemeButton(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: LoginButton(),
                    ),
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
