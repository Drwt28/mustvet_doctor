
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor/Screens/Constant.dart';

class CustomWidgets{


  static Widget CustomButtonColored({onpressed,color,text,textColor})
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: CupertinoButton(
        child: Text(text),
        onPressed: onpressed,
        color: primary,
      ),
    );
  }
  static Widget CustomButtonIcon({onpressed,text,icon,color})
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: CupertinoButton(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: TextStyle(color: primary),),
            Icon(icon,color: color,),

          ],
        ),
        onPressed: onpressed,
        color: Colors.white,
      ),
    );
  }
  static Widget CustomButtonWhite({onpressed,text})
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: CupertinoButton(
        child: Text(text,style: TextStyle(color: primary),),
        onPressed: onpressed,
        color: Colors.white,
      ),
    );
  }


  static Widget CustomTextField(controller,hint,context,{onChanged,isValidated})
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: Card(

        child: Center(
          child: TextFormField(
            onChanged: onChanged,
            validator: (val)=>(isValidated)?val.isEmpty?'enter $hint':null:null,
            showCursor: true,
            cursorWidth: 0,
            smartDashesType: SmartDashesType.disabled,
            controller: controller,
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
              ),
              filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)

              ),
            isDense: true,
              hintText: hint
            ),
          ),
        ),
      ),
    );
  }
  static Widget CustomTextFieldValidated(hint,context,{onChanged,isValidated})
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: Card(

        child: Center(
          child: TextFormField(
            onChanged: onChanged,
            validator: (val)=>(isValidated)?val.isEmpty?'enter $hint':null:null,
            showCursor: true,
            cursorWidth: 0,
            smartDashesType: SmartDashesType.disabled,
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
              ),
              filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)

              ),
            isDense: true,
              hintText: hint
            ),
          ),
        ),
      ),
    );
  }

  static Widget CustomDropDown({title,list,onChanged, val})
  {

    List<DropdownMenuItem> items = List.generate(list.length, (index) => DropdownMenuItem(
      child: Text(list[index]),
      value: list[index],
    ));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),

      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            items: items,
            onChanged: onChanged,
            itemHeight: 60,
            value: val,
            hint: Text(title),

          ),
        ),
      ),
    );
  }
}
