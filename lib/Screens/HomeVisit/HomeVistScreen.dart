import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doctor/Screens/Constant.dart';

class HomeVisiScreen extends StatefulWidget {
  @override
  _HomeVisiScreenState createState() => _HomeVisiScreenState();
}

class _HomeVisiScreenState extends State<HomeVisiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Visit'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(59),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tell us the issue for the visit',style: Theme.of(context).textTheme.headline6.copyWith(color: primary),),
          ),
        ),
      ),

      body: GridView.count(crossAxisCount: 2
      ,childAspectRatio:1,

        children: [

          SingleTile(Icon(FontAwesomeIcons.nutritionix,size: 60,color: Colors.green,), 'Nutrition Counselling', 'Rs 199',onPressed: (){}),
          SingleTile(Icon(FontAwesomeIcons.hospitalSymbol,size: 60,color: Colors.red,), 'General Check', 'Rs 199',onPressed: (){}),
          SingleTile(Icon(FontAwesomeIcons.hospitalAlt,size: 60,color: Colors.blue,), 'Vaccination', 'Rs 199',onPressed: (){}),
          SingleTile(Icon(FontAwesomeIcons.hospital,size: 60,color: Colors.red,), 'Medical Treatment', 'Rs 199',onPressed: (){}),
        ],
      ),
    );
  }

  Widget SingleTile(icon,title,price,{onPressed})
  {
    return GridTile(
        child: Card(
          margin: EdgeInsets.all(10),
          child: InkWell(
            onTap: onPressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                icon, Text(title),
                Text(price,style: Theme.of(context).textTheme.headline6.copyWith(color: primary,fontSize: 16),)
              ],
            ),
          ),
        ));

  }
}
