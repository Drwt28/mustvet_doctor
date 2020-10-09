import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor/CustomWidgets.dart';

class ShopDetailPage extends StatefulWidget {
  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop Details'),),
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
                      Text('CP Medical Store'),
                      Text('Opens Now'),
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

          buildHeadingTile('Facilities', 'Parking\n Card Accepted',trailing: SizedBox()),

          SizedBox(height: 40,),
          Container(
            height: 90,
            child: Row(
              children: [
                CustomWidgets.CustomButtonWhite(text: "Order now",onpressed: (){}),
                CustomWidgets.CustomButtonColored(text: "Check Quotation",onpressed: (){})
              ],
            ),
          )
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
