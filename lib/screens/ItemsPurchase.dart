
import 'package:flutter/material.dart';
import 'package:smart_bill/screens/PurchaseScreen.dart';
import '../components.dart';
import '../constants.dart';
import 'CheckBox_Combo.dart';




class ItemPurchase extends StatefulWidget {
  const ItemPurchase({Key? key}) : super(key: key);

  @override
  _ItemPurchaseState createState() => _ItemPurchaseState();
}

class _ItemPurchaseState extends State<ItemPurchase> {

  String itemname ="";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff2d2d2d),
        appBar: AppBar(
          shadowColor:  const Color(0xff313131),
          elevation: 01,
          backgroundColor: const Color(0xff363636),
          title: Text("Item Purchase",style:MainHeadingStyle()),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Edit',style: shortHeadingStyle(),),
            ),
          ],
          bottom: const TabBar(
            indicatorColor:  Color(0xFFFDDA0D),
            tabs: [
              Tab(text: "Items "),
              Tab(text: "Combo Offers"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: ItemsPage()),
            Center(child: ComboOffer()),
                      ],),
      ),
    );
  }
}



class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  _ItemsPageState createState() => _ItemsPageState();
}


class _ItemsPageState extends State<ItemsPage> {
  TextEditingController mrpontroller = TextEditingController();
  TextEditingController itemnameController = TextEditingController();
  TextEditingController shortnameController = TextEditingController();
  TextEditingController brandnameController = TextEditingController();
  TextEditingController mrpController = TextEditingController();
  TextEditingController cgstController = TextEditingController();
  TextEditingController sgstCntroller = TextEditingController();
  TextEditingController stockController = TextEditingController();
  TextEditingController sellingpriceController = TextEditingController();

  Widget _buildAddEdit(){
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:
                const  Color(0xFF3b3b3b)
                )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Icon(Icons.add_box_outlined,color: Colors.yellow[600],),
                      ),
                    )

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Add",style: shortheadstyle(),),

                  ],
                )
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
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
                        child: Icon(Icons.edit_outlined,color: Colors.yellow[600],),
                        // child: Image.asset("images/star.png")
                      ),
                    )

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Edit",style: shortheadstyle(),),

                  ],
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
  Widget _buildItemName(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const   EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("Item Name",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
          padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
          child: buildTextfield("Item name", itemnameController),
        ),
      ],
    );
  }
  Widget _buildShortName(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("Short Name",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
            padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
            child: buildTextfield("Short Name", shortnameController)
        ),

      ],
    );
  }
  Widget _buildBrandName(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("Brand Name",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
            padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
            child: buildTextfield("Brand Name", brandnameController)
        ),
      ],
    );
  }
  Widget _buildMrp(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("MRP",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30,top: 8),
            child: buildTextfield("MRP", mrpController)
        ),
      ],
    );
  }
  Widget _buildGST(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("CGST",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
            padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
            child: buildTextfield("CGST", cgstController)
        ),
        Row(
          children: [
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("SGST",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
            padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
            child:buildTextfield("SGST", sgstCntroller)
        ),

      ],
    );
  }
  Widget _buildStock(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("Stock",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
          padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
          child: buildTextfield("Stock", stockController),
        ),
      ],
    );
  }
  Widget _buildSellingPrice(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
              child: Text("Selling Price",style: shortheadstyle(),),
            ),
          ],
        ),
        Padding(
            padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 8),
            child:  buildTextfield("Selling Price", sellingpriceController)
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            _buildAddEdit(),
            _buildItemName(),
            _buildShortName(),
            _buildBrandName(),
            _buildMrp(),
            _buildGST(),
            _buildStock(),
            _buildSellingPrice(),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,bottom: 30),
              child: GestureDetector(
                onTap:
                    (){
                  PurchaseScreen.enteredValue.value = mrpController.text;
                },
                child: ContainerButton(
                  height: 30,
                  width: 300,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const  Color(0xFFFDDA0D),
                  ),),
              ),)
          ],),
      ),);
  }
}



class ComboOffer extends StatefulWidget {
  const ComboOffer({Key? key}) : super(key: key);

  @override
  _ComboOfferState createState() => _ComboOfferState();
}

class _ComboOfferState extends State<ComboOffer> {
  List<String> _selectedItems = [];

