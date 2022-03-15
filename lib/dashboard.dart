
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projetclassb2b/Model/Utilisateur.dart';
import 'package:projetclassb2b/functions/FirestoreHelper.dart';

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
    return StreamBuilder<QuerySnapshot>(
      stream: FirestoreHelper().fire_user.snapshots(),
        builder: (context,snapshot){
        if(!snapshot.hasData){
          return CircularProgressIndicator();
        }
        else
          {
            List documents = snapshot.data!.docs;
            return ListView.builder(
              itemCount: documents.length,
                itemBuilder: (context,index){
                Utilisateur user = Utilisateur(documents[index]);
                return ListTile(
                  leading: (user.avatar==null)?Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://voitures.com/wp-content/uploads/2017/06/Kodiaq_079.jpg.jpg"),
                        fit: BoxFit.fill
                      )
                    ),
                  ):Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(user.avatar!),
                            fit: BoxFit.fill
                        )
                    ),
                  ),

                  title: Text("${user.prenom} ${user.nom}"),
                  trailing: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: (){
                      print("modification");
                    },
                  ),
                );
                }
            );
          }
        }
    );
  }

}