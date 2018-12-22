import 'package:flutter/material.dart';

class HomeGrainScreen extends StatefulWidget {
  @override
  _HomeGrainScreenState createState() => _HomeGrainScreenState();
}

class _HomeGrainScreenState extends State<HomeGrainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height / 2) - 30,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.deepPurple],
            )),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Text(
                        "Grain money",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white54,
                        child: Icon(
                          Icons.grain,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "YOUR BALANCE",
                  style: TextStyle(color: Colors.white54, fontSize: 14.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "\$",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "1,950",
                      style: TextStyle(fontSize: 45.0, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text("USD", style: TextStyle(color: Colors.white54)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "This Moth",
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Chip(
                      label: Text(
                        "\$ 400",
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      backgroundColor: Colors.deepPurple,
                      //shape: Border.all(color: Colors.white,width: 1.0,style: BorderStyle.solid),
                      shape: StadiumBorder(side: BorderSide(color: Colors.white,style: BorderStyle.solid,width: 1.0)
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withAlpha(100), width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Transaction History",
                    style: TextStyle(fontSize: 20.0, color: Colors.black54),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 30.0,
                  ),
                ],
              )),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                cardHistoryItem(Icons.card_travel, "Pulsa Im3", "+\$ 23", "3",
                    "Payment", Colors.cyan),
                cardHistoryItem(Icons.account_balance_wallet, "Erik Tohir",
                    "-\$ 70", "7", "Purchase", Colors.deepOrange),
                cardHistoryItem(Icons.account_balance_wallet, "Victor shn",
                    "-\$ 35", "9", "Purchase", Colors.deepOrange),
                cardHistoryItem(Icons.card_travel, "Mile Ayam", "+\$ 23", "11",
                    "Payment", Colors.cyan),
                cardHistoryItem(Icons.card_travel, "Congo Dev", "+\$ 100", "11",
                    "Payment", Colors.cyan),
                cardHistoryItem(Icons.account_balance_wallet, "Am sonic",
                    "-\$ 200", "13", "Purchase", Colors.deepOrange),
                cardHistoryItem(Icons.card_travel, "Tierse m", "+\$ 245", "13",
                    "Payment", Colors.cyan),
                cardHistoryItem(Icons.account_balance_wallet, "Synt- M",
                    "-\$ 10", "14", "Purchase", Colors.deepOrange),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget cardHistoryItem(IconData icon, String name, String price,
      String heurePasse, String typeAction, Color color) {
    return Card(
      elevation: 0.5,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              radius: 25.0,
              child: Icon(icon),
            ),
            SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$name",
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
                ),
                Text(
                  "${price}",
                  style: TextStyle(fontSize: 25.0, color: Colors.purple),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: <Widget>[
                Text(
                  "${heurePasse}h ago",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
                Chip(
                    label: Text(
                      "$typeAction",
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.only(left: 18.0, right: 18.0),
                    backgroundColor: color)
              ],
            )
          ],
        ),
      ),
    );
  }
}
