import 'package:flutter/material.dart';
import 'package:uzexpress/data/data_base_class.dart';
import 'restoran.dart';

class Populyarni_Restoran extends StatefulWidget {
  Map? datta;
  Populyarni_Restoran({Key? key,this.datta}) : super(key: key);

  @override
  _Populyarni_RestoranState createState() => _Populyarni_RestoranState();
}

class _Populyarni_RestoranState extends State<Populyarni_Restoran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color(0XFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.datta!["nom"]!.toString(),style: TextStyle(color: Colors.black),),
      ),
      body: CustomScrollView(slivers: [
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
                                      Text(restoran[index]["reyting"]
                                          .toString()),
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
      ],),
    );
  }
}
