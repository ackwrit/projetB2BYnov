

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreHelper {
  //Attributs
  final auth = FirebaseAuth.instance;
  final fire_user = FirebaseFirestore.instance.collection("Utilisateurs");



  //Constructeur



  //méthode

//Pour l'inscription
Future Incription(String mail,String password,String nom, String prenom) async {
  UserCredential resultat = await auth.createUserWithEmailAndPassword(email: mail, password: password);
 User? user = resultat.user;
 String uid = user!.uid;
 Map<String,dynamic>map = {
   "NOM":nom,
   "PRENOM": prenom,
   "MAIL": mail
 };
 addUser(uid, map);

}



//Pour la connexion

Connexion(){

}


//Ajouter des utilisateurs
addUser(String uid,Map<String,dynamic>map){
  fire_user.doc(uid).set(map);

}


//Modifier les informations d'un utilisateur
  updatedUser(String uid,Map<String,dynamic>map){
    fire_user.doc(uid).update(map);

  }





}