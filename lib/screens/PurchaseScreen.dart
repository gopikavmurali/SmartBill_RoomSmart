import 'package:flutter/material.dart';
import '../components.dart';
import '../constants.dart';

class PurchaseScreen extends StatefulWidget {
  static var enteredValue;
  const PurchaseScreen({
    Key? key,}) : super(key: key);

  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {

  TextEditingController totalgst =TextEditingController();
    String result = "";
  late double cgst =0;
  late double ccgst =0;
  late double sgst =0;
  late double ssgst =0;

  TextEditingController qtyController = TextEditingController();
  TextEditingController currentstockController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController newpriceController = TextEditingController();
  TextEditingController totalgstController = TextEditingController();


  final List<String> itName=
  [
    "Item Name",
    "Vegetables",
    "Fruits",
    "Toys"
  ];


  String itemname = "Item Name";
  final List<String> disName=
  [
    "Distributor Name",
    "Nestle",
    "Faces Canada",
    "Toys"
  ];

  String distributorname = "Distributor Name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const  Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Purchase",style:MainHeadingStyle()),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      //backgroundColor: Color(0xff2d2d2d),
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Item Name",style: shortheadstyle(),),
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
                      value: itemname,
                      onChanged: (value) {
                        setState(()
                        {
                          itemname = value!;

                        }
                        );
                      },

                      items: itName.map<DropdownMenuItem<String>>((value) {
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
                  padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Distributor Name",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const  Color(0xFFFAFAFA),),
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton<String>(
                      // isDense: true,
                      // isExpanded: false,
                      dropdownColor: Colors.white,
                      elevation: 10,
                      iconEnabledColor:  const Color(0xff2d2d2d),
                      value: distributorname,
                      onChanged: (value) {
                        setState(() {
                          distributorname = value!;
                        });
                      },

                      items: disName.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 10.0),
                            child: Text(
                                value,
                              style:  const TextStyle(
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
                  child: Text("Price",style: shortheadstyle(),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  const EdgeInsets.only(left: 30.0,right: 10,top: 8),
                  child:  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color:const Color(0xFFFAFAFA),
                    ),
                    child: Center(child: Text("Old Price",style: labelStyle())),


                  ),
                ),
                Padding(
                  padding: const  EdgeInsets.only(left: 10.0,right: 0,top: 8),
                  child:   Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color:const Color(0xFFFAFAFA),
                    ),
                    child: Center(child: Text("New Price",style: labelStyle())),



                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:const   EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Quantity",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: buildTextfield("Quantity", qtyController)

            ),
            Row(
              children: [
                Padding(
                  padding:const   EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Total GST",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    onFieldSubmitted: (String str){
                       setState((){
                         result = str;
                         cgst = double.parse(totalgstController.text);
                         ccgst = cgst / 2;
                         sgst = double.parse(totalgstController.text);
                         ssgst = cgst / 2;

                           });
                      },

                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: totalgstController,
                    decoration:  InputDecoration(
                      hintText: "GST",
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
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("GST Percentage",style: shortheadstyle(),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 10,top: 8),
                  child:  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color:const Color(0xFFFAFAFA),
                    ),
                    child: Center(child: Text("CGST = $ccgst",style:const  TextStyle(color: Colors.black),)),

                  ),
                ),
                Padding(
                  padding: const  EdgeInsets.only(left: 10.0,right: 0,top: 8),
                  child:   Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color:const Color(0xFFFAFAFA),
                    ),
                    child: Center(child: Text("SGST = $ssgst",style:const TextStyle(color: Colors.black),)),


                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Current Stock",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: buildTextfield("Current Stock", currentstockController)
            ),
            Row(
              children: [
                Padding(
                  padding:const   EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Date",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child:  buildTextfield("Date", dateController)
            ),

            Padding(
              padding: const EdgeInsets.only(top: 28.0,bottom: 30),
              child: GestureDetector(
                onTap: (){},
                // {
                //   Navigator.push(context, MaterialPageRoute(
                //       builder: (context)=>sales_screen_demo(itemname: itemnameController.text,)));
                // },
                child: ContainerButton(
                  height: 30,
                  width: 150,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),
                      color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
