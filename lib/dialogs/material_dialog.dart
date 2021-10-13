import 'package:flutter/material.dart';

class MaterialDialg extends StatelessWidget {
  const MaterialDialg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Reset settings?'),
                  content: const Text(
                      'This will reset your device to its default factory settings'),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text('CANCLE'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('ACCEPT'),
                    ),
                  ],
                );
              });
        },
        child: Text('Material Alert Dialog'));
  }
}
