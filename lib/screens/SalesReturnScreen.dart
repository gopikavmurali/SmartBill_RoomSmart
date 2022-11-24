import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:smart_bill/screens/BillDetails_SalaryReturn.dart';
import '../constants.dart';
import '../models/bill_model.dart';

class SalesReturnScreen extends StatefulWidget {
  const SalesReturnScreen({Key? key}) : super(key: key);
  @override
  _SalesReturnScreenState createState() => _SalesReturnScreenState();
}

class _SalesReturnScreenState extends State<SalesReturnScreen> {

  static List<String> billnumber =['BILLNUM001','BILLNUM002','BILLNUM002','BILLNUM004','BILLNUM013',
  'BILLNUM021','BILLNUM051','BILLNUM056','BILLNUM018','BILLNUM099',];
  static List url = ['BIll 01',
    'Bill02','BILL03','BILL04','BILL04','BILL05','BILL06','BILL07','BILL08','BILL09','BILL10'];


  final List<BillDataModel> billData = List.generate(
      billnumber.length, (index)
      => BillDataModel(billnumber[index],
          '${url[index]}', billnumber[index]
      ));


  var searchController = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
  List<String> listitem =[];
  late String temp = "";
  int tempcount = 0;
  int price =100;
  int grandtotals = 0;
  double total=0;
  var totalpriceofitem = 0;
  var count =0;
  static List<String> billNumber=[
    "BILLNO1234","BILLNO123","BILLNO123","BILLNO123465",
    "BILLNO165","BILLNO65432","BILLNO123874","BILLNO76534","BILLNO00034",
    "BILLNO09834","BILLNO1234","BILLNO12","BILLNO123124","BILL543","BILLNO09874"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor:  const Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Sales Return",style:MainHeadingStyle()),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ) ],),
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom: 10),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Center(
                          child: AutoCompleteTextField(
                            clearOnSubmit: false,
                            controller: searchController,
                            suggestions: billnumber,
                            key: key,
                            style: buttonTextStyleblack(),
                            decoration: InputDecoration(
                                fillColor: Colors.yellow,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            itemFilter: (String item, String query)
                            {
                              return item.toLowerCase().startsWith(query.toLowerCase());
                            },
                            itemSorter: (String a, String b){
                              return a.compareTo(b);
                            },
                            itemSubmitted: (String item) {
                              searchController.text = item;
                              temp =searchController.text;
                              billNumber.add(item);
                            },
                            itemBuilder: (context,  item){
                              return ListTile(
                                title: Text("$item"),
                              );
                            },),
                        ),),
                    ),),
                  Padding(
                    padding: const EdgeInsets.only(left:10,right: 10.0,top: 10,bottom: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),),
                            backgroundColor: const  Color(0xFFFDDA0D),
                            textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        onPressed: (){
                          searchController.clear();
                        },
                        child: Text("Search",style: buttonTextStyleblack())),
                  ),
                ],
              ),
              SizedBox(
               height: MediaQuery.of(context).size.height*1.5,
                child: ListView.separated(
                  physics: const ScrollPhysics(),
                    itemCount: billnumber.length,
                    itemBuilder: (context,index){
                      int serailNo = index+1;
                      return Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 5),
                          child: ListTile(
                            title: Text(billData[index].billNum,style: sumtextstyle(),),
                            subtitle:Text(billData[index].imageUrl,style: shortheadstyle(),),
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$serailNo",style: shortheadstyle(),),),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder:
                                  (context)=>BillListOne(billDataModel: billData[index])));
                            },
                          ),
                        );
                      },
                    separatorBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Divider(
                        color: Colors.white,
                      ),);
                  },),
              )],
          ),),
      ));
  }
}
