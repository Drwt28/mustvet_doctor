import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor/CustomWidgets.dart';

import '../Constant.dart';

class AppointmentFormScreen extends StatefulWidget {
  @override
  _AppointmentFormScreenState createState() => _AppointmentFormScreenState();
}

class _AppointmentFormScreenState extends State<AppointmentFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Appointment'),
        ),

        body: ListView(
            children: [
            CustomWidgets.CustomTextFieldValidated('Pet Owner Name', context,
            isValidated: true, onChanged: (val) {

        }),
        CustomWidgets.CustomTextFieldValidated(
            'Pet Name', context, isValidated: true, onChanged: (val) {

        }),
        CustomWidgets.CustomTextFieldValidated(
            'Pet Name', context, isValidated: true, onChanged: (val) {

        }),
        Container(
            height: 60,
            child: CustomWidgets.CustomDropDown(list: [
              'breed 1',
              'breed 2',
            ], onChanged: (val) {}, title: 'Pet Breed', val: 'breed 1')),
        Container(
        height: 60,
        child: CustomWidgets.CustomDropDown(list: [
    'Male',
    'Female',
        ], onChanged: (val)
    {}, title: 'Gender', val: 'Male'))
    ,Container(
    height: 60,
    child: CustomWidgets.CustomDropDown(list: [
    'species 1',
    'species 2',
    ], onChanged: (val) {}, title: 'Species', val: 'species 1'))

    ,Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('Age',style: Theme.of(context).textTheme.headline6.copyWith(color: primary),),
    )

    ,Container(
    height: 60,
    child: CustomWidgets.CustomDropDown(list: [
    '2020',
    '2021',
    ], onChanged: (val) {}, title: 'Year', val: '2020'))
    ,Container(
    height: 60,
    child: CustomWidgets.CustomDropDown(list: [
    'january',
    'february',
    ], onChanged: (val) {}, title: 'Month', val: 'january')),

    CustomWidgets.CustomTextFieldValidated('Type of problem', context,isValidated: true,onChanged: (val){

    }),

    CustomWidgets.CustomButtonIcon(onpressed: (){},text: 'Upload Picture',icon: CupertinoIcons.photo_camera_solid,color: primary)
,    CustomWidgets.CustomButtonIcon(onpressed: (){},text: 'Upload old Prescription if Any',icon: CupertinoIcons.photo_camera_solid,color: primary)

    ,CustomWidgets.CustomButtonColored(text: 'Make an Appointment',onpressed: (){},)
    ]
    ,
    )
    ,
    );
  }
}
