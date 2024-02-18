import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TickerIcon extends StatelessWidget {
  final String url;

  const TickerIcon({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final isSvg = url.contains('svg');
    return CircleAvatar(
      radius: 24,
      child: isSvg ? SvgPicture.network(url) : Image.network(url),
    );
  }
}
