// import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:school_bus_tracking/screen/profile.dart';

// import 'package:flutter/src/widgets/container.dart';

// import 'package:flutter/src/widgets/framework.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("ssss")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/logo_app.png"),
              Text(
                "ระบบติดตามการโดยสารรถโรงเรียน",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              buildTextEmail(),
              buildTextPassword(),
              buildTextSingin(),
              buildTexregister()
            ],
          ),
        ),
      ),
    );
  }

  buildTextEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
            color: Colors.yellow[100], borderRadius: BorderRadius.circular(5)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "Email"),
            style: TextStyle(fontSize: 18)));
  }

  buildTextPassword() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.yellow[100], borderRadius: BorderRadius.circular(5)),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration.collapsed(hintText: "Password"),
          style: TextStyle(fontSize: 18),
        ));
  }

  buildTextSingin() {
    return Container(
        margin: EdgeInsets.only(top: 15),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => profilepage()));
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              primary: Color.fromARGB(223, 147, 115, 50)),
          child: Text(
            "Sigin",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ));

    //  Container(
    //     constraints: BoxConstraints.expand(height: 50),
    //     child: TextField(
    //         obscureText: true,
    //         decoration: InputDecoration.collapsed(hintText: "Sinin"),
    //         style: TextStyle(fontSize: 18)),
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         color: Color.fromARGB(223, 147, 115, 50)),
    //     margin: EdgeInsets.only(top: 16),
    //     padding: EdgeInsets.all(12),
    //   );
    // }
  }

  buildTexregister() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text(
          "Register",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(223, 147, 115, 50)),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }
}
