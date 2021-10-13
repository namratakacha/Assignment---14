import 'package:flutter/material.dart';

class AlertDialg extends StatelessWidget {
  const AlertDialg({Key? key, Text? content, List<TextButton>? actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: const Text('Discard draft?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('CANCLE'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('DISCARD'),
                    ),
                  ],
                );
              });
        },
        child: Text('Alert Dialog'));
  }
}
