import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_signup/common_widgets/fade_in_animation/fade_in_animation_model.dart';

class FadeInAnimation extends StatelessWidget {
  FadeInAnimation(
      {super.key,
      required this.durationInMilliSeconds,
      required this.animationmodel,
      required this.child});

  final int durationInMilliSeconds;
  final controller = Get.put(FadeInAnimationController());
  final AnimatePosition animationmodel;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
          top: controller.animate.value
              ? animationmodel.topAfter
              : animationmodel.topBefore,
          left: controller.animate.value
              ? animationmodel.leftAfter
              : animationmodel.leftBefore,
          bottom: controller.animate.value
              ? animationmodel.bottomAfter
              : animationmodel.bottomBefore,
          right: controller.animate.value
              ? animationmodel.rightAfter
              : animationmodel.rightBefore,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMilliSeconds),
            opacity: controller.animate.value ? 1 : 0,
            child: child,
          ),
          duration: Duration(milliseconds: durationInMilliSeconds),
        ));
  }
}
