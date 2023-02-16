import 'package:flutter/material.dart';
import 'package:flutter_demo/components/food_rate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    const double radius = 20;
    const String imagePath = 'assets/pizza1.png';

    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
        ],
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Wrap(
            direction: Axis.vertical,
            spacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.crown,
                          size: 12,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Top of the week',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 5,
                      children: [
                        const Text(
                          'Primavera Pizza',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Weight 540 gr',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 54,
                    width: 90,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(radius),
                        topRight: Radius.circular(radius),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const FoodRate(
                    rate: 5.0,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: -48,
            child: Hero(
              tag: imagePath,
              child: Image.asset(
                imagePath,
                width: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
