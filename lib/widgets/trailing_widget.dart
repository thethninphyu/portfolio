import 'package:flutter/material.dart';
import 'package:portfolio/app/configs.dart';
import 'package:portfolio/core/utils/ScreenUiHelper.dart';

class TrailingInfo extends StatelessWidget {
  const TrailingInfo({
    Key? key,
    this.leadingWidget,
    this.middleWidget,
    this.trailingWidget,
    this.spacingWidget,
    this.padding,
    this.info,
    this.width,
    this.color,
    this.onTrailingWidgetPressed,
    this.onLeadingWidgetPressed,
    this.crossAxisAlignment = CrossAxisAlignment.end,
  }) : super(key: key);

  final Widget? leadingWidget;
  final Widget? middleWidget;
  final Widget? trailingWidget;
  final Widget? spacingWidget;
  final EdgeInsetsGeometry? padding;
  final String? info;
  final double? width;
  final Color? color;
  final GestureTapCallback? onTrailingWidgetPressed;
  final GestureTapCallback? onLeadingWidgetPressed;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final ScreenUiHelper uiHelper = ScreenUiHelper.fromContext(context);
    final ThemeData theme = Theme.of(context);
    return Container(
      width: width,
      padding: padding ??
          const EdgeInsets.only(
            top: 30,
            right: 30,
            bottom: 20,
          ),
      color: color,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          spacingWidget ?? const Spacer(),
          middleWidget ??
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  info ?? PersonalDetails.email,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.bodyText1!.copyWith(
                    color: uiHelper.textPrimaryColor,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
          spacingWidget ?? const Spacer(),
          InkWell(
            onTap: onTrailingWidgetPressed,
            child: trailingWidget ??
                CircularContainer(
                  color: uiHelper.primaryColor,
                  width: 30,
                  height: 30,
                  child: const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    this.child,
    this.width = 40,
    this.height = 40,
    this.color,
    this.borderRadius,
  });

  final Color? color;
  final Widget? child;
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ?? BorderRadius.circular(60)),
      child: child,
    );
  }
}
