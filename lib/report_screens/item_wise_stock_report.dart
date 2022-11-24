import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ItemWiseStockReport extends StatefulWidget {
  const ItemWiseStockReport({Key? key}) : super(key: key);

  @override
  _ItemWiseStockReportState createState() => _ItemWiseStockReportState();
}

class _ItemWiseStockReportState extends State<ItemWiseStockReport> {

  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
  var searchController = TextEditingController();
  late String temp = "";
  static List<String> names=
  [
    "Item Name","Pencil","Pen","Notebook","Remote","Glass","Plate",
    "Bottles","Scissors",
  ];

  String name = "Item Name";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor:  const Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Item Wise Stock Report",style:MainHeadingStyle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            ListTile(
              leading: Text("Item Name",style: shortheadstyle(),),
              trailing:  Container(
                height: 45,
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
            const SizedBox(height: 10,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children:  [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Text("Select Items",style: sumtextstyle(),),
            //     ),
            //      SizedBox(height: 10,),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 12.0,right: 10,bottom: 10,top: 10),
            //       child: Container(
            //         width: MediaQuery.of(context).size.width/2,
            //         //width: 270,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child:  Container(
            //           height: 40,
            //           //width: 270,
            //           //color: Colors.white,
            //           decoration: BoxDecoration(
            //             color: Colors.white60,
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //
            //           child:  Center(
            //             child: AutoCompleteTextField(
            //
            //               // onFocusChanged: (str){
            //               //  temp =str as String;
            //               // },
            //               clearOnSubmit: false,
            //               controller: searchController,
            //               suggestions: item_name,
            //               key: key,
            //               style: buttonTextStyleblack(),
            //
            //               decoration: InputDecoration(
            //                   fillColor: Colors.yellow,
            //                   border: OutlineInputBorder(
            //                     borderRadius: BorderRadius.circular(10),
            //
            //                   )
            //               ),
            //               //   itemFilter: (suggestion, input) =>
            //               //       suggestion.name.toLowerCase().startsWith(input.toLowerCase()),
            //               // )
            //               itemFilter: (String item, String query){
            //                 return item.toLowerCase().startsWith(query.toLowerCase());
            //               },
            //               itemSorter: (String a, String b){
            //                 return a.compareTo(b);
            //               },
            //               itemSubmitted: (String item) {
            //                 //taskitems.addItem(item);
            //                 searchController.text = item;
            //                 temp =searchController.text;
            //                 item_name.add(item);
            //               },
            //               // itemSubmitted: (item) =>
            //               //     setState(() => selected = item),
            //
            //
            //               itemBuilder: (context,  item){
            //                 int i = 0;
            //                 int j =i+5;
            //
            //                 return ListTile(
            //                   title: Text("$item"),
            //                   //  trailing: Text("$j"),
            //                   // leading: Text("$searchController"),
            //                 );
            //                 print(item);
            //               },
            //             ),
            //           ),
            //         ),
            //
            //       ),
            //     ),
            //
            //   ],
            // ),
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
                Text("Item Wise Stock report",style: shortheadstyle(),)
              ],
            )
          ],
        ),
      ),

    );

  }
}
