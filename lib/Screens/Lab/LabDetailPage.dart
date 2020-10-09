import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor/CustomWidgets.dart';

class LabDetailPage extends StatefulWidget {
  @override
  _LabDetailPageState createState() => _LabDetailPageState();
}

class _LabDetailPageState extends State<LabDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lab Info'),),
      body: ListView(
        children: [
          Container(
            height: 120,
            margin: EdgeInsets.all(8),
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: 100,
                    child: Icon(CupertinoIcons.profile_circled,size: 90,),
                  ),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Dr Rahul Sain'),
                      Text('At Aims Hospital Dehli'),
                    ],
                  ))
                ],
              ),
            ),
          ),

          buildHeadingTile('Address', '564589 Jaipur',trailing: FlatButton(onPressed: (){}, child: Text('Get Direction'))),

          Card(
            child: Container(
              margin: EdgeInsets.all(8),
              height: 140,
              child: Center(child: Text("map displayed here")),
            ),
          ),

          buildHeadingTile('Facilities', 'Parking\n E Reports Available',trailing: SizedBox()),

          SizedBox(height: 40,),
          CustomWidgets.CustomButtonColored(text: "Select Test",onpressed: (){})
        ],
      ),
    );
  }

  Widget buildHeadingTile(title,description,{trailing})
  {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(title,style: TextStyle(color: Colors.red),),
        subtitle: Text(description),
        trailing: trailing,
      ),
    );
  }
}
