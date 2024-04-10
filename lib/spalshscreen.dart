import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}
  TextEditingController txtname = TextEditingController();
  TextEditingController txtgrid = TextEditingController();
  TextEditingController txtstandard = TextEditingController();
class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
         title: Center(
           child: Text('Add Data Screen',style: TextStyle(color: Colors.white,fontSize: 30),),
         ),
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // CircleAvatar(radius: 100),
            // Text('Student_image',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: TextField(
                controller: txtname,
                decoration: InputDecoration(
                hintText: 'student_name',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: TextField(
                controller: txtgrid,
                decoration: InputDecoration(
                  hintText: 'student_grid',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: TextField(
                controller: txtstandard,
                decoration: InputDecoration(
                  hintText: 'student_standard',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),),
            ),SizedBox(height: 80),
            InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/datapage');
            },
              child: Container(height: 50,width: 160,
               child: Center(
                 child: Text('Submit Data',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                 ),
               ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.black),
              ),
            )
          ]
        ),
      ),
    );
  }
}

// Map map = {
//   'img': 'xyz',
// };
//
// xyzList.add(map);
//
// xyzList[index]['img'] = 'newXyz';
//
// xyz.removeAt(index);

bool tap = true;