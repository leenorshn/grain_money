import 'package:flutter/material.dart';
import 'package:grain_money/screens/DemandeFondScreen.dart';
import 'package:grain_money/screens/PayerFactureScreen.dart';
import 'package:grain_money/screens/RetirerScreen.dart';
import 'package:grain_money/screens/TransfertScreen.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction"),
        elevation: 1.0,
        actions: <Widget>[
          CircleAvatar(
            child: Icon(Icons.grain),
            backgroundColor: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text("Vos Actions",style: TextStyle(fontWeight: FontWeight.w600),),
          ),
          CardItem(
            onTapItem: goToTransfert,
            itemName: "Transfert",
            itemDetail: "Envoyer de l'argent a vos proches",
            itemLeandingIcon: Icons.call_missed_outgoing,
            color: Colors.greenAccent,
          ),
          CardItem(
            onTapItem: goToRetirer,
            itemName: "Retirer",
            itemDetail: "C'est votre argent faites usage",
            itemLeandingIcon: Icons.exit_to_app,
            color: Colors.cyan,
          ),
          CardItem(
            onTapItem: goToPayerFacture,
            itemName: "Payer facture",
            itemDetail: "facile et rapide pour vous acquiter",
            itemLeandingIcon: Icons.crop,
            color: Colors.amber,
          ),
          CardItem(
            onTapItem: goToRetirer,
            itemName: "Demander le fond",
            itemDetail: " Negocier d'aide a vos proches rapidement",
            itemLeandingIcon: Icons.attach_money,
            color: Colors.pinkAccent,
          ),

        ],
      )
    );
  }

  goToTransfert(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TransfertScreen()));
  }
  goToRetirer(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RetirerScreen()));
  }
  goToPayerFacture(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PayerFactureScreen()));
  }
  goToDemandeFond(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DemandeFondScreen()));
  }


}

class CardItem extends StatelessWidget {
  final String itemName;
  final String itemDetail;
  final IconData itemLeandingIcon;
  final VoidCallback onTapItem;
  final Color color;

  const CardItem({Key key, this.itemName, this.itemDetail, this.itemLeandingIcon, this.onTapItem, this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: GestureDetector(
        onTap: onTapItem,
        child: Container(
          height: 120.0,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(itemLeandingIcon,color: Colors.black54,),
                backgroundColor: Colors.white54,
              ),
              title: Text(itemName,style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                color: Colors.black

              ),),
              subtitle: Text(itemDetail,style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          )
        ),
      ),
    );
  }
}



