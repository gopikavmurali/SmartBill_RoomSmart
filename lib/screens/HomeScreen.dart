import 'package:flutter/material.dart';
import 'package:smart_bill/screens/ReportScreen.dart';
import 'package:smart_bill/screens/LoginScreen.dart';
import 'package:smart_bill/screens/PurchaseScreen.dart';
import 'package:smart_bill/screens/SalaryScreen.dart';
import 'package:smart_bill/screens/SalesReturnScreen.dart';
import 'package:smart_bill/screens/SalesScreen.dart';
import '../constants.dart';
import 'ItemsPurchase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

     Widget _buildSales(){
     return   GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(
             builder: (context)=>SalesScreen(
               itemname: "",
               priceofitem: '',)));
       },
       child: Container(
         height: 45,
         width: 250,
         decoration: const BoxDecoration(
           color:  Color(0xFFFDDA0D),
           borderRadius: BorderRadius.all(
             Radius.circular(10),
           ),
         ),
         child:  Center(
           child: Text("Sales",style:buttonTextStyleblack(),),

         ),
       ),
     );
   }
     Widget _buildSalesReturn(){
     return  GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(
             builder: (context)=>const SalesReturnScreen()));
       },

       child: Container(
         height: 45,
         width: 250,
         decoration: BoxDecoration(
             color: const  Color(0xFFFDDA0D),
             borderRadius: const BorderRadius.all(
               Radius.circular(10),
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
           child:  Text("Sales & Return",style: buttonTextStyleblack(),),

         ),
       ),
     );
   }
     Widget _buildItemsCombo(){
     return   GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(
             builder: (context)=>const ItemPurchase()));
       },
       child: Container(
         height: 45,
         width: 250,
         decoration: BoxDecoration(
             color: const  Color(0xFFFDDA0D),
             borderRadius: const BorderRadius.all(
               Radius.circular(10),
             ),
             boxShadow: [
               BoxShadow(
                 color: Colors.black26.withOpacity(0.1),
                 spreadRadius: 1,
                 blurRadius: 3,
                 offset:const  Offset(0, 2),
               )
             ]
         ),
         child:  Center(
           child:Text("Items & Combo Offers",style: buttonTextStyleblack(),),

         ),
       ),
     );
   }
     Widget _buildPurchase(){
     return   GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(
             builder: (context)=>const PurchaseScreen()));
       },

       child: Container(
         height: 45,
         width: 250,
         decoration: BoxDecoration(
             color: const  Color(0xFFFDDA0D),
             borderRadius: const BorderRadius.all(
               Radius.circular(10),
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
         child:  Center(
           child:Text("Purchase", style:buttonTextStyleblack(),),

         ),
       ),
     );
    }
     Widget _buildSalary(){
     return   GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(
             builder: (context)=>const SalaryScreen()));
       },
       child: Container(
         height: 45,
         width: 250,
         decoration: BoxDecoration(
             color:  const Color(0xFFFDDA0D),
             borderRadius: const BorderRadius.all(
               Radius.circular(10),
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
           child:Text("Salary",style: buttonTextStyleblack(),),

         ),
       ),
     );
     }
     Widget _buildReport(){
     return  GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(
             builder: (context)=>const ReportScreen()));
       },
       child: Container(
         height: 45,
         width: 250,
         decoration: const BoxDecoration(
           color: Color(0xFFFDDA0D),
           borderRadius: BorderRadius.all(
             Radius.circular(10),
           ),

         ),
         child:  Center(
           child: Text("Report",
             style: buttonTextStyleblack(),),

         ),

       ),
     );
     }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black38,
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>const LoginScreen()));},
                          child: Image.asset("images/icon.png",
                            height: 20,
                          width: 20,),),
                       const  SizedBox(width: 20,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>const LoginScreen()));},
                            child:const  Text("Logout",
                              style: TextStyle(color: Colors.white),)),
                       const  SizedBox(width: 10,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/smartbill.png",
                          height: 150,
                          width: 150,)
                      ],
                    ),
                    const SizedBox(height: 50,),
                   _buildSales(),
                   const  SizedBox(height: 28,),
                   _buildSalesReturn(),
                    const SizedBox(height: 28,),
                   _buildItemsCombo(),
                   const  SizedBox(height: 28,),
                   _buildPurchase(),
                   const  SizedBox(height: 28,),
                   _buildSalary(),
                    const SizedBox(height: 30,),
                   _buildReport(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/room.png",
                          height: 25,
                          width: 100,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.white10,
        child: Image.asset("images/msg.png",
          height:25,
          fit: BoxFit.fitWidth,),
        onPressed: () {},
      ),
    );

  }
}














































// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:fluttericon/font_awesome_icons.dart';
// import 'package:fluttericon/font_awesome_icons.dart';
//
// class bill_home extends StatefulWidget {
//   const bill_home({Key? key}) : super(key: key);
//
//   @override
//   _bill_homeState createState() => _bill_homeState();
// }
//
// class _bill_homeState extends State<bill_home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.white,
//       //   elevation: 0,
//       //   actions: [
//       //     ImageIcon(
//       //       AssetImage("images/logout.png"),
//       //       color: Colors.black,
//       //     ),
//       //    //Icon(Icons.logout_rounded,color: Colors.black,),
//       //     SizedBox(width: 20,)
//       //   ],
//       // ),
//
//       body: ListView(
//         physics: NeverScrollableScrollPhysics(),
//         children: [
//           Stack(
//             //alignment: Alignment.bottomCenter,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/background.png"),fit: BoxFit.cover)),
//
//                 child: Column(
//                   children: [
//                     SizedBox(height: 60,),
//                     // Container(
//                     //  // height: 50,
//                     //   width: 200,
//                     //   color: Colors.transparent,
//                     //   //child: Image.asset("images/logo.png",fit: BoxFit.cover,),
//                     // ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,  //Color(0xFF64C9CF), Color(0xFF468c90)
//                       children: [
//                         Text("Smart ",style: GoogleFonts.encodeSans(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54),),
//                         Text("Bill",style: GoogleFonts.encodeSans(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFFEF6C00)),),
//                         Icon(Icons.receipt_long,color: Color(0xFF64C9CF),size: 40,)
//
//                       ],
//                     ),
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Material(
//                           elevation:5,
//                           child: Container(
//                             height: 40,
//                             width: MediaQuery.of(context).size.width/1.5,
//
//                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(70), color: Colors.white54,),
//
//                           ),
//                         ),
//                       ],
//                     )
//
//                   ],
//                 ),
//               ),
//
//
//
//
//
//
//             ],
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Color(0xFFEF6C00),
//         child: Icon(Icons.message,),
//         onPressed: () {
//
//         },),
//       // body: Container(
//       //   height: MediaQuery.of(context).size.height,
//       //   width: MediaQuery.of(context).size.width,
//       //  color: Color(0xFFC89FA6),
//       //   child: Stack(
//       //
//       //     children: [
//       //       Container(
//       //         height: MediaQuery.of(context).size.height/1.3,
//       //         width: MediaQuery.of(context).size.width,
//       //
//       //         decoration: BoxDecoration(
//       //           borderRadius: BorderRadius.only(
//       //               topLeft: Radius.circular(30),
//       //               topRight: Radius.circular(30)),
//       //           color: Colors.white,),
//       //         child: Container(
//       //           height: 100,
//       //           width: 200,
//       //           color: Colors.pink,
//       //             ),
//       //
//       //       ),
//       //
//       //       Positioned(
//       //         top: 300,
//       //         child: Container(
//       //           height: MediaQuery.of(context).size.height/1.3,
//       //           width: MediaQuery.of(context).size.width,
//       //
//       //           decoration: BoxDecoration(
//       //               borderRadius: BorderRadius.only(
//       //               topLeft: Radius.circular(30),
//       //               topRight: Radius.circular(30)),
//       //             color: Color(0xFFC89FA6),),
//       //         ),
//       //       ),
//       //
//       //     ],
//       //
//       //   ),
//       // )
//     );
//
//   }
// }
