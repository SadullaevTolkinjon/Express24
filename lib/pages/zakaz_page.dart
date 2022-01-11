import 'package:flutter/material.dart';
import 'package:uzexpress/pages/sms_keladi.dart';

class Zakaz_page extends StatefulWidget {
  const Zakaz_page({Key? key}) : super(key: key);

  @override
  _Zakaz_pageState createState() => _Zakaz_pageState();
}

class _Zakaz_pageState extends State<Zakaz_page> {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        ),
        title: Text("Авторизация"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Text(
                  "Введите номер телефона,нa нeгo придёт смс с кодом подтверждения ",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 12.0),
              child: Row(
                children: [
                  Text(
                    "Номер телефона",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: _textController,
                onChanged: (val) {
                  _textController.addListener(() {
                    if (val.length >= 7) {
                      setState(() {});
                    }
                  });
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(prefixText: "+998 "),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _textController.text.length >= 7
                        ? Colors.yellow
                        : Colors.grey,
                    minimumSize: Size(350, 50.0),
                  ),
                  child: Text(
                    "Продолжить",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SmsKeladi(
                          nomer: _textController.text,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
