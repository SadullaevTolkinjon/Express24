import 'package:flutter/material.dart';

class SkidkaPAge extends StatefulWidget {
  Map? data;
   SkidkaPAge({Key? key,this.data}) : super(key: key);

  @override
  _SkidkaPAgeState createState() => _SkidkaPAgeState();
}

class _SkidkaPAgeState extends State<SkidkaPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(
                  widget.data!["rasm"]!.toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 180,
                  color: Colors.white,
                  child: ListTile(
                    title: Container(
                      child: Text(
                        widget.data!["title"].toString(),
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                    subtitle: Container(
                      child: Text(
                          widget.data!["subtitle"].toString()),
                    ),
                  ),
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
                             
                              image: DecorationImage(
                                  image: NetworkImage(
                                     widget.data!["skidkadokonrasm"][index].toString()),
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
                                    widget.data!["nom"][index].toString(),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  subtitle: Text(
                                    "Aзиатская / Популярный",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite)),
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
                                    Text("4.5 (500+)"),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 5.0),
                                      child: Icon(Icons.directions_car),
                                    ),
                                    Text("20 800 sum")
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
                );
              }, childCount: widget.data!["skidkadokonrasm"]!.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.4),
            ),
          ),
        ],
      ),
    );
  }
}
