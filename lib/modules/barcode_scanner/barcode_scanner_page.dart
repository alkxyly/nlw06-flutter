import 'package:flutter/material.dart';
import 'package:playflow/shared/themes/AppColors.dart';
import 'package:playflow/shared/themes/app_text_styles.dart';
import 'package:playflow/shared/widgets/divider/divider_vertical.dart';
import 'package:playflow/shared/widgets/label_button/label_button.dart';
import 'package:playflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Escaneie o código de barras do boleto",
          style: TextStyles.buttonBackground,
        ),
        leading: BackButton(
          color: AppColors.background ,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.black,
          )),
          Expanded(
             flex: 2,
              child: Container(
                color: Colors.transparent,
          )),
          Expanded(child: Container(
            color: Colors.black,
          ))
        ],
      ),
      bottomNavigationBar: SetLabelButtons(
                primaryLabel: "Inserir código do boleto",
                primaryOnPressed: (){},
                secundaryLabel: "Adicionar da Galeria",
                secundaryOnPressed: (){}
          ),
    );
  }
}
