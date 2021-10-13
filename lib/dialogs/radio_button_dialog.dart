import 'package:flutter/material.dart';

class RadioButtonDialog extends StatefulWidget {
  const RadioButtonDialog({Key? key}) : super(key: key);

  @override
  State<RadioButtonDialog> createState() => _RadioButtonDialogState();
}

class _RadioButtonDialogState extends State<RadioButtonDialog> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text('Phone ringtone'),
              children: [
                Column(
                  children: [
                    RadioListTile<int>(
                      title: Text('None'),
                      value: 0,
                      groupValue: selectedValue,
                      onChanged: (value) => setState(
                        () {
                          selectedValue = value!;
                        },
                      ),
                    ),
                    RadioListTile<int>(
                      title: Text('Callisto'),
                      value: 1,
                      groupValue: selectedValue,
                      onChanged: (value) => setState(
                        () {
                          selectedValue = value!;
                        },
                      ),
                    ),
                    RadioListTile<int>(
                      title: Text('Ganymede'),
                      value: 2,
                      groupValue: selectedValue,
                      onChanged: (value) => setState(
                        () {
                          selectedValue = value!;
                        },
                      ),
                    ),
                    RadioListTile<int>(
                      title: Text('Luna'),
                      value: 3,
                      groupValue: selectedValue,
                      onChanged: (value) => setState(
                        () {
                          selectedValue = value!;
                        },
                      ),
                    ),
                    RadioListTile<int>(
                      title: Text('Oberon'),
                      value: 4,
                      groupValue: selectedValue,
                      onChanged: (value) => setState(
                        () {
                          selectedValue = value!;
                        },
                      ),
                    ),
                    RadioListTile<int>(
                      title: Text('Phobos'),
                      value: 5,
                      groupValue: selectedValue,
                      onChanged: (value) => setState(
                        () {
                          selectedValue = value!;
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
      child: Text('Radio Button Dialog'),
    );
  }
}
