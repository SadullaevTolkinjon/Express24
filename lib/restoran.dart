import 'package:flutter/material.dart';
import 'package:uzexpress/data/data_base_class.dart';
import 'data_class.dart';

class Retoran extends StatefulWidget {
  Map? malumot;
  Retoran({Key? key, this.malumot}) : super(key: key);

  @override
  _RetoranState createState() => _RetoranState();
}

class _RetoranState extends State<Retoran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(
                  widget.malumot!["rasm"].toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 100,
                  color: Colors.white,
                  child: ListTile(
                    title: Container(
                      child: Text(
                        widget.malumot!["nom"].toString(),
                        style: const TextStyle(fontSize: 28.0),
                      ),
                    ),
                    subtitle: Container(
                      child: const Text("Минимальная сумма заказа 0 сум"),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                    "Доставка ${widget.malumot!["dostavkanarx"]} сум")),
                          ],
                        ),
                        height: 60.0,
                        width: 390,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              color: Colors.white,
                            ),
                            child: ListTile(
                              title: Text("${widget.malumot!["vaqt"]} min"),
                              subtitle: Text("Время доставки"),
                            )),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            title: Text(widget.malumot!["reyting"].toString()),
                            subtitle: Text("Reyting"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  tileColor: Colors.white,
                  leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  title: Text(
                    "${widget.malumot!["about"]}",
                  ),
                )
              ],
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
                                color: Colors.orange.shade100,
                                image: DecorationImage(
                                    image: NetworkImage(widget
                                        .malumot!["turlirasm"][index]
                                        .toString()),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Text(
                                    widget.malumot!["taom"][index].toString(),
                                    style: TextStyle(fontSize: 12.0),
                                  )),
                                  Row(
                                    children: [
                                      Text(
                                          "Narx ${widget.malumot!["narx"][index]} sum"),
                                    ],
                                  )
                                ],
                              ),
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
                    zakaz.add(Jonatish(narx: widget.malumot!["narx"][index],nom: widget.malumot!["taom"][index],rasm: widget.malumot!["turlirasm"][index]));
                  },
                );
              }, childCount: widget.malumot!["turlirasm"]!.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.35),
            ),
          ),
        ],
      ),
    );
  }
}
