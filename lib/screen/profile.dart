import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_bus_tracking/screen/login.dart';
import 'package:school_bus_tracking/screen/menu/add.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text("ข้อมูลส้วนตัว"),
        backgroundColor: Color.fromARGB(223, 147, 115, 50),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: null,
          )
        ],
      )),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 80, 0, 00),
          width: 150,
          height: 180,
          child: const DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/logo_app.png"),
            )),
            // child: Text('ssss'),
          ),
        ),
        // Container(
        // child:
        ListTile(
          leading: Icon(Icons.home),
          // trailing: IconButton(
          //   onPressed: () {},
          // icon: const Icon(Icons.keyboard_arrow_down_sharp),
          // ),
          title: const Text('หน้าแรก'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => profilepage()));
          },
        ),

        Column(children: <Widget>[
          ExpansionTile(
            leading: Icon(Icons.add_to_photos),
            title: Text('เพิ่มผู้ใช้'),
            subtitle: Text(''),
            children: <Widget>[
              ListTile(
                title: Text('คุณครู'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const pageadd()));
                },
              ),
              ListTile(
                title: Text("คนขับ"),
                onTap: () {},
              ),
              ListTile(
                title: Text("ผู้ปกครอง"),
                onTap: () {},
              )
            ],
          ),
        ]),
        // ),
        // Container(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       // Icon(
        //       //   Icons.add,
        //       // ),
        //       DropdownButton(
        //           value: dropdownvalue,
        //           icon: const Icon(Icons.keyboard_arrow_down),
        //           items: items.map((String items) {
        //             return DropdownMenuItem(
        //               value: items,
        //               child: Text(items),
        //             );
        //           }).toList(),
        //           onChanged: (String? newValue) {
        //             setState(() {
        //               dropdownvalue = newValue!;
        //             });
        //           })
        //     ],
        //   ),
        // ),

        ListTile(
          leading: Icon(Icons.playlist_add_outlined),
          title: const Text('เพิ่มข้อมูลนักเรียน'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: Icon(Icons.car_crash),
          title: const Text('ตวรจสอบทะเบียนรถ'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.gps_fixed),
          title: const Text('ตำแหน่งรถ'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.edit),
          title: const Text('แจ้งเตอน'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.output_rounded),
          title: const Text('ออกจากระบบ'),
          onTap: () {},
        ),

        // Column(children: <Widget>[
        //   ExpansionTile(
        //     leading: Icon(Icons.gps_fixed),
        //     title: Text('เพิ่มผู้ใช้'),
        //     subtitle: Text(''),
        //     children: <Widget>[
        //       ListTile(
        //         title: Text('คุณครู'),
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => const pageadd()));
        //         },
        //       ),
        //       ListTile(
        //         title: Text("คนขับ"),
        //         onTap: () {},
        //       )
        //     ],
        //   ),
        // ]),
      ])),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(100, 50, 100, 0),
          child: Column(
            children: [
              SizedBox(
                width: 180,
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/profile.jpg"),
                ),
              ),
              Text(
                "ชื่อ___ นามสกุล____",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text("เวลาขึ้นรถ "),
              Text("เวลาลงรถ"),
            ],
          ),
        ),
      ),
    );
  }
}
