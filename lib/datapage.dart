import 'package:final_exam/list.dart';
import 'package:flutter/material.dart';

class datapage extends StatefulWidget {
  const datapage({super.key});

  @override
  State<datapage> createState() => _datapageState();
}

class _datapageState extends State<datapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('App Bar',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10),
           ...List.generate(student.length, (index) => buildPadding(student.length[index]['img'],student.length[index]['name'],student.length[index]['Grid'],student.length[index]['Std']))
          ],
        ),
      ),
    );
  }

  Widget buildPadding(String img,String name,int Grid,int Std) {
    return Card(
      child: Container(height: 100,width: 360,
       child: Row(
         children: [
           SizedBox(width: 10),
           CircleAvatar(radius: 40,backgroundImage: AssetImage('img'),),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('  name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
               Text('  Grid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
               Text('  Std',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
             ],
           ),
           Row(
             children: [
               Row(
                 children: [
                   SizedBox(width: 50),
                   Icon(Icons.edit,size: 40,color: Colors.white,),
                   SizedBox(width: 10),
                   Icon(Icons.delete,size: 40,color: Colors.white,)
                 ],
               )
             ],
           )
         ],
       ),
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.black),
      ),
    );
  }
}
