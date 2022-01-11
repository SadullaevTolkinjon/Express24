import 'package:flutter/material.dart';
import 'package:uzexpress/data/data_base_class.dart';
import 'package:uzexpress/data_class.dart';

class Haqiqiy_Zakaz_page extends StatefulWidget {
  Haqiqiy_Zakaz_page({
    Key? key,
  }) : super(key: key);

  @override
  _Haqiqiy_Zakaz_pageState createState() => _Haqiqiy_Zakaz_pageState();
}

class _Haqiqiy_Zakaz_pageState extends State<Haqiqiy_Zakaz_page>
    with TickerProviderStateMixin {
  int _pageINdex = 0;
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  List _body = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white,elevation: 0),
              onPressed: () {
                zakaz.clear();
                setState(() {});
              },
              child: Row(
                children: [Text("Delete All"), Icon(Icons.delete)],
              ))
        ],
        title: Text("Заказы"),
        bottom: TabBar(
          indicatorColor: Colors.yellow,
          controller: _tabController,
          onTap: (val) {
            setState(() {
              _tabController;
            });
          },
          tabs: [
            Tab(
              text: "Активные заказы",
            ),
            Tab(
              text: "История заказов",
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          zakaz[index].rasm.toString(),
                        ),
                      ),
                      title: Text(zakaz[index].nom.toString()),
                      subtitle: Text(zakaz[index].narx.toString()),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          zakaz.removeAt(index);
                          setState(() {});
                        },
                      ),
                    ),
                  );
                },
                itemCount: zakaz.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  page() {
    PageView(
      onPageChanged: (val) {
        setState(() {
          _pageINdex = val;
        });
      },
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.blue,
        )
      ],
    );
  }
}
