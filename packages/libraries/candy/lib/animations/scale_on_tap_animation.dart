import 'package:candy/foundation/durations.dart';
import 'package:flutter/widgets.dart';

/// Provides tapping functionality with a scale animation.
class ScaleOnTapAnimation extends StatefulWidget {
  final Function()? onPressed;
  final Widget child;
  final bool enableAnimation;

  const ScaleOnTapAnimation({
    super.key,
    this.onPressed,
    required this.child,
    this.enableAnimation = true,
  });

  @override
  ScaledTapState createState() => ScaledTapState();
}

class ScaledTapState extends State<ScaleOnTapAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
    _scale = Tween<double>(begin: 1.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> anim({double? scale, double? opacity, Duration? duration}) {
    _animationController.stop();
    _animationController.duration = duration ?? Duration.zero;

    _scale = Tween<double>(
      begin: _scale.value,
      end: scale,
    ).animate(CurvedAnimation(
      curve: Curves.easeOutExpo,
      parent: _animationController,
    ));

    _animationController.reset();
    return _animationController.forward();
  }

  Future<void> _onTapDown(_) {
    return anim(
      scale: 0.96,
      duration: scaleAnimationDuration,
    );
  }

  Future<void> _onTapUp(_) {
    return anim(
      scale: 1.0,
      duration: scaleAnimationDuration,
    );
  }

  Future<void> _onTapCancel(_) {
    return _onTapUp(_);
  }

  _onTap() {
    if (widget.onPressed != null) {
      return widget.onPressed?.call();
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, Widget? child) {
        return Transform.scale(
          alignment: Alignment.center,
          scale: widget.enableAnimation ? _scale.value : 1,
          child: child,
        );
      },
      child: Listener(
        onPointerDown: _onTapDown,
        onPointerCancel: _onTapCancel,
        onPointerUp: _onTapUp,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _onTap,
          child: widget.child,
        ),
      ),
    );
  }
}
