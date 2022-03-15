import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projetclassb2b/Model/Utilisateur.dart';
import 'package:projetclassb2b/register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double slider = 5.5;
  Utilisateur user = Utilisateur.vide();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          padding: EdgeInsets.all(20),
          child: bodyPage(),
        ),
        
      ),

    );
  }
  Widget bodyPage(){
    return Column(
      children: [
        //Afficher mon logo
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage("https://voitures.com/wp-content/uploads/2017/06/gt2017-1024x600.jpg"),
              fit: BoxFit.fill
            )
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //Entrer une adresse mail
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Entrer votre mail",

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //Entrer un mot de passe
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
        SizedBox(
          height: 10,
        ),
        
        // Cliquer sur le bouton connexion
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
            onPressed: (){
              print("Je em suis connecté");
            },
            child: Text("Connexion")
        ),
        SizedBox(
          height: 10,
        ),
        
        
        //Cliquer sur un lien qui envoie sur l'inscription
        InkWell(
          child: Text("Inscription",style: TextStyle(color: Colors.blue),),
          onTap: (){
            print("J'ai tappé une fois");
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context){
                  return register();
                }
            ));
          },

        ),

      ],
    );


  }
}



