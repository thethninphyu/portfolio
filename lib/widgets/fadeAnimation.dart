import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AnimationType { opacity, translateX, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  final double xDistance;
  final double yDistance;
  const FadeAnimation(
      {required this.delay,
      required this.child,
      this.xDistance = 30,
      this.yDistance = 0.0});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween(
        AnimationType.opacity,
        Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 500),
      )
      ..tween(
        AnimationType.translateX,
        Tween(begin: xDistance, end: 1.0),
        duration: const Duration(milliseconds: 500),
      )
      ..tween(
        AnimationType.translateY,
        Tween(begin: yDistance, end: 1.0),
        duration: const Duration(milliseconds: 500),
      );

    // return PlayAnimationBuilder<MultiTweenValues<AnimationType>>(
    //   delay: Duration(milliseconds: (500 * delay).round()),
    //   duration: tween.duration,
    //   tween: tween,
    //   child: child,
    //   builder: (context, child, value) => Opacity(
    //     opacity: value.get(AnimationType.opacity),
    //     child: Transform.translate(
    //         offset: Offset(value.get(AnimationType.translateX),
    //             value.get(AnimationType.translateY)),
    //         child: child),
    //   ),
    // );
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: 50.0, end: 200.0),
      duration: const Duration(seconds: 5),
      child: child, // pass in static child
      builder: (context, value, child) {
        return Container(
          width: value,
          height: value,
          color: Colors.white,
          child: child, // use child inside the animation
        );
      },
    );
  }
}
