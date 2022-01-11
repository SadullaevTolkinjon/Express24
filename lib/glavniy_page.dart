import 'package:flutter/material.dart';
import 'package:uzexpress/data/data_base_class.dart';
import 'skidka_page.dart';
import 'pages/magazin.dart';
import 'package:uzexpress/populyarni_restoran.dart';
import 'restoran.dart';

class Glavniy_PAge extends StatefulWidget {
  const Glavniy_PAge({Key? key}) : super(key: key);

  @override
  _Glavniy_PAgeState createState() => _Glavniy_PAgeState();
}

class _Glavniy_PAgeState extends State<Glavniy_PAge> {
  String _dropValue = "Sergeli tumani, Sergeli 5 massiv 108";
  final _keycontroller = GlobalKey<FormState>();
  final _nameController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 110,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  dropmenyu(),
                  searchqismi(),
                ],
              ),
            )),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        height: 140,
                        width: 220,
                        margin: const EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                            image:
                                NetworkImage(skidka[index]["rasm"].toString()),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SkidkaPAge(
                              data: skidka[index],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: skidka.length,
                  itemExtent: 220.0,
                ),
              );
            }, childCount: 1),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: 120)),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.010,
                        top: MediaQuery.of(context).size.height * 0.005),
                    child: Text(
                      "Mагазины",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.030,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.005),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Bсе",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 7,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade100,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          magazin[index]["rasm"].toString()),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Text(magazin[index]["nom"].toString())
                                    ],
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(10.0)),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(7.0),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Magazinlar(
                                      malumot: magazin[index],
                                    )));
                      },
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: magazin.length,
                  itemExtent: 260,
                ),
              );
            }, childCount: 1),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: 160),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.010,
                      top: MediaQuery.of(context).size.height * 0.005,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      "Рестораны",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.035,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
            top: 10.0,
          ),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                child: Container(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        child: Center(
                          child: Text(
                            data[index]["nom"].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 15),
                          ),
                        ),
                        height: 140,
                        width: 220,
                        margin: const EdgeInsets.all(7.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemExtent: 180.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Populyarni_Restoran(
                        datta: data[index],
                      ),
                    ),
                  );
                },
              );
            }, childCount: 1),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: 60),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                child: Container(
                  margin: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10.0),
                              ),
                              color: Colors.amber.shade100,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    restoran[index]["rasm"].toString(),
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: ListTile(
                                  title: Text(
                                    restoran[index]["nom"],
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  subtitle: Text(
                                    restoran[index]["subtitle"].toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_border)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_outline),
                                    ),
                                    Text(restoran[index]["reyting"].toString()),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 5.0),
                                      child: Icon(Icons.directions_car),
                                    ),
                                    Text(restoran[index]["dostavkanarx"]
                                        .toString())
                                  ],
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10.0),
                              ),
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Retoran(
                        malumot: restoran[index],
                      ),
                    ),
                  );
                },
              );
            }, childCount: restoran.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: MediaQuery.of(context).size.height * 0.4),
          ),
        ),
      ],
    );
  }
    Padding dropmenyu() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton(
                value: _dropValue,
                items: const [
                  DropdownMenuItem(
                    child: Text("Sergeli tumani, Sergeli 5 massiv 108"),
                    value: "Sergeli tumani, Sergeli 5 massiv 108",
                  ),
                  DropdownMenuItem(
                    child: Text("Yakkasaroy tumani, 8 massiv 110"),
                    value: "Yakkasaroy tumani,8 massiv 110",
                  ),
                  DropdownMenuItem(
                    child: Text("Chilonzor tumani,Chilonzor 4 massiv 20"),
                    value: "Chilonzor tumani,Chilonzor 4 massiv 20",
                  ),
                  DropdownMenuItem(
                    child: Text("Olmazor tumani,Olmazor 6 massiv 220"),
                    value: "Olmazor tumani,Olmazor 6 massiv 220",
                  ),
                  DropdownMenuItem(
                    child: Text("Yashnabod tumani,Yashnabod 17 massiv 170"),
                    value: "Yashnabod tumani,Yashnabod 17 massiv 170",
                  ),
                  DropdownMenuItem(
                    child: Text("Mirobod Tumani,Mirobod 6 massiv 140"),
                    value: "Mirobod tumani,Mirobod 6 massiv 140",
                  )
                ],
                onChanged: (v) {
                  setState(() {
                    _dropValue = v.toString();
                  });
                }),
          )
        ],
      ),
    );
  }

  Padding searchqismi() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
      child: Form(
        key: _keycontroller,
        child: TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              top: 10.0,
            ),
            fillColor: Color(0XFFE5E5E5),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: "Поиск",
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
