import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CardAula extends StatelessWidget {
  final Color? color;
  final String? classNumber;
  final int? firstItem;
  final int? secondItem;
  final int? thirthItem;

  const CardAula({Key? key, this.color, this.classNumber, this.firstItem, this.secondItem, this.thirthItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 220,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 125,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Desenvolvimento de Sistemas Móveis',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Turma: 0077-A - 31N - Graduação',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            lineWidth: 5.0,
                            percent: 0.15,
                            center: Text(
                              '25',
                              style: TextStyle(color: Colors.white),
                            ),
                            progressColor: Colors.amber,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 95,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconBadge(
                              icon: const Icon(
                                Icons.star,
                                color: Colors.black54,
                              ),
                              itemCount: firstItem ?? 0,
                              badgeColor: Colors.red,
                              itemColor: Colors.white,
                              hideZero: true,
                              onTap: () {},
                            ),
                            IconBadge(
                              icon: const Icon(
                                Icons.forum,
                                color: Colors.black54,
                              ),
                              itemCount: secondItem ?? 0,
                              badgeColor: Colors.red,
                              itemColor: Colors.white,
                              hideZero: true,
                              onTap: () {},
                            ),
                            IconBadge(
                              icon: const Icon(
                                Icons.error,
                                color: Colors.black54,
                              ),
                              itemCount: thirthItem ?? 0,
                              badgeColor: Colors.red,
                              itemColor: Colors.white,
                              hideZero: true,
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Entrar na sala'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 35),
                              primary: Colors.green, // background
                              onPrimary: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    classNumber ?? '',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w700),
                  )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
