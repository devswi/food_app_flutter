import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({
    super.key,
    required this.title,
    required this.selected,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String icon;
  final bool selected;
  final Function(String title) onTap;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    const double radius = 20;

    final Color indicatorColor =
        selected ? Colors.white : const Color(0xFFF26C68);
    final Color indicatorIconColor = selected ? Colors.black : Colors.white;

    return GestureDetector(
      onTap: () {
        onTap(title);
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 5,
          bottom: 20,
          left: 10,
          right: 10,
        ),
        width: 105,
        decoration: BoxDecoration(
          color: selected ? primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 10,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
          ],
        ),
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 20,
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              icon,
              width: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 26,
              height: 26,
              child: Container(
                decoration: BoxDecoration(
                  color: indicatorColor,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 10,
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 13,
                  color: indicatorIconColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
