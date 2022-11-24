import 'package:flutter/material.dart';
import 'package:smart_bill/add_screens/Company_Add.dart';
import 'package:smart_bill/add_screens/Designation_Add.dart';
import 'package:smart_bill/add_screens/Employee_Add.dart';
import '../components.dart';
import '../constants.dart';


class SalaryScreen extends StatefulWidget {
  const SalaryScreen({Key? key}) : super(key: key);

  @override
  _SalaryScreenState createState() => _SalaryScreenState();
}

class _SalaryScreenState extends State<SalaryScreen>{

   TextEditingController empnameController = TextEditingController();
   TextEditingController desigController = TextEditingController();
   TextEditingController attendanceController = TextEditingController();
   TextEditingController basicController = TextEditingController();
   TextEditingController daController = TextEditingController();
   TextEditingController allowanceController = TextEditingController();
   TextEditingController wpaController = TextEditingController();
   TextEditingController pfController = TextEditingController();
   TextEditingController esiController = TextEditingController();
   TextEditingController employeeController = TextEditingController();
   TextEditingController taxController = TextEditingController();
   TextEditingController itController = TextEditingController();
   TextEditingController netsalaryController = TextEditingController();


   late double salary =0;
   late double netsalary =0;
   late double salaryperday =0;
   String designation = "Designation";
   String organization ="Organization";
   String month = "January";

   final List<String> months =[
   "January","February","March","April","May","June","July","August","September","October","November","Deceber"];

   final List<String> desigName=
   [ "Designation",
     "Accountant",
     "Cashier",
     "Service Engineer",
     "Showroom Executive"
   ];

   final List<String> orgName=
   [ "Organization",
     "Room Smart",
     "Reliance",
     "Witco",
     "Peter England"
   ];


