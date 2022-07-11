import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
    this.clique,
  }) : super(key: key);
  final String texto;
  final IconData icone;
  final void Function()? clique;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          textStyle: const TextStyle(
            fontSize: 25,
          )),
      onPressed: clique,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              icone,
              size: 35,
            ),
          ),
          Text(
            texto,
          )
        ],
      ),
    );
  }
}
