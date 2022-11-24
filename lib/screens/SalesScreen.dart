import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import '../constants.dart';

class SalesScreen extends StatefulWidget {
  String itemname;

  String priceofitem;

  SalesScreen({
    Key? key,
    required this.itemname,
    required this.priceofitem,
  }) : super(key: key);

  @override
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  var searchController = TextEditingController(); //Textfield controller for searching
  TextEditingController gramcontroller = TextEditingController(); //Textfield controller for  grams
  TextEditingController mobilecontroller = TextEditingController(); //Textfield controller for mobile number

  //variables declarations
  double unitprice = 300;
  int grandtotals = 0;
  double unittotal = 0;
  var count = 0;
  double grams = 0;
  String temp = "";
  int tempcount = 0;
  int totalamount = 0;
  double priceofgrams = 0;
  double pricepergram = 0;
  double subtotal = 0;

  // functions
  void deleteitem(int index) {
    listitem.removeAt(index);
  }
  void totalkgprice() {
    setState(() {
      unittotal = count * unitprice;
    });
  }
  void grandtotal() {
    setState(() {
      grandtotals = (unitprice + 20 + 20) as int;
    });
  }

  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();

  static List<String> itemname = [
    "Apple", "Axe", "Carrot",
    "Dolls", "Grapes", "Pineapple",
    "Jackfruit", "Vegetable", "Electronics",
    "Books", "Toys", "Gadgets",
    "Blankets", "Chairs", "Tables",
    "Dresses", "Airpods"
  ];

