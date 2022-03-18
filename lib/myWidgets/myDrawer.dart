import 'package:flutter/material.dart';

class myDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myDrawerState();
  }
  
}

class myDrawerState extends State<myDrawer>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width/2,
      height:MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(height: 100,),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://voitures.com/wp-content/uploads/2017/06/Kodiaq_079.jpg.jpg")
              )
            ),
          ),
          SizedBox(height: 20,),
          Text("Afficher mon prénom et mon nom")
        ],
      ),
    );
  }
  
}