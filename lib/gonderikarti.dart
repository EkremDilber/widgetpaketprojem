import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        // Gonderi Kartindaki Profil Karti
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.indigo,
                            // ignore: prefer_const_constructors
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(width: 12.0),
                      Column(
                        //İsim Soyad ve Zaman Bilgisi
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'İsim Soyad',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Zaman Bilgisi',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert) // Daha Fazla İkonu
                ],
              ),
              SizedBox(height: 15.0),
              Text(
                "Resim Açıklaması",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10.0),
              Image.network(
                'https://cdn.pixabay.com/photo/2019/08/07/14/11/dog-4390885_960_720.jpg',
                width: double.infinity,
                height: 180.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IkonluButonum(
                    ikonum: Icons.favorite,
                    yazi: "Beğen",
                    fonksiyonum: () {
                      print("Beğen");
                    },
                  ),
                  IkonluButonum(
                    ikonum: Icons.comment,
                    yazi: "Yorum Yap",
                    fonksiyonum: () {
                      print("Yorum Yap");
                    },
                  ),
                  IkonluButonum(
                    ikonum: Icons.share,
                    yazi: "Paylaş",
                    fonksiyonum: () {
                      print("Paylaş");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IkonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;

  IkonluButonum({required this.ikonum, required this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(width: 8.0),
              Text(
                yazi,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
