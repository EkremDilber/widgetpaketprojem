import 'package:flutter/material.dart';

Padding profilKartiOlustur() {
  return Padding(
    padding: const EdgeInsets.only(left: 3.0, right: 3.0),
    child: Column(
      children: <Widget>[
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2.0, color: Colors.grey),
            borderRadius: BorderRadius.circular(35.0),
          ),
        ),
        const Text(
          'Kullanıcı Adı',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
        )
      ],
    ),
  );
}
