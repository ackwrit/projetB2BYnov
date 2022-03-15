
import 'package:flutter/material.dart';

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return dashboardState();
  }

}

class dashboardState extends State<dashboard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon application"),
      ),
      body: bodyPage(),
    );
  }


  Widget bodyPage(){
    return Text("coucou");
  }

}