import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor/Screens/Constant.dart';
import 'package:doctor/Screens/Lab/LabDetailPage.dart';
import 'package:doctor/Screens/Medical/ShopDetailPage.dart';

class MedicalListPage extends StatefulWidget {
  @override
  _MedicalListPageState createState() => _MedicalListPageState();
}

class _MedicalListPageState extends State<MedicalListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Shops"),

      ),

      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index)=>singleOptionListTile('C.P Medical Store', CupertinoIcons.lab_flask_solid, 'description')),
    );
  }


  Widget singleOptionListTile(title,image,description,{onPressed})
  {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: InkWell(
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopDetailPage()));
        },
        child: ListTile(

          title: Text(title,style: Theme.of(context).textTheme.headline6.copyWith(color: primary,fontSize: 16),),

          subtitle: Text('Open Now',style: Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.black54),),

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
