import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor/Screens/Constant.dart';
import 'package:doctor/Screens/Lab/LabDetailPage.dart';

class LabListPage extends StatefulWidget {
  @override
  _LabListPageState createState() => _LabListPageState();
}

class _LabListPageState extends State<LabListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab & Test"),

      ),

      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index)=>singleOptionListTile('Dr Rahul Sain,DKD', CupertinoIcons.lab_flask_solid, 'description')),
    );
  }


  Widget singleOptionListTile(title,image,description,{onPressed})
  {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: InkWell(
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>LabDetailPage()));
        },
        child: ListTile(

          title: Text(title,style: Theme.of(context).textTheme.headline6.copyWith(color: primary,fontSize: 16),),

          subtitle: Text('250 + test available',style: Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.black54),),

          trailing: IconButton(
            icon: Icon(CupertinoIcons.play_arrow,color: primary,),
          ),

          leading: Container(
            child: Icon(image,size: 34,),
            decoration: BoxDecoration(
            ),
          ),
        ),
      ),
    );
  }
}
