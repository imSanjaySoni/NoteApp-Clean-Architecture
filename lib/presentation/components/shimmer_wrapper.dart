import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWrapper extends StatelessWidget {
  const ShimmerWrapper({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: Colors.grey[300]!,
      baseColor: Colors.grey[100]!,
      child: child,
    );
  }
}
