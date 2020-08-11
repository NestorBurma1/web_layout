import 'package:flutter/material.dart';

class UpSideRowWithCircularAvatar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<UpSideRowWithCircularAvatar> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage('images/users_photo/2.jpg'),
        ),
        const Text('Sarah Andersen'),
        DropdownButton<String>(
            icon: const Icon(Icons.keyboard_arrow_down),
            items: <String>['String 1', 'String 2']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: dropdownValue,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String newValue) {
              setState(
                () {
                  dropdownValue = newValue;
                },
              );
            }),
      ],
    );
  }
}
