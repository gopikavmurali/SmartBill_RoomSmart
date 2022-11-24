import 'package:flutter/material.dart';

import 'constants.dart';


Widget ContainerButton(
    {required int height,
      required int width,
      required BoxDecoration decoration,
    }) {
  return Container(
    height: 45,
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      // color: Colors.black54
      color: const  Color(0xFFFDDA0D),
    ),
    child: Center(child: Text("Save",style: buttonTextStyleblack(),)),
  );
}


Widget buildTextfield (String hint,TextEditingController controller)
{
  return  SizedBox(
    height: 40,
    //width: MediaQuery.of(context).size.width,
    child: Center(
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.black87,
        autocorrect: true,
        controller: controller,
        decoration:  InputDecoration(
          hintText: hint,
          contentPadding: const  EdgeInsets.fromLTRB(10, 0, 0, 0),
          hintStyle: labelStyle(),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          enabledBorder:const  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Colors.black26,
               // color: Color(0xFFe0f4f5),
                width: 2),),
          focusedBorder:const  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.all(Radius.circular(10.0,),),
          ),
        ),),
    ),
  );
}


Widget buildAddressfield (String hint,TextEditingController controller)
{
  return  SizedBox(
    height: 100,
    //width: MediaQuery.of(context).size.width,
    child: Center(
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: 7,
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.black87,
        autocorrect: true,
        controller: controller,
        decoration:  InputDecoration(
          hintText: hint,
          contentPadding: const  EdgeInsets.fromLTRB(10, 0, 0, 0),
          hintStyle: labelStyle(),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          enabledBorder:const  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color(0xFFe0f4f5), width: 2),),
          focusedBorder:const  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.all(Radius.circular(10.0,),),
          ),
        ),),
    ),
  );
}

Widget buildSalaryfield (String hint,TextEditingController controller)
{
  return SizedBox(
    height: 40,
    width: 200,
    child: Center(
      child: TextFormField(
        style:const  TextStyle(color: Colors.black),
        cursorColor: Colors.black87,
        autocorrect: true,
        controller: controller,
        decoration:  InputDecoration(
          hintText: hint,
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          hintStyle: labelStyle(),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color(0xFFe0f4f5), width: 2),),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.all(Radius.circular(10.0,),),
          ),
        ),),
    ),
  );
}

Widget buildreportButton (String label)
{
  return Container(
    height: 45,
    width: 250,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow),

        borderRadius: const BorderRadius.all(Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          )
        ]
    ),
    child: Center(
      child:Text(label,style: shortheadstyle()),

    ),
  );
}
