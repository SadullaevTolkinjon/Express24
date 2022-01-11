import 'package:flutter/material.dart';

class Profil_Page extends StatefulWidget {
  const Profil_Page({Key? key}) : super(key: key);

  @override
  _Profil_PageState createState() => _Profil_PageState();
}

class _Profil_PageState extends State<Profil_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Профиль"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20.0),
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      title: Text("To'lqinjon"),
                      subtitle: Text("+998 900119597"),
                      trailing: IconButton(
                        icon: Icon(Icons.miscellaneous_services_outlined),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: Text("Balans: 0 ball"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20.0),
            child: Container(
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text("Увидомления"),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Text("Платежная карта"),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.forum),
                    title: Text("Обратная связь"),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text("Cashback"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Bыйти",
                style: TextStyle(color: Colors.red.shade400),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(380, 45),
                primary: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
