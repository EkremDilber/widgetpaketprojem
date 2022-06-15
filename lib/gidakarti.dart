import 'package:flutter/material.dart';

class GidaKarti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 18, 15, 20),
      child: Material(
        elevation: 0.0,
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18.0),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: double.infinity,
          height: 300.0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/03/21/11/17/burger-4953465_960_720.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Row(children: [
                Text(
                  "47,90 ₺",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Cheeseburger",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontSize: 15.5,
                      height: 1.5),
                ),
              ]),
              SizedBox(height: 8.0),
              Text(
                "İçindekiler",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0),
              ),
              SizedBox(height: 4.0),
              Text(
                "Patates, Köfte, Cheddar Peyniri, Marul, Domates",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