   void clearfields()
   {
     empnameController.clear();
     attendanceController.clear();
     basicController.clear();
     daController.clear();
     allowanceController.clear();
     wpaController.clear();
     pfController.clear();
     esiController.clear();
     allowanceController.clear();
     employeeController.clear();
     taxController.clear();
     salary= 0;
     netsalary =0;
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor:  const Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Salary",style:MainHeadingStyle()),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>const CompanyAddScreen()));

                    },
                    child: Container(
                      height: 70,
                      width: 110,
                      //color: Colors.transparent,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:  const Color(0xFF3b3b3b))
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset("images/building.png")),
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Add Company",style: shortheadstyle(),),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>const EmployeeAddScreen()));
                    },
                    child: Container(
                      height: 70,
                      width: 110,
                      //color: Colors.transparent,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:  const Color(0xFF3b3b3b))
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset("images/star.png")),
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Add Employee",style: shortheadstyle(),),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                     // AppPages.routes;
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> const DesignationAddScreen()));


                    },
                    child: Container(
                      height: 70,
                      width: 110,
                      //color: Colors.transparent,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:  const Color(0xFF3b3b3b))
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset("images/businessman.png")),
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Add Designation",style: shortheadstyle(),),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ListTile(
              leading: Text("Select Month",style: shortheadstyle(),),
              trailing:  Container(
                height: 40,
                width: 200,
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
                      value: month,
                      onChanged: (value) {
                        setState(()
                        {
                          month = value!;

                        }
                        );
                      },

                      items: months.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 10.0),
                            child: Text(
                              value,
                              style: const  TextStyle(
                                  color: Colors.black87, //<-- SEE HERE
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
            //Employee Name
            ListTile(
              leading: Text("Employee Name",style: shortheadstyle(),),
              trailing: SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: empnameController,
                    decoration:  InputDecoration(
                      hintText: "Employee name",
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintStyle: labelStyle(),
                      filled: true,
                      fillColor:const  Color(0xFFFAFAFA),
                      enabledBorder:const  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Color(0xFFe0f4f5), width: 2),),
                      focusedBorder:const  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.all(Radius.circular(10.0,),),
                      ),
                    ),),
                ),
              ),
            ),

            ListTile(
              leading: Text("Organization",style: shortheadstyle(),),
              trailing:  Container(
                height: 40,
                width: 200,
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
                      value: organization,
                      onChanged: (value) {
                        setState(()
                        {
                          organization = value!;

                        }
                        );
                      },

                      items: orgName.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 10.0),
                            child: Text(
                              value,
                              style: const  TextStyle(
                                  color: Colors.black87, //<-- SEE HERE
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

            ListTile(
              leading: Text("Designation",style: shortheadstyle(),),
              trailing:  Container(
                height: 40,
                width: 200,
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
                      value: designation,
                      onChanged: (value) {
                        setState(()
                        {
                          designation = value!;

                        }
                        );
                      },

                      items: desigName.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 10.0),
                            child: Text(
                              value,
                              style: const  TextStyle(
                                  color: Colors.black87, //<-- SEE HERE
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


            //Attendance
            ListTile(
              leading: Text("Attendance",style: shortheadstyle(),),
              trailing: SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (String str){
                      setState(() {
                        // wpa = double.parse(WPAController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                        salary = salaryperday *  double.parse(attendanceController.text);

                      }
                      );
                    },
                     keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: attendanceController,
                    onChanged: (text) {
                      attendanceController = text as TextEditingController;
                    },

                    decoration:  InputDecoration(
                      hintText: "Attendance",
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
              ),
            ),


            //Basic
            ListTile(
              leading: Text("Basic",style: shortheadstyle(),),
              trailing:SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (String str){
                      setState(() {
                        // wpa = double.parse(WPAController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                        salary = salaryperday *  double.parse(attendanceController.text);

                      }
                      );
                    },
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: basicController,
                    decoration:  InputDecoration(
                      hintText: "Basic",
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
              ),
            ),

            //DA
            ListTile(
              leading: Text("DA",style: shortheadstyle(),),
              trailing: SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (String str){
                      setState(() {
                        // wpa = double.parse(WPAController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                        salary = salaryperday *  double.parse(attendanceController.text);

                      }
                      );
                    },
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: daController,
                    decoration:  InputDecoration(
                      hintText: "DA",
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
              ),
            ),

            //HRA
            ListTile(
              leading: Text("Allowance",style: shortheadstyle(),),
              trailing:SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (String str){
                      setState(() {
                        // wpa = double.parse(WPAController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                        salary = salaryperday *  double.parse(attendanceController.text);

                      }
                      );
                    },
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: allowanceController,
                    decoration:  InputDecoration(
                      hintText: "HRA",
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
              ),
            ),

            //WPA
            ListTile(
              leading: Text("WPA",style: shortheadstyle(),),
              trailing: SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    onFieldSubmitted: (String str){
                      setState(() {
                       // wpa = double.parse(WPAController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                        salary = salaryperday *  double.parse(attendanceController.text);

                      }
                      );
                    },
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: wpaController,
                    decoration:  InputDecoration(
                      hintText: "WPA",
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
              ),
            ),
            ListTile(
              // leading: Icon(Icons.align_vertical_top_outlined,color: Colors.white70,),
                title: Text("Salry Per Day",style: sumtextstyle(),),
                trailing: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(salaryperday.toStringAsFixed(3)
                    ,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                )



            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.white60,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.align_vertical_top_outlined,color: Colors.white70,),
                title: Text("Salry",style: sumtextstyle(),),
                trailing: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(salary.toStringAsFixed(3),
                    style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                )



            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.white60,
              ),
            ),


            //PF
            ListTile(
              leading: Text("PF",style: shortheadstyle(),),
              trailing:  SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (String str){
                      setState(() {
                        //wpa = double.parse(WPAController.text);

                        // salary = (double.parse(basicController.text)+
                        //     double.parse(DAController.text)+
                        //     double.parse(allowanceController.text)+
                        //     double.parse(WPAController.text))*  double.parse(attendanceController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                         salary = salaryperday *  double.parse(attendanceController.text);
                        netsalary = salary-
                            double.parse(pfController.text)-
                            double.parse(esiController.text)-
                            double.parse(taxController.text)-double.parse(employeeController.text);



                      });
                    },

                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: pfController,
                    decoration:  InputDecoration(
                      hintText: "PF",
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
              ),
            ),

            //ESI
            ListTile(
              leading: Text("ESI",style: shortheadstyle(),),
              trailing:  SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (String str){
                      setState(() {
                        //wpa = double.parse(WPAController.text);

                        // salary = (double.parse(basicController.text)+
                        //     double.parse(DAController.text)+
                        //     double.parse(allowanceController.text)+
                        //     double.parse(WPAController.text))*  double.parse(attendanceController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                       // salary = salaryperday *  double.parse(attendanceController.text);
                         salary = salaryperday *  double.parse(attendanceController.text);
                        netsalary = salary-
                            double.parse(pfController.text)-
                            double.parse(esiController.text)-
                            double.parse(taxController.text)-double.parse(employeeController.text);



                      });
                    },

                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: esiController,
                    decoration:  InputDecoration(
                      hintText: "ESI",
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
              ),
            ),

            //employee
            ListTile(
              leading: Text("Advance",style: shortheadstyle(),),
              trailing:  SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (String str){
                      setState(() {
                        //wpa = double.parse(WPAController.text);

                        // salary = (double.parse(basicController.text)+
                        //     double.parse(DAController.text)+
                        //     double.parse(allowanceController.text)+
                        //     double.parse(WPAController.text))*  double.parse(attendanceController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;
                        // //salary = salaryperday *  double.parse(attendanceController.text);
                         salary = salaryperday *  double.parse(attendanceController.text);
                        netsalary = salary-
                            double.parse(pfController.text)-
                            double.parse(esiController.text)-
                            double.parse(taxController.text)-double.parse(employeeController.text);



                      });
                    },

                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: employeeController,
                    decoration:  InputDecoration(
                      hintText: "Advance",
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
              ),
            ),

            //Tax
            ListTile(
              leading: Text("Tax",style: shortheadstyle(),),
              trailing:  SizedBox(
                height: 40,
                width: 200,
                child: Center(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (String str){
                      setState(() {
                        //wpa = double.parse(WPAController.text);

                        // salary = (double.parse(basicController.text)+
                        //     double.parse(DAController.text)+
                        //     double.parse(allowanceController.text)+
                        //     double.parse(WPAController.text))*  double.parse(attendanceController.text);
                        salaryperday = (double.parse(basicController.text)+
                            double.parse(daController.text)+
                            double.parse(allowanceController.text)+
                            double.parse(wpaController.text))/30;

                         salary = salaryperday *  double.parse(attendanceController.text);
                        netsalary = salary-
                            double.parse(pfController.text)-
                            double.parse(esiController.text)-
                            double.parse(taxController.text)-double.parse(employeeController.text);



                      });
                    },

                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: taxController,
                    decoration:  InputDecoration(
                      hintText: "Tax",
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
              ),
            ),

            // IT


            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.white60,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.align_vertical_top_outlined,color: Colors.white70,),
              title: Text("Net Salry",style: sumtextstyle(),),
              trailing: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(netsalary.toStringAsFixed(3),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
              )



            ),
            const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(top: 10.0,bottom: 30),
              child: GestureDetector(
                onTap: (){
                  clearfields();
                  setState(() {
                    salaryperday =0;
                    salary=0;
                    netsalary=0;

                  });

                  // Navigator.push(context, MaterialPageRoute(
                  //     builder: (context)=>home_screen()));
                },
                child: ContainerButton(
                  height: 30,
                  width: 300,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightGreen),
                ),
              ),
            )
          ],
        ),
      ),


    );
  }

}
