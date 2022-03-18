import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:projetclassb2b/Model/Utilisateur.dart';
import 'package:projetclassb2b/functions/FirestoreHelper.dart';

class myDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myDrawerState();
  }
  
}

class myDrawerState extends State<myDrawer>{
  //Varibale
  late Utilisateur myProfil;

  //Méthode


  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    //Construire mon Utilsateur
    FirestoreHelper().getIdentifiant().then((String monId){
      FirestoreHelper().getUtilisateur(monId).then((Utilisateur monUser){
        setState(() {
          myProfil = monUser;
        });

      });
    });


    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width/2,
      height:MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(height: 100,),
          InkWell(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: (myProfil.avatar == null)?NetworkImage("https://voitures.com/wp-content/uploads/2017/06/Kodiaq_079.jpg.jpg"):NetworkImage(myProfil.avatar!)
                  )
              ),
            ),
            onTap: (){
              print("j'ai l'image cliquable");
              FilePicker.platform.pickFiles(
                withData: true,
                type: FileType.image,
              );
            },
          ),

          SizedBox(height: 20,),
          Text("${myProfil.prenom} ${myProfil.nom}")
        ],
      ),
    );
  }
  
}