  void _showitemList() async {
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState){
                return AlertDialog(
                  title: const Text("List of Offer Items"),
                  content: SingleChildScrollView(
                    child:
                    Column(
                      children: [
                        Wrap(
                          children: _selectedItems
                              .map((e) => SizedBox(
                            height: 50,
                            width: 200,
                            child:Row(
                              children: [
                               const Icon(Icons.arrow_right),
                                Text(e,style: buttonTextStyleblack()),
                              ],
                            ),
                          )).toList(),
                        ),],
                    ),),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),),
                                    backgroundColor: Colors.white70,
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                                onPressed: (){
                                  Navigator.pop(context);
                                  _showMultiSelect();},
                                child: Text("Edit",style: buttonTextStyleblack())),),
                         const  SizedBox(width: 10,),
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),),
                                    backgroundColor: Colors.yellow[600],
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                                onPressed: (){
                                  Navigator.pop(context);},
                                child: Text("Confirm",style: buttonTextStyleblack(),)),
                          ),
                        ],),
                    )],
                );}
          );});
  }

  void _showMultiSelect() async {
        final List<String> itemsList = [
      'Pen', 'pencil', "Television", "Body Lotions",
      "Remote", "Charger", "Facial Tissue",
      "T shirts", "Perfumes","Concealer",
      'Mobile Phone', 'Laptop', 'Earphone',
      'Toothpaste',"Charger","Photo Frames",
      "Vegetables","Fruits"
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: itemsList);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  //variable declarations
  String result = "";
  String amount = "";
  late double totalamount = 0;
 late double total= 0;
  late double cgst =0;
  late double ccgst =0;
  late double sgst =0;
  late double ssgst =0;


  TextEditingController offernameController = TextEditingController();
  TextEditingController comboController = TextEditingController();
  TextEditingController gstController = TextEditingController();
  TextEditingController totalamountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xff2d2d2d),
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
           const  SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const  Color(0xFF3b3b3b))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 25,
                                width: 25,
                                child: Icon(Icons.add_box_outlined,color: Color(0xFFFDDA0D),),
                              ),
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Add",style: shortheadstyle(),),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 110,
                    //color: Colors.transparent,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const  Color(0xFF3b3b3b))
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 25,
                                width: 25,
                                child: Icon(Icons.edit_outlined,color: Color(0xFFFDDA0D),),
                                // child: Image.asset("images/star.png")
                              ),
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Edit",style: shortheadstyle(),),

                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Combo Offer Name",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30,top: 8),
                child:  buildTextfield("Name of Offer ",offernameController )
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30,top: 20,bottom: 10),
                  child: Text("Select Items for Combo Offer",style: shortheadstyle(),),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width/2.4,
                    child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),),
                            backgroundColor: Colors.white60,
                            textStyle: const  TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)
                        ),
                        onPressed: _showMultiSelect,
                        // icon: Icon(Icons.add,color: Colors.black,),
                        child: Text("Tap to Select Items ",style: buttonTextStyleblack() )

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),),
                            backgroundColor:const   Color(0xFFFDDA0D),
                            textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)
                        ),
                        onPressed: _showitemList,
                        child:  Text("Tap to View Items",style: buttonTextStyleblack() ))// Icon(Icons.keyboard_arrow_down,color: Colors.black,)),
                  ),
                )
              ],
            ),


            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Combo Price",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding: const  EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child:TextFormField(
                    style: const TextStyle(color: Colors.black),
                    onFieldSubmitted: (String str){
                      setState((){
                        amount = str;
                        total= double.parse(comboController.text);
                        // cgst = double.parse(gstController.text);
                        // ccgst = cgst / 2;
                        // sgst = double.parse(gstController.text);
                        // ssgst = cgst / 2;

                      });
                    },

                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: comboController,
                    decoration:  InputDecoration(
                      hintText: "GST",
                      contentPadding:const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintStyle: labelStyle(),
                      filled: true,
                      fillColor: const Color(0xFFFAFAFA),
                      enabledBorder:const  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Color(0xFFe0f4f5), width: 2),),
                      focusedBorder: const  OutlineInputBorder(
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
                  child: Text(" Total GST",style: shortheadstyle(),),
                ),
              ],
            ),
            Padding(
              padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    onFieldSubmitted: (String str){
                      setState((){
                        result = str;
                        cgst = double.parse(gstController.text);
                        ccgst = cgst / 2;
                        sgst = double.parse(gstController.text);
                        ssgst = cgst / 2;
                         totalamount = total+ ccgst+ssgst;

                      });
                    },

                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black87,
                    autocorrect: true,
                    controller: gstController,
                    decoration:  InputDecoration(
                      hintText: "GST",
                      contentPadding:const  EdgeInsets.fromLTRB(10, 0, 0, 0),
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
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("GST Percentage",style: shortheadstyle(),),
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
                    child: Center(child: Text("CGST = $ccgst",style: const TextStyle(color: Colors.black),)),

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
                    child: Center(child: Text("SGST = $ssgst",style:const  TextStyle(color: Colors.black),)),


                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                  child: Text("Total Amount",style: shortheadstyle(),),
                ),
              ],
            ),

            Padding(
              padding:  const EdgeInsets.only(left: 30.0,right: 30,top: 8),
              child:  Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:const Color(0xFFFAFAFA),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10),
                  child: Text("$totalamount",style: const TextStyle(color: Colors.black),),
                ),


              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 28.0,bottom: 30),
              child: GestureDetector(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(
                  //     builder: (context)=>const home_screen()));
                },
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







