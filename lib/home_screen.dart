import 'package:assignment_14/dialogs/alert_dialog.dart';
import 'package:assignment_14/dialogs/cupertino_dialog.dart';
import 'package:assignment_14/dialogs/icon_button_dialog.dart';
import 'package:assignment_14/dialogs/material_dialog.dart';
import 'package:assignment_14/dialogs/radio_button_dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dialogs',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: const [
          AlertDialg(),
          Padding(padding: EdgeInsets.all(20)),
          RadioButtonDialog(),
          Padding(padding: EdgeInsets.all(20)),
          MaterialDialg(),
          Padding(padding: EdgeInsets.all(20)),
          CupertinoDialg(),
          Padding(padding: EdgeInsets.all(20)),
          Iconbttn(),
        ],
      ),
    );
  }
}
