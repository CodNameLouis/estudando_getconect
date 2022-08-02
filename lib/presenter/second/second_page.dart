import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './second_controller.dart';

class SecondPage extends GetView<SecondController> {
    
    const SecondPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('SecondPage'),),
            body: Container(),
        );
    }
}