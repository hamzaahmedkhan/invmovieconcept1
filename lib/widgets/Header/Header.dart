import 'package:flutter/material.dart';

import 'package:invmovieconcept1/configs/AppDimensions.dart';
import 'package:invmovieconcept1/configs/AppTheme.dart';
import 'package:invmovieconcept1/configs/TextStyles.dart';

import 'package:invmovieconcept1/Utils.dart';

import 'package:invmovieconcept1/widgets/Buttons/BackIcon.dart';

class Header extends StatelessWidget {
  Header({
    this.label,
    this.enableSafePadding = true,
  });

  final String label;
  final bool enableSafePadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.enableSafePadding
          ? Utils.safePaddingUnit(context, "top")
          : EdgeInsets.zero,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: AppTheme.lightShadow,
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            BackIconButton(onPressed: () {}),
            Container(
              padding: EdgeInsets.all(AppDimensions.padding * 2),
              child: Text(
                this.label,
                style: TextStyles.heading46,
              ),
            ),
          ],
        ),
      ),
    );
  }
}