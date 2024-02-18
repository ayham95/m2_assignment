import 'package:flutter/widgets.dart';

class Height extends StatelessWidget {
  final double height;
  const Height(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
