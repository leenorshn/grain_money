import 'package:flutter/material.dart';

class TransfertScreen extends StatefulWidget {
  @override
  _TransfertScreenState createState() => _TransfertScreenState();
}

class _TransfertScreenState extends State<TransfertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Transfert"),
            elevation: 1.0,
            expandedHeight: 160.0,
            pinned: true,
            flexibleSpace: Container(
              child: Column(
                children: <Widget>[
                  // Spacer(),
                  SizedBox(
                    height: 100.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 16.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person),
                          radius: 25.0,
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "solde",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 14.0),
                              ),
                              Text(
                                "\$ 157",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Card(
              child: Container(
                height: 180.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(),
                          SizedBox(width: 16.0,),
                          RaisedButton(onPressed: (){}, child: Text("Destinateur"),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Container(
                        width: 180.0,
                        child: TextFormField(

                          decoration: InputDecoration(
                            labelText: "Montant",
                            border:
                                OutlineInputBorder(borderRadius: BorderRadius.zero),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
