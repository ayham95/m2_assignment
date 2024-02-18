import 'package:candy/candy.dart';
import 'package:flutter/material.dart';

class TickerLoadingWidget extends StatelessWidget {
  const TickerLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: ShimmerLoading(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: baseContentLight,
                  ),
                ),
                const Width(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 16,
                      color: baseContentLight,
                    ),
                    const Height(4),
                    Container(
                      width: 60,
                      height: 12,
                      color: baseContentLight,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 80,
              height: 18,
              color: baseContentLight,
            ),
            Container(
              width: 60,
              height: 20,
              color: baseContentLight,
            ),
          ],
        ),
      ),
    );
  }
}
