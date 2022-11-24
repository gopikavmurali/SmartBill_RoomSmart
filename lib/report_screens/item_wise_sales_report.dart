import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class ItemWiseSalesReport extends StatefulWidget {
  const ItemWiseSalesReport({Key? key}) : super(key: key);

  @override
  _ItemWiseSalesReportState createState() => _ItemWiseSalesReportState();
}

class _ItemWiseSalesReportState extends State<ItemWiseSalesReport> {
  final startDateControl = TextEditingController();
  final endDateControl= TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
  var searchController = TextEditingController();
  late String temp = "";



  static List<String> names=
  [
    "Item Name","Pencil","Pen","Notebook","Remote","Glass","Plate",
    "Bottles","Scissors",
  ];

  String name = "Item Name";

  final List<String> months =[
    "January","February","March","April","May","June","July","August","September","October","November","Deceber"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor:  const Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Item Wise Sales Report",style:MainHeadingStyle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),

            ListTile(
              leading: Text("Item Name",style: shortheadstyle(),),
              trailing:  Container(
                height: 45,
                width: 199,
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
                      value: name,
                      onChanged: (value) {
                        setState(()
                        {
                          name = value!;

                        }
                        );
                      },

                      items: names.map<DropdownMenuItem<String>>((value) {
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
                  controller: startDateControl,
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
                                    //onSurface: Colors.blueAccent,
                                    //backgroundColor: Colors.orangeAccent,
                                  //  primary: Colors.black// button text color
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
                    startDateControl.text = date.toString().substring(0,10);
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
                    controller: endDateControl,
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
                      endDateControl.text = date.toString().substring(0,10);
                    },
                  ),
                ),
              ),
            ),


           const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [


                const  SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),),
                            backgroundColor: Colors.yellow[600],
                            textStyle: const  TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        onPressed: (){},
                        child: Text("View report",style: buttonTextStyleblack())),
                  ),
                ),
              ],
            ),
            const  Padding(
              padding:  EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Column(
              children: [
                Text("Item Wise Sales Report",style: shortheadstyle(),)
              ],
            )
          ],
        ),
      ),

    );
  }

}
