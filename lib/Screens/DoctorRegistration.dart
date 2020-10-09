import 'package:doctor/CustomWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Constant.dart';

class DoctorRegistration extends StatefulWidget {
  @override
  _DoctorRegistrationState createState() => _DoctorRegistrationState();
}

class _DoctorRegistrationState extends State<DoctorRegistration> {


  int step = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,

          backgroundColor: Colors.white,
          title: Text("Doctor Registration",style: Theme.of(context).textTheme.headline6.copyWith(color: Theme.of(context).primaryColor),),
          bottom: PreferredSize(
            child: ListTile(
              title: Container(
                height: 3,
                color: Theme.of(context).primaryColor,
              ),
              leading: buildSingleStep("1", step==0),
              trailing: buildSingleStep("2", step==1),
            ),
            preferredSize: Size.fromHeight(80),
          ),
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
      ),
    );
  }

  buildSingleStep(String text,bool selected)
  {
    return Container(
      padding: EdgeInsets.all(14),
      child: Text(text),
      decoration: BoxDecoration(
          color: selected?Theme.of(context).primaryColor:Colors.white,
          border: Border.all(color: Theme.of(context).primaryColor,width: 2),
          shape: BoxShape.circle
      ),
    );
  }
}
