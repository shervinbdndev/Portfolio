import 'package:flutter/material.dart';

class PortfolioMenuItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback ontap;

  const PortfolioMenuItem({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: ontap,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 35.0,
                  color: color,
                ),
                const SizedBox(height: 10.0),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
