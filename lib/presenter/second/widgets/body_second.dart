import 'package:estudando_getconect/presenter/second/second_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodySecond extends GetView<SecondController> {
  const BodySecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondController>(
      builder: (_control) {
        return Column(
          children: [
            ListTile(
              title: Text(_control.cep?.city.name ?? ""),
              subtitle: Text(_control.cep?.zipCode ?? ""),
            ),
            ListTile(
              title: Text(_control.cep?.country.name ?? ""),
              subtitle: Text(_control.cep?.state.name ?? ""),
            ),
          ],
        );
      },
    );
  }
}
