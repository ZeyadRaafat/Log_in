import 'package:flutter/material.dart';

class navRow extends StatelessWidget{
  final String fText;
  final String sText;
  final TextAlign? textAlign;

  const navRow({
    Key? key,
    required this.fText,
    required this.sText,
    this.textAlign=TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(fText,),
        const SizedBox(width: 8,),
        GestureDetector(
          child: Text(
            sText,
            style: const TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}