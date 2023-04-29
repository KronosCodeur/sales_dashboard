import 'package:flutter/material.dart';
import 'package:sales_dashboard/widgets/month_sales_stats.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      height: size.height * 0.7,
      child: Column(
        children: [
          SizedBox(width: 300, height: 300, child: MonthSalesStatsWidget()),
        ],
      ),
    );
  }
}
