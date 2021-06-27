import 'package:flutter/material.dart';
import 'package:playflow/shared/themes/app_text_styles.dart';
import 'package:playflow/shared/widgets/divider/divider_vertical.dart';
import 'package:playflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {

  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPressed;
  final bool enablePrimaryColor;

  const SetLabelButtons({Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secundaryLabel,
    required this.secundaryOnPressed,
    this.enablePrimaryColor = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 56,
      child: Row(
        children: [
          Expanded(

            child: LabelButton(
              label: primaryLabel ,
              onPressed: primaryOnPressed,
            textStyle: enablePrimaryColor ?  TextStyles.buttonPrimary: null)

          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: secundaryLabel ,
              onPressed: secundaryOnPressed),
          )
        ],
      ),
    );
  }
}
