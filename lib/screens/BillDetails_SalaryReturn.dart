import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/bill_model.dart';


class BillListOne extends StatefulWidget {
  final BillDataModel billDataModel;
  const BillListOne({Key? key,
    required this.billDataModel}) : super(key: key);
  static List<String> product_names=[
    "Apple","Orange","Mobile","Laptop",
    "Bottles","Remote","Water Bottle","Soap","Sanitizer",
    "Facial Tissues","Flower Pot","Bat","Ball","Clock","Hair oil"];

  @override
  State<BillListOne> createState() => _BillListOneState();
}

class _BillListOneState extends State<BillListOne> {

  List<String> listitem =[];
  void deleteitem(int index){
    listitem.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:const  Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const  Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Bill Details",style:MainHeadingStyle()),
        actions:const  [
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),

                      child:// Text(Provider.of<ProviderDemo>(context).test),
                      Text("Date  :",style: shortheadstyle(),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),

                      child:// Text(Provider.of<ProviderDemo>(context).test),
                      Text("10-05-2022",style: shortheadstyle(),),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Bill Number : ",style: shortheadstyle(),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(widget.billDataModel.billNum,style:  sumtextstyle(),),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Divider(
                    color: Colors.white70,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,right: 30),
                      child: Text("Item",style: shortheadstyle(),),
                    ),
                    //SizedBox(width: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left:18),
                      child: Text("Qty",style: shortheadstyle(),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Uprice",style: shortheadstyle(),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Total",style: shortheadstyle(),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0,right: 5),
                      child: Text("Delete",style: shortheadstyle(),),
                    ),
                  ],
                ),
               const  Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Divider(
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: BillListOne.product_names.length,//item_name.length,
                    itemBuilder: (BuildContext context, int index) {
                      return
                        Dismissible(
                          key: UniqueKey(),
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction){
                            setState(() {
                              deleteitem(index);
                            });

                          },
                          background: Container(
                            padding:const  EdgeInsets.only(left: 28.0),
                            alignment: AlignmentDirectional.centerStart,
                            color: Colors.red,
                          // child:const  Text("Swipe to delete",style: TextStyle(color: Colors.white38),),
                            child: const Icon(Icons.delete, color: Colors.white,),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                width: 100,
                                height:25,
                                decoration: BoxDecoration(
                                  //  border: Border.all(color: Colors.white60),
                                  borderRadius: BorderRadius.circular(5),

                                ),
                                child: Center(
                                  child: Text(BillListOne.product_names[index],//Text(item_name[index],
                                      style: const TextStyle(color: Colors.white70)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 30,
                                  height:25,
                                  decoration: BoxDecoration(
                                    //border: Border.all(color: Colors.white70),
                                      borderRadius: BorderRadius.circular(5),
                                      color:  const Color(0xFFFDDA0D),),
                                  child: const Center(
                                    child: Text("2",//Text(item_name[index],
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: SizedBox(
                                    height:25,
                                    width:30,
                                    child: Text("100",//Text(item_name[index],
                                        style: shortheadstyle()),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height:25,
                                  width:40,
                                  child: Text("200",style: shortheadstyle(),),
                                  //child: Text(total[index],  style: shorttextStyle())
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10),
                                child: GestureDetector(
                                  onTap: (){
                                        BillListOne.product_names.remove;



                                  },
                                  child: Container(
                                    width: 20,
                                    // height:18,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.transparent)),
                                    child: const Center(
                                      child:
                                      Icon(Icons.swipe_left_rounded,color: Colors.white70,),// Text(index.toString()),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                    },
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