  List<String> listitem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Sales ", style: MainHeadingStyle()),
      ),
      body: Scrollbar(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //Date Day clse and user close
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "17-08-2022",
                          style: shortheadstyle(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, top: 10, bottom: 10),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:  Colors.white70,
                                 // primary: Colors.white70,
                                  textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {},
                              child: Text("User Close",
                                  style: buttonTextStyleblack())),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20.0, top: 10, bottom: 10),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:  const  Color(0xFFFDDA0D),

                                  textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {},
                              child: Text("Day Close",
                                  style: buttonTextStyleblack())),
                        ),
                      )
                    ],
                  ),
                  //last invoice number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Last Invoice : ",
                          style: shortheadstyle(),
                        ),
                      ),
                      Text(
                        "TBD-300-10983DFG",
                        style: sumtextstyle(),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white70,
                    ),
                  ),
                  //Search box and add button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 10),
                        child: Container(
                            width: 270,
                            height: 40,
                            decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10),),
                          child: Center(
                            child: AutoCompleteTextField(
                              clearOnSubmit: false,
                              controller: searchController,
                              suggestions: itemname,
                              key: key,
                              style: buttonTextStyleblack(),
                              decoration: InputDecoration(
                                  fillColor: Colors.yellow,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              itemFilter: (String item, String query) {
                                return item
                                    .toLowerCase()
                                    .startsWith(query.toLowerCase());
                              },
                              itemSorter: (String a, String b) {
                                return a.compareTo(b);
                              },
                              itemSubmitted: (String item) {
                                searchController.text = item;
                                temp = searchController.text;
                                itemname.add(item);
                              },
                              itemBuilder: (context, item) {
                                int i = 0;
                                int j = i + 5;
                                return ListTile(
                                  title: Text("$item"), // for showing item name on suggestion list
                                  trailing: Text("$j"), //for showing remaining item count on suggestion list
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10.0, top: 10, bottom: 10),
                        child: SizedBox(
                          height: 30,
                          width: 70,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor: const Color(0xFFFDDA0D),
                                 // primary:
                                  textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {
                                setState(() {
                                  listitem.add(temp);
                                  listitem.add(tempcount.toString());
                                  listitem.add(unitprice.toString());
                                  listitem.add(unittotal.toString());
                                  // String nameofitems= listitem.first;
                                  // String countofitems= listitem[1];
                                  // String upriceofitems =listitem[2];
                                  // String totalpriceofitems =listitem[3];
                                });
                                searchController.clear();
                                count = 0;
                                unittotal = 0;
                                unitprice = 0;
                              },
                              child:
                                  Text("Add", style: buttonTextStyleblack())),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  count--;
                                  totalkgprice();
                                  tempcount = count;
                                  totalamount = unittotal.toInt();
                                });
                                grandtotal();
                              },
                              child: Container(
                                height: 25,
                                width: 28, //Color(0xFFD97E7E )
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white60),
                                child: const Center(
                                    child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5),
                              child: Container(
                                height: 35,
                                width: 38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white70,
                                ),
                                child: Center(
                                  child: Text(
                                    "$count",
                                    style:
                                        const TextStyle(color: Colors.black87),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  count++;
                                  totalkgprice();
                                  tempcount = count;
                                });
                                grandtotal();
                              },
                              child: Container(
                                height: 25,
                                width: 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const  Color(0xFFFDDA0D),
                                ),
                                child: const Center(
                                  child: Text("+",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 0),
                        child:
                            Text("Weight in Grams :", style: shortheadstyle()),
                      ),
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          cursorColor: Colors.black87,
                          autocorrect: true,
                          controller: gramcontroller,
                          decoration: InputDecoration(
                            //hintText: hint,
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            hintStyle: dropstyle(),
                            filled: true,
                            fillColor: Colors.white54,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              // borderSide: BorderSide(color: Colors.white54),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //........................unit price code
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Text("UPrice :", style: shortheadstyle()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Text(unitprice.toStringAsFixed(2),
                            style: sumtextstyle()),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2.0, bottom: 2, left: 30),
                            child: SizedBox(
                              height: 28,
                              width: 130,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      backgroundColor: Colors.white54,
                                      textStyle: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    setState(() {
                                      grams = double.parse(gramcontroller.text);
                                      pricepergram = unitprice / 1000;
                                      priceofgrams = pricepergram * grams;
                                      subtotal = priceofgrams + unittotal;

                                      // print("unittotal: $unittotal");
                                      // print("grams: $grams,grams");
                                      // print("pricepergram: $pricepergram");
                                      // print("priceingramsa: $priceofgrams");
                                      // print("subtotal: $subtotal");
                                      gramcontroller.clear();
                                    });
                                  },
                                  child: Text("Calculate",
                                      style: buttonTextStyleblack())),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 5,),
                          //   child: TextButton(
                          //       onPressed:(){
                          //         setState(() {
                          //           grams =  double.parse(gramcontroller.text);
                          //           pricepergram = unitprice/1000;
                          //           priceofgrams = pricepergram * grams;
                          //           subtotal =priceofgrams +unittotal;
                          //
                          //           print("unittotal: $unittotal");
                          //           print("grams: $grams,grams");
                          //           print("pricepergram: $pricepergram");
                          //           print("priceingramsa: $priceofgrams");
                          //           print("subtotal: $subtotal");
                          //
                          //         });
                          //
                          //       },
                          //       child: const Text("Calculate Price",
                          //         style: TextStyle(color: Colors.white,
                          //             fontSize: 18,
                          //             fontWeight: FontWeight.bold),)),
                          // ),
                        ],
                      )
                      //.....................................
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 30.0,),
                      //   child: Text("Sub Total:",  style: shortheadstyle()),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 2.0,right: 5),
                      //   child: Text(unittotal.toStringAsFixed(2),
                      //       style: sumtextstyle()),
                      // ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 5),
                        child: Text("Price in Gram:", style: shortheadstyle()),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 2.0, right: 10, top: 5),
                        child: SizedBox(
                          height: 20,
                          width: 40,
                          child: Text(priceofgrams.toStringAsFixed(2),
                              style: sumtextstyle()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0, top: 5),
                        child: Text("Total Price:", style: shortheadstyle()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0, top: 5),
                        child: Text(subtotal.toStringAsFixed(2),
                            style: sumtextstyle()),
                      ),
                    ],
                  ),

                  //divider
                  const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white70,
                    ),
                  ),
                  //item nam, qty , uprice,total heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Item Name",
                          style: shortheadstyle(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Qty",
                          style: shortheadstyle(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Uprice",
                          style: shortheadstyle(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          "Total",
                          style: shortheadstyle(),
                        ),
                      )
                    ],
                  ),
                  //divider
                  const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white70,
                    ),
                  ),

                  //list of items
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: listitem.length,
                      itemBuilder: (BuildContext context, int index) {
                        // String nameofitem = listitem[0];
                        // String priceitem = listitem[1];
                        // String qtyofitem = listitem[2];
                        // String totalofitem= listitem[3];

                        return Dismissible(
                          key: UniqueKey(),
                          direction: DismissDirection.startToEnd,
                          onDismissed: (direction) {
                            setState(() {
                              deleteitem(index);
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Text(nameofitem,style: sumtextstyle(),),
                              // Text(qtyofitem,style: sumtextstyle(),),
                              // Text(priceitem,style: sumtextstyle(),),
                              // Text(totalofitem,style: sumtextstyle(),),

                              Text(listitem[index], style: sumtextstyle()),
                              //  Text(listitem[0],style: sumtextstyle(),),
                              // Text(listitem[1],style: sumtextstyle(),),
                              //  Text(listitem[2],style: sumtextstyle(),),
                              // Text(listitem[3],style: sumtextstyle(),),
                              //Text(listitem[index],style: sumtextstyle(),),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff363636),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Text(Provider.of<ProviderDemo>(context).test),
                              Text("Subtotal", style: shortheadstyle()),
                              Text("CGST", style: shortheadstyle()),
                              Text("SGST", style: shortheadstyle()),
                              Text("Grandtotal", style: shortheadstyle()),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                width: 90,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor: const Color(0xFF88BFE4),
                                        textStyle: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                    child: Text("Save", style: sumtextstyle())),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("$unitprice", style: shortheadstyle()),
                              Text("30", style: shortheadstyle()),
                              Text("20", style: shortheadstyle()),
                              Text("$grandtotals", style: shortheadstyle()),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                width: 90,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor: const Color(0xFF3DC06F),
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                    child:
                                        Text("Print", style: sumtextstyle())),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Enter Mobile Number",
                                style: shortheadstyle(),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 30,
                                width: 120,
                                //color: Colors.yellow[600],
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white70),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: TextFormField(
                                    style: const TextStyle(color: Colors.black),
                                    cursorColor: Colors.black87,
                                    autocorrect: true,
                                    controller: mobilecontroller,
                                    decoration: InputDecoration(
                                      // hintText: hint,
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      hintStyle: labelStyle(),
                                      filled: true,
                                      fillColor: const Color(0xFFFAFAFA),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Color(0xFFe0f4f5), width: 2),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.yellow),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "images/whatsapp.png",
                                  height: 40,
                                  width: 50,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
