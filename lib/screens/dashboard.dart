import 'package:flutter/material.dart';
import 'package:sales_dashboard/widgets/day_data_model.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.7,
      child: Container(width: 120, height: 120, child: BarChartSample1()),
    );
  }
}
