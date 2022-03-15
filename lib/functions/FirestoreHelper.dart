

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreHelper {
  //Attributs
  final auth = FirebaseAuth.instance;
  final fire_user = FirebaseFirestore.instance.collection("Utilisateurs");



  //Constructeur



  //méthode

//Pour l'inscription
Incription(String mail,String password,String nom, String prenom){
  auth.createUserWithEmailAndPassword(email: mail, password: password);

}



//Pour la connexion

Connexion(){

}





}