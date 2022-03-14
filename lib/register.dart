import 'package:flutter/material.dart';

class register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return registerState();
  }
  
}

class registerState extends State<register>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
        centerTitle: true,
      ),
      body: Container(
        child: bodyPage(),
        padding: EdgeInsets.all(20),
      )
      
    );
  }



  Widget bodyPage(){
    return Column(
      children: [
        TextField(

          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Entrer votre adresse mail",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Entrer votre mot de passe",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
        ),
        SizedBox(height: 10,),
        TextField(

          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Entrer votre prénom",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Entrer votre nom",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
            onPressed: (){
              print("Je me suis inscris");
            },
            child: Text("Inscription")
        ),
        
      ],
    );
  }
  
}