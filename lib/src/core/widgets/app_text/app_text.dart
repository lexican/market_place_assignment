import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String? content;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Style textStyle;
  final Color? color;
  final double? letterSpacing;
  final double? height;
  final bool? softWrap;
  final TextAlign? textAlign;

  const AppText.h1({
    super.key,
    this.content,
    this.fontWeight,
    this.fontSize,
    this.textStyle = Style.h1,
    this.color,
    this.letterSpacing,
    this.height,
    this.softWrap,
    this.textAlign,
  });

  const AppText.b1({
    super.key,
    this.content,
    this.fontWeight,
    this.fontSize,
    this.textStyle = Style.b1,
    this.color,
    this.letterSpacing,
    this.height,
    this.softWrap,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content ?? "",
      softWrap: softWrap,
      textAlign: textAlign,
      style: _getStyle(textStyle, context)!.copyWith(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
      ),
    );
  }
}

enum Style { h1, b1 }

TextStyle? _getStyle(Style textStyle, BuildContext context) {
  switch (textStyle) {
    case Style.h1:
      {
        return Theme.of(context).textTheme.headline1;
      }
    case Style.b1:
      {
        return Theme.of(context).textTheme.bodyText1;
      }
  }
}
