import 'package:flutter/material.dart';

class LoginEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(18.0),
          width: double.infinity,
          height: 500.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 90.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.8,
                        color: Colors.lightBlue,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?k=20&m=1309328823&s=612x612&w=0&h=RqA2lYygvOxisNPp6UwFjz7bCw_rYITJMqFTMSrhpis='),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Kullanıcı Adı',
                      hintText: 'Kullanıcı Adınızı Girin'),
                ),
                SizedBox(height: 5.0),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şifre',
                      hintText: 'Şifrenizi Girin'),
                ),
                SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("GİRİŞ YAP"),
                  style: ElevatedButton.styleFrom(fixedSize: Size(160, 50)),
                ),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Üye Ol"), Text("Şifremi Unuttum")],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
