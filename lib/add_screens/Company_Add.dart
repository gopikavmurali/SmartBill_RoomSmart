import 'package:flutter/material.dart';
import 'package:smart_bill/components.dart';
import 'package:smart_bill/constants.dart';
import 'package:smart_bill/models/company_model.dart';


class CompanyAddScreen extends StatefulWidget {
  const CompanyAddScreen({Key? key}) : super(key: key);

  @override
  _CompanyAddScreenState createState() => _CompanyAddScreenState();
}

class _CompanyAddScreenState extends State<CompanyAddScreen> {


  List<Company> companyList =[];
  void addUserData(Company user){
    setState(() {
      companyList.add(user);
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
        title: Text("List of Companies",style:MainHeadingStyle()),

      ),
      body:  ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(

            key: UniqueKey(),

            child: Card(
              color: Colors.white10,
              child: ListTile(
                leading: Text(companyList[index].prefix,style: shortheadstyle(),),
                title: Text(companyList[index].organization,style: shortheadstyle(),),
                trailing: Text(companyList[index].mobile,style: shortheadstyle(),),
                subtitle: Text(companyList[index].address,style: shortheadstyle(),),
              ),

            ),
          );
        },
        itemCount: companyList.length,

      ),
      floatingActionButton: FloatingActionButton.extended(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.yellow,
        icon: const Icon(Icons.add,color: Colors.black,),
        onPressed: (){
          showuserdialog();

        }, label: Text("Add New Company",style: buttonTextStyleblack()),
      ),
    );
  }
}


class AddUserdialog extends StatefulWidget {
  final Function (Company) addUser;
  const AddUserdialog(this.addUser, {super.key});

  @override
  _AddUserdialogState createState() => _AddUserdialogState();
}

class _AddUserdialogState extends State<AddUserdialog> {

  TextEditingController orgnamecontroller = TextEditingController();
  TextEditingController prefixnamecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
 // TextEditingController mobilecontroller = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 500,
      color:  const Color(0xff2d2d2d),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Add Company",style: alertheadingstyle(),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Organization Name",style: shortheadstyle(),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildTextfield("organization",orgnamecontroller ),
          ),
          Row(
            children: [
              Text("Organization Prefix",style: shortheadstyle(),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildTextfield("prefix", prefixnamecontroller),
          ),
          Row(
            children: [
              Text("Address",style: shortheadstyle(),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildTextfield("address", addresscontroller),
          ),
          Row(
            children: [
              Text("Mobile Number",style: shortheadstyle(),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildTextfield("phone", phoneController),
          ),

          ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: const   Color(0xFFFDDA0D),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
             ),
              onPressed: (){
                final user = Company(
                    organization: orgnamecontroller.text,
                    prefix: prefixnamecontroller.text,
                    address: addresscontroller.text,
                    mobile: phoneController.text);
                widget.addUser(user);
                Navigator.of(context).pop();
              },
              child: Text("Add Company",style: buttonTextStyleblack(),))

        ],
      ),
    );

  }
}






