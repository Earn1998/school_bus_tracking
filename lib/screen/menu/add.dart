import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pageadd extends StatefulWidget {
  const pageadd({super.key});

  @override
  State<pageadd> createState() => _pageaddState();
}

class _pageaddState extends State<pageadd> {
  TextEditingController nameController = TextEditingController();
  TextEditingController telController = TextEditingController();
  String? typeuser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เพิ่มผู้ใช้"),
        backgroundColor: Color.fromARGB(223, 147, 115, 50),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(
                10,
                100,
                10,
                10,
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("ชื่อ - นามสกุล"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                10,
                10,
                10,
                10,
              ),
              child: TextField(
                controller: telController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("เบอร์โทรศัพท์"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                10,
                10,
                10,
                10,
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("E-mail"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                10,
                10,
                10,
                10,
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                ),
              ),
            ),
            Container(
                child: Text(
              "เลือกผู้ใช้งาน",
              style: TextStyle(fontSize: 18),
            )),
            RadioListTile(
              value: "คุณครู",
              groupValue: typeuser,
              onChanged: (value) {},
              title: Text("คุณครู"),
            ),
            Container(
              child: RadioListTile(
                value: "ผู้ปกครอง",
                groupValue: typeuser,
                onChanged: (value) {},
                title: Text("ผู้ปกครอง"),
              ),
            ),
            RadioListTile(
              value: "คนขับรถ",
              groupValue: typeuser,
              onChanged: (value) {},
              title: Text("คนขับรถ"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(223, 147, 115, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                label: Text("บันทึกข้อมูล"),
                icon: Icon(Icons.save),
              ),
            )
          ])),
    );
  }
}
