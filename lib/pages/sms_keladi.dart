import 'package:flutter/material.dart';
import 'package:uzexpress/firstpage.dart';
import 'package:uzexpress/pages/haqiqiy_zakaz_page.dart';

class SmsKeladi extends StatefulWidget {
  String? nomer;
  SmsKeladi({Key? key, this.nomer}) : super(key: key);

  @override
  _SmsKeladiState createState() => _SmsKeladiState();
}

class _SmsKeladiState extends State<SmsKeladi> {
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
                  "+998 ${widget.nomer.toString()} nomerga sms jonatildi!",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 12.0),
              child: Row(
                children: [
                  Text(
                    "Kodni kiriting:",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                onChanged: (v) {
                  _textController.addListener(() {
                    if (v.length == 4) {
                      setState(() {
                        print("4 ga tengp");
                      });
                     }
                 });
                },
                controller: _textController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Text(
                  "3:00",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorchanger(),
                    minimumSize: Size(350, 50.0),
                  ),
                  child: Text(
                    "Продолжить",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FirsPage();
                    }));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  colorchanger() {
    if (_textController.text.length > 3) {
      setState(() {});
    }
    if (_textController.text.length > 3) {
      return Colors.yellow;
    } else {
      return Colors.grey;
    }
  }
}
