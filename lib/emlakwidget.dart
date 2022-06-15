import 'package:flutter/material.dart';

class EmlakWidget extends StatelessWidget {
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
                        'https://cdn.pixabay.com/photo/2018/04/04/00/03/houston-3288450_960_720.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Row(children: [
                Text(
                  "950,000 ₺",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 13.0),
                Text(
                  "İstanbul, Beylikdüzü 34000",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      height: 1.5),
                ),
              ]),
              SizedBox(height: 8.0),
              Text(
                "4 yatak odası / 2 banyo / 120 m2",
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
