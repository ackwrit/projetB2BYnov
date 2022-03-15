import 'package:flutter/material.dart';
import 'package:projetclassb2b/Model/Utilisateur.dart';

class detail extends StatefulWidget{
  Utilisateur user;
  detail({required Utilisateur this.user});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return detailState();
  }

}

class detailState extends State<detail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("${widget.user.prenom} ${widget.user.nom}"),
      ),
      body: Center(
        child: bodyPage(),
      )

    );
  }

  Widget bodyPage(){
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: (widget.user.avatar==null)?NetworkImage("https://voitures.com/wp-content/uploads/2017/06/Kodiaq_079.jpg.jpg"):NetworkImage(widget.user.avatar!),
              fit: BoxFit.fill,
            )
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_android),
            //Text(widget.user.telephone)
          ],
        ),

        Text("${widget.user.prenom} ${widget.user.nom}")
      ],
    );
  }

}