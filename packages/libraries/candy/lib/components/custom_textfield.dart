import 'package:candy/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:candy/foundation/extensions/theme_extensions.dart';

enum CustomTextFieldStyle { big, small }

class CustomTextField extends StatelessWidget {
  final String text;
  final String hintText;
  final String prefix;
  final TextEditingController? controller;
  final bool enabled;
  final TextInputType textInputType;
  final ValueChanged<String>? onChanged;
  final CustomTextFieldStyle style;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? trailing;
  final BorderRadiusGeometry? borderRadius;
  final TextCapitalization textCapitalization;

  const CustomTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.text = '',
    this.hintText = '',
    this.prefix = '',
    this.enabled = true,
    this.textInputType = TextInputType.text,
    this.style = CustomTextFieldStyle.big,
    this.inputFormatters,
    this.trailing,
    this.borderRadius,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.oneAndHalf),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: labelLight6,
      ),
      child: Row(
        children: [
          Text(
            prefix,
            style: _getTextStyle(style, context),
          ),
          Expanded(
            child: TextFormField(
              autofocus: false,
              inputFormatters: inputFormatters,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              keyboardType: textInputType,
              enabled: enabled,
              onChanged: onChanged,
              controller: controller,
              enableSuggestions: false,
              style: _getTextStyle(style, context),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: _getTextStyle(style, context).copyWith(
                  color: labelLight3,
                ),
              ),
              textCapitalization: textCapitalization,
            ),
          ),
          const Width(Spacing.double),
          AnimatedDefaultTextStyle(
            style: context.textTheme.bodyMedium!.copyWith(
              color: labelLight2,
            ),
            duration: fastAnimationDuration,
            child: trailing ?? Container(),
          )
        ],
      ),
    );
  }

  _getTextStyle(CustomTextFieldStyle style, BuildContext context) {
    switch (style) {
      case CustomTextFieldStyle.big:
        return context.textTheme.titleMedium;
      case CustomTextFieldStyle.small:
        return context.textTheme.bodyMedium;
    }
  }
}
