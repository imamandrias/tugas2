import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HalamanLogin(),
    );
  }
}

class HalamanLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahkan Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Masukan Username", icon: Icon(Icons.account_circle)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Masukan Password", icon: Icon(Icons.lock)),
              ),
              RaisedButton(
                child: Text("Login"),
                color: Colors.lightBlue,
                onPressed: (){},
              ),
              FlatButton(
                  child: Text(
                    'Belum terdaftar? Daftar sekarang',
                    style: TextStyle(color: Colors.black54),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HalamanRegister()))
                    ;}
                //onPressed: (){Navigator.of(context).pushNamed(HalamanRegister.tag);},
              )
            ],
          ),
        ),
      ),
    );
  }
}


class HalamanRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahkan Register Terlebih Dahulu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Masukan Username", icon: Icon(Icons.account_circle)),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Masukan Email", icon: Icon(Icons.email)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Masukan Password", icon: Icon(Icons.lock)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Masukan Password Kembali", icon: Icon(Icons.lock)),
              ),
              RaisedButton(
                child: Text("Register"),
                color: Colors.lightBlue,
                onPressed: (){},
              ),
              FlatButton(
                  child: Text(
                    'Sudah daftar? Login',
                    style: TextStyle(color: Colors.black54),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HalamanLogin()))
                    ;}
                //onPressed: (){Navigator.of(context).pushNamed(HalamanRegister.tag);},
              )
            ],
          ),
        ),
      ),
    );
  }
}

