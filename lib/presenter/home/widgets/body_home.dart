import 'package:estudando_getconect/routes/routes_imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class BodyHome extends GetView<HomeController> {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_control) {
        return Column(
          children: [
            TextField(
              onChanged: _control.changeCep,
            ),
            ListTile(
              title: Text(_control.adress?.city.name ?? ""),
              subtitle: Text(_control.adress?.zipCode ?? ""),
            ),
            ListTile(
              title: Text(_control.adress?.country.name ?? ""),
              subtitle: Text(_control.adress?.state.name ?? ""),
            ),
            ElevatedButton(
              onPressed: () {
                _control.getInfo();
              },
              child: const Text(
                'Buscar endereço',
              ),
            ),
            const SizedBox(
              height: 250,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(SecondPage.route);
              },
              child: const Text(
                'Proxima pagina',
              ),
            ),
          ],
        );
      },
    );
  }
}
