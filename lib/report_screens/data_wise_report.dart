
import 'package:flutter/material.dart';
import 'package:smart_bill/constants.dart';


class DataReport extends StatefulWidget {
  const DataReport({Key? key}) : super(key: key);

  @override
  _DataReportState createState() => _DataReportState();
}

class _DataReportState extends State<DataReport> {


  final startDateController = TextEditingController();
  final endDateController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Data wise Sales Report",style:MainHeadingStyle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            ListTile(
              leading: Text("Select From Date",style: shortheadstyle(),),
              trailing: Container(
                width: MediaQuery.of(context).size.width/2,
                height: 45,
                decoration:  BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    borderRadius: const BorderRadius.all(Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const  Offset(0, 2),
                      )
                    ]
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  readOnly: true,
                  style: shortheadstyle(),
                  controller: startDateController,
                  decoration:  const InputDecoration(
                    // hintText: "Enter your email",
                    //labelText: "",
                    labelStyle: TextStyle(color: Color(0xFF424242)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                  onTap: () async {
                    var date =  await showDatePicker(
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: const ColorScheme.light(
                                  onSurfaceVariant: Colors.pink,
                                  onBackground: Colors.orangeAccent,
                                  background: Colors.pink,
                                  primary: Color(0xFFe8cb10),
                                  onPrimary: Colors.black45, // <-- SEE HERE
                                  onSurface: Colors.black45// <-- SEE HERE
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                   // onSurface: Colors.blueAccent,
                                    //backgroundColor: Colors.orangeAccent,
                                   // primary: Colors.black// button text color
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                        context: context,
                        initialDate:DateTime.now(),
                        firstDate:DateTime(1900),
                        lastDate: DateTime(2100));
                    startDateController.text = date.toString().substring(0,10);
                  },
                ),
              ),
            ),
            ListTile(
              leading: Text("Select To Date",style: shortheadstyle(),),
              trailing: Container(
                width: MediaQuery.of(context).size.width/2,
                height: 45,
                decoration:  BoxDecoration(
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
                  child: TextField(
                    textAlign: TextAlign.center,
                    readOnly: true,
                    style: shortheadstyle(),
                    controller: endDateController,
                    decoration:  const InputDecoration(
                      // hintText: "Enter your email",
                      //labelText: "",
                      labelStyle: TextStyle(color: Color(0xFF424242)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    onTap: () async {
                      var date =  await showDatePicker(
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                    onSurfaceVariant: Colors.pink,
                                    onBackground: Colors.orangeAccent,
                                    background: Colors.pink,
                                    primary: Color(0xFFe8cb10),
                                    onPrimary: Colors.black45, // <-- SEE HERE
                                    onSurface: Colors.black45// <-- SEE HERE
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    //  onSurface: Colors.blueAccent,
                                      //backgroundColor: Colors.orangeAccent,
                                      //primary: Colors.black// button text color
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                          context: context,
                          initialDate:DateTime.now(),
                          firstDate:DateTime(1900),
                          lastDate: DateTime(2100));
                      endDateController.text = date.toString().substring(0,10);
                    },
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
                          //  primary: Colors.yellow[600],
                            textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        onPressed: (){},
                        child: Text("View report",style: buttonTextStyleblack())),
                  ),
                ),
              ],
            ),
           const  Padding(
              padding: EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Column(
              children: [
                Text("Data Wise Sales Report",style: shortheadstyle(),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
