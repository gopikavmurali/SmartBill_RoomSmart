import 'package:flutter/material.dart';
import 'package:smart_bill/report_screens/data_wise_report.dart';
import 'package:smart_bill/report_screens/date_wise_combo_report.dart';
import 'package:smart_bill/report_screens/item_wise_cancel_report.dart';
import 'package:smart_bill/report_screens/item_wise_sales_report.dart';
import 'package:smart_bill/report_screens/item_wise_stock_report.dart';
import 'package:smart_bill/report_screens/month_wise_salary_report.dart';
import 'package:smart_bill/report_screens/previous_date_stock_report.dart';
import 'package:smart_bill/report_screens/userwise_sales_report.dart';
import '../components.dart';
import '../constants.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      appBar: AppBar(
       // leading: Icon(Icons.arrow_back),
        shadowColor:  const Color(0xff313131),
        elevation: 01,
        backgroundColor: const Color(0xff363636),
        title: Text("Report",style:MainHeadingStyle()),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>const DataReport()));
                    },
                      child: buildreportButton("Data Wise Sales Report")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>const UserWiseSalesReport()));
                      },
                      child: buildreportButton("User Wise Sales Report")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>const ItemWiseStockReport()));
                      },
                      child: buildreportButton("Item Wise Stock Report")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>const ItemWiseCancelReport()));
                      },
                      child: buildreportButton("Item Wise Cancel Report")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>const ItemWiseSalesReport()));
                      },
                      child: buildreportButton("Item Wise Sales Report")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>const DateWiseComboReport()));
                      },
                      child: buildreportButton("Date Wise Combo Report")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>const PreviousDateReport()));
                      },
                      child: buildreportButton("Previous Date Stock Report")),
                ],
              ),
              const SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>const MonthWiseSalaryReport()));
                      },
                      child: buildreportButton("Month Wise Salary Report")),
                ],
              ),


            ],
          )
        ],
      ),
    );

  }
}
