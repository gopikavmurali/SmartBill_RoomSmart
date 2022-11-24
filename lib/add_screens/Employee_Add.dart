import 'package:flutter/material.dart';
import '../components.dart';
import '../constants.dart';

class EmployeeAddScreen extends StatefulWidget {
  const EmployeeAddScreen({Key? key}) : super(key: key);

  @override
  _EmployeeAddScreenState createState() => _EmployeeAddScreenState();
}

class _EmployeeAddScreenState extends State<EmployeeAddScreen> {

   TextEditingController namecontroller = TextEditingController();
   TextEditingController codecontroller = TextEditingController();
   TextEditingController designationcontroller = TextEditingController();
   TextEditingController mobilecontroller = TextEditingController();
   TextEditingController gendercontroller = TextEditingController();


   final List<String> designation=
   [
     "Designation",
     "Accountant",
     "Sales Executive",
     "Cashier"
   ];


   String designationname = "Designation";
   String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const  Color(0xff313131),
        elevation: 01,
        backgroundColor:const  Color(0xff363636),
        title: Text("Add Employee",style:MainHeadingStyle()),
      ),
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Employee Name",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: buildTextfield("employee name",
                  namecontroller)
            ),
            Row(
              children: [
                Padding(
                  padding: const   EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Employee Code",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
                padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
                child: buildTextfield("employee code",
                    codecontroller)
            ),
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Designation",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color:const  Color(0xFFFAFAFA),
                ),
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton<String>(
                      // isDense: true,
                      // isExpanded: false,
                      //backgroundColor: Color(0xff2d2d2d),
                      dropdownColor: Colors.white,
                      style: const  TextStyle(
                        color: Colors.white, //<-- SEE HERE
                        fontSize: 15,
                        //fontWeight: FontWeight.bold
                      ),
                      elevation: 10,
                      iconEnabledColor:  const Color(0xff2d2d2d),
                      value: designationname,
                      onChanged: (value) {
                        setState(()
                        {
                          designationname= value!;

                        }
                        );
                      },

                      items: designation.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 10.0),
                            child: Text(
                              value,
                              style: const  TextStyle(
                                  color: Colors.black, //<-- SEE HERE
                                  fontSize: 13),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),

            ),
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Mobile",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
                padding:const   EdgeInsets.only(left: 30.0,right: 30,top: 8),
                child: buildTextfield("Mobile",
                    mobilecontroller)
            ),
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Gender",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Theme(
              data:  ThemeData(
                unselectedWidgetColor: Colors.white70,
              ),
                child: RadioListTile(
                  activeColor: Colors.yellow,
                  title: Text("Female",style: shortheadstyle(),),
                  value: "female",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                )),
            ),
            Padding(
          padding: const EdgeInsets.all(8.0),
          child: Theme(
            data:  ThemeData(
              unselectedWidgetColor: Colors.white70,
            ),
            child: RadioListTile(
              activeColor: Colors.yellow,
              title: Text("Male",style: shortheadstyle(),),
              value: "male",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ),
        ),
            Padding(
          padding: const EdgeInsets.all(8.0),
          child: Theme(
            data:  ThemeData(
              unselectedWidgetColor: Colors.white70,
            ),
            child: RadioListTile(
              activeColor: Colors.yellow,
              title: Text("Other",style: shortheadstyle()),
              value: "other",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ),
        ),

        Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Company Name",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
                padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
                child: buildTextfield("Company name",
                    gendercontroller)
            ),
            Row(
              children: [
                Padding(
                  padding:const   EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Address",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
                padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
                child: buildAddressfield("Address",
                    gendercontroller)
            ),

            Padding(
              padding: const EdgeInsets.only(top: 28.0,bottom: 30),
              child: GestureDetector(
                onTap: (){},
                child: ContainerButton(
                  height: 30,
                  width: 150,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
