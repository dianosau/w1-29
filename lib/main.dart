import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'NotoSansThai',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue[700]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://s2.coinmarketcap.com/static/img/coins/200x200/35335.png",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Manatsawi Ruangsoouksood",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Manatsawi.ruangsoouksood@e-tech.ac.th",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.phone, color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "เบอร์โทรศัพท์",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "090-730-0691",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.cake, color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("วันเกิด", style: TextStyle(fontSize: 15)),
                            Text(
                              "10 สิงหาคม 2548",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.location_on, color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ที่อยู่", style: TextStyle(fontSize: 15)),
                            Text(
                              "เกาะแคนดี้",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.school, color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("การศึกษา", style: TextStyle(fontSize: 15)),
                            Text(
                              "วิทยาลัยเทคโนโลยีภาคตะวันออกอีเทค",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/second'),

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15),
                        ),

                        child: Text("NEXT"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://s2.coinmarketcap.com/static/img/coins/200x200/35335.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "การติดตาม",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: SizedBox(width: 1, height: 20),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              "300M",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ผู้ติดตาม",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: SizedBox(width: 1, height: 20),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ถูกใจและบันทึก",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Manatsawi_Ruangsoouksood",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.verified, color: Colors.blue),
                    ],
                  ),SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.tiktok, color: Colors.grey, size: 14),
                      SizedBox(width: 2),
                      Text(
                        "manatsawi666",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(width: 2),
                      Icon(Icons.arrow_drop_down, color: Colors.grey, size: 14),
                    ],
                  ),SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/second'),

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          minimumSize: Size(300, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                        ),

                        child: Text(
                          "ติดตาม",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),

                      Icon(Icons.share),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
