import 'package:flutter/material.dart';
import 'Constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild, this.onPress});
  //these {} to show property name before assign value to it
  //  colour:red;

  final Color? colour;
  final Widget? cardChild;
  final VoidCallback? onPress; //now reusable-card has 3 properties you can modify

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
        child: cardChild,
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 20),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}

class Button extends StatelessWidget {
  Button({this.icon, this.onPressed});
  final IconData? icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      backgroundColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}

class ButtomBotton extends StatelessWidget {
  ButtomBotton({required this.buttonTitle, required this.onTap});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomContainerStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
