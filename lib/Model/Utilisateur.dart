
import 'package:cloud_firestore/cloud_firestore.dart';

class Utilisateur{
  //Attributs
  String id="";
  String? avatar;
  String nom="";
  String prenom="";
  String mail="";
  String? telephone;
  bool isConnected = false;
  DateTime birthDay = DateTime.now();



  //Contructeur
Utilisateur(DocumentSnapshot snapshot){
  id = snapshot.id;
  Map<String,dynamic> map = snapshot.data() as Map<String,dynamic>;
  nom = map["NOM"];
  prenom = map["PRENOM"];
  mail = map["MAIL"];
  telephone = map["TELEPHONE"];


}

Utilisateur.vide();






  //Méthodes

}