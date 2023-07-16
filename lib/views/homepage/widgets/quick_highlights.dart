import 'package:flutter/material.dart';

class HighLights extends StatefulWidget {
  const HighLights({super.key});

  @override
  State<HighLights> createState() => _HighLightsState();
}

class _HighLightsState extends State<HighLights> {
  String milestone = '75% Done';
  String today = DateTime.now().day.toString();
  String todaysDate =
      '${DateTime.now().month.toString()}, ${DateTime.now().year.toString()}';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 16, 29, 47),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's $today",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  todaysDate,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 179, 178, 178),
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  milestone,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                const Text(
                  'Completed Tasks',
                  style: TextStyle(
                    color: Color.fromARGB(255, 179, 178, 178),
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
