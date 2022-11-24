import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MonthWiseSalaryReport extends StatefulWidget {
  const MonthWiseSalaryReport({Key? key}) : super(key: key);

  @override
  _MonthWiseSalaryReportState createState() => _MonthWiseSalaryReportState();
}

class _MonthWiseSalaryReportState extends State<MonthWiseSalaryReport> {

  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
  var searchController = TextEditingController();
  late String temp = "";

  String month = "January";

  final List<String> months =[
    "January","February","March","April","May","June","July","August","September","October","November","Deceber"];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const   Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Month Wise Salary Report",style:MainHeadingStyle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
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
           const  SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [


                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),),
                            backgroundColor: Colors.yellow[600],
                            textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        onPressed: (){},
                        child: Text("View report",style: buttonTextStyleblack())),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Column(
              children: [
                Text("Month Wise Salary Report",style: shortheadstyle(),)
              ],
            )
          ],
        ),
      ),

    );

  }
}
