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
            ListTile(
              title: Text(_control.adress?.city.name ?? ""),
              subtitle: Text(_control.adress?.zipCode ?? ""),
            ),
            ListTile(
              title: Text(_control.adress?.country.name ?? ""),
              subtitle: Text(_control.adress?.state.name ?? ""),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Proxima pagina'),
            )
          ],
        );
      },
    );
  }
}
