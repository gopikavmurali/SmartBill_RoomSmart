import 'package:flutter/material.dart';
import 'package:smart_bill/components.dart';
import 'package:smart_bill/constants.dart';
import 'package:smart_bill/models/designation%20model.dart';



class DesignationAddScreen extends StatefulWidget {
  const DesignationAddScreen({Key? key}) : super(key: key);

  @override
  _DesignationAddScreenState createState() => _DesignationAddScreenState();
}

class _DesignationAddScreenState extends State<DesignationAddScreen> {


  List<Designation> designationList =[];
  void addUserData(Designation designation){
    setState(() {
      designationList.add(designation);
    });
  }

  void showuserdialog(){
    showDialog(
        context: context,
        builder: (_){
          return AlertDialog(
            backgroundColor: const Color(0xff2d2d2d),
            content: AddUserdialog(addUserData),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const  Color(0xff313131),
        elevation: 01,
        backgroundColor:const  Color(0xff363636),
        title: Text("List of Designations",style:MainHeadingStyle()),

      ),
      body:  ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(

            key: UniqueKey(),

            child: Card(
              color: Colors.white10,
              child: ListTile(
                leading: const Icon(Icons.arrow_right,color: Colors.white,),
                title: Text(designationList[index].designation,style: shortheadstyle(),),

              ),

            ),
          );
        },
        itemCount: designationList.length,

      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.yellow,
        icon: const Icon(Icons.add,color: Colors.black,),
        onPressed: (){
          showuserdialog();

        }, label: Text("Add New Designation",style: buttonTextStyleblack()),
      ),
    );
  }
}


class AddUserdialog extends StatefulWidget {
  final Function (Designation) adddesignation;
  const AddUserdialog(this.adddesignation, {super.key});

  @override
  _AddUserdialogState createState() => _AddUserdialogState();
}

class _AddUserdialogState extends State<AddUserdialog> {
   TextEditingController designationcontroller = TextEditingController();
 // TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 500,
      color:  const Color(0xff2d2d2d),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Add Designation",style: alertheadingstyle(),),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Designation Name",style: shortheadstyle(),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildTextfield("Designation",designationcontroller ),
          ),


          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const   Color(0xFFFDDA0D),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              onPressed: (){
                final designation = Designation(designation: designationcontroller.text);
                widget.adddesignation(designation);
                Navigator.of(context).pop();
              },
              child: Text("Add Designation",style: buttonTextStyleblack(),))

        ],
      ),
    );

  }
}






