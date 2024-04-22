import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../core/utils/ScreenUiHelper.dart';
import 'translate_on_hover.dart';

class IconWrrapper extends HookWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final Function? onTap;
  final Color? color;
  final EdgeInsets margin;

  const IconWrrapper(
      {Key? key,
      this.child,
      this.onTap,
      this.padding,
      this.color,
      this.margin = const EdgeInsets.symmetric(horizontal: 15)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ScreenUiHelper uiHelpers = ScreenUiHelper.fromContext(context);
    final isHovered = useState(false);

    return TranslateOnHover(
      child: MouseRegion(
          onEnter: (event) => isHovered.value = true,
          onExit: (event) => isHovered.value = false,
          child: MaterialButton(
            onPressed: onTap as void Function()?,
            padding: padding ?? const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(width: 2, color: Color(0xFFe6e7ee))),
            color: color ?? uiHelpers.backgroundColor,
            child: child,
          )),
    );
  }
}
