import 'package:flutter/material.dart';
import 'package:playflow/shared/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {

  final String label;
  final VoidCallback onPressed;
  final TextStyle? textStyle;

  const LabelButton({Key? key,
    required this.label,
    required this.onPressed,
    this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
        child: TextButton(onPressed: (){},
            child: Text(label, style: textStyle ?? TextStyles.buttonHeading,)));
  }
}